; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_flush_dcache_page_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_flush_dcache_page_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@spitfire = common dso_local global i64 0, align 8
@xcall_flush_dcache_page_spitfire = common dso_local global i32 0, align 4
@cheetah = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@cpu_online_map = common dso_local global i32 0, align 4
@dcpage_flushes = common dso_local global i32 0, align 4
@dcpage_flushes_xcall = common dso_local global i32 0, align 4
@xcall_flush_dcache_page_cheetah = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page_all(%struct.mm_struct* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load i64, i64* @tlb_type, align 8
  %9 = load i64, i64* @hypervisor, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = call i32 (...) @get_cpu()
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i8* @page_address(%struct.page* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i64, i64* @tlb_type, align 8
  %17 = load i64, i64* @spitfire, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  store i32 ptrtoint (i32* @xcall_flush_dcache_page_spitfire to i32), i32* %7, align 4
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32* @page_mapping(%struct.page* %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, undef
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19
  br label %37

27:                                               ; preds = %12
  %28 = load i64, i64* @tlb_type, align 8
  %29 = load i64, i64* @cheetah, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @tlb_type, align 8
  %33 = load i64, i64* @cheetah_plus, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %31
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @__pa(i8* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = call i32 @xcall_deliver(i32 %41, i32 %43, i32 %45, i32* @cpu_online_map)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = call i32 @__local_flush_dcache_page(%struct.page* %48)
  %50 = call i32 (...) @put_cpu()
  br label %51

51:                                               ; preds = %47, %11
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32* @page_mapping(%struct.page*) #1

declare dso_local i32 @xcall_deliver(i32, i32, i32, i32*) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @__local_flush_dcache_page(%struct.page*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
