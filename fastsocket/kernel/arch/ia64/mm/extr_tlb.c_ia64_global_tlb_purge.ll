; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_tlb.c_ia64_global_tlb_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_tlb.c_ia64_global_tlb_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@toolatetochangeptcgsem = common dso_local global i32 0, align 4
@need_ptcg_sem = common dso_local global i64 0, align 8
@ptcg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_global_tlb_purge(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %9, align 8
  store i32 1, i32* @toolatetochangeptcgsem, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %15 = icmp ne %struct.mm_struct* %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = icmp ne %struct.mm_struct* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = icmp ne %struct.mm_struct* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = call i32 @activate_context(%struct.mm_struct* %23)
  br label %27

25:                                               ; preds = %19, %16
  %26 = call i32 (...) @flush_tlb_all()
  br label %60

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i64, i64* @need_ptcg_sem, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @down_spin(i32* @ptcg_sem)
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = shl i64 %36, 2
  %38 = call i32 @ia64_ptcga(i64 %35, i64 %37)
  %39 = call i32 (...) @ia64_srlz_i()
  %40 = load i64, i64* %8, align 8
  %41 = shl i64 1, %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %34
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %34, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @need_ptcg_sem, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @up_spin(i32* @ptcg_sem)
  br label %53

53:                                               ; preds = %51, %48
  %54 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %55 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %56 = icmp ne %struct.mm_struct* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %59 = call i32 @activate_context(%struct.mm_struct* %58)
  br label %60

60:                                               ; preds = %25, %57, %53
  ret void
}

declare dso_local i32 @activate_context(%struct.mm_struct*) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @down_spin(i32*) #1

declare dso_local i32 @ia64_ptcga(i64, i64) #1

declare dso_local i32 @ia64_srlz_i(...) #1

declare dso_local i32 @up_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
