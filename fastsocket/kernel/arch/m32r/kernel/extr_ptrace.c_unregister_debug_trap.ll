; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_unregister_debug_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_unregister_debug_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_trap }
%struct.debug_trap = type { i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64*)* @unregister_debug_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_debug_trap(%struct.task_struct* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.debug_trap*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.debug_trap* %12, %struct.debug_trap** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %16 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %21 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %37 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %93

41:                                               ; preds = %34
  %42 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %43 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %57, %41
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %53 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %50
  %58 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %59 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %67 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %65, i64* %71, align 8
  %72 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %73 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %81 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %50

88:                                               ; preds = %50
  %89 = load %struct.debug_trap*, %struct.debug_trap** %8, align 8
  %90 = getelementptr inbounds %struct.debug_trap, %struct.debug_trap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %88, %40
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
