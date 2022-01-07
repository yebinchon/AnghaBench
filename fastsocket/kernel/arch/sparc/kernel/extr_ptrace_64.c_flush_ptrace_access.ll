; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ptrace_64.c_flush_ptrace_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ptrace_64.c_flush_ptrace_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@spitfire = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_ptrace_access(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_2__, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = icmp ugt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* @tlb_type, align 8
  %23 = load i64, i64* @hypervisor, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %62

26:                                               ; preds = %6
  %27 = call i32 (...) @preempt_disable()
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i64, i64* @tlb_type, align 8
  %32 = load i64, i64* @spitfire, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %14, align 8
  %40 = call { i64, i64 } (...) @local_cpu_data()
  %41 = bitcast %struct.TYPE_2__* %16 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = extractvalue { i64, i64 } %40, 0
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = extractvalue { i64, i64 } %40, 1
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %55, %34
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @flushi(i64 %53)
  br label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %13, align 8
  br label %48

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %30, %26
  %61 = call i32 (...) @preempt_enable()
  br label %62

62:                                               ; preds = %60, %25
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local { i64, i64 } @local_cpu_data(...) #1

declare dso_local i32 @flushi(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
