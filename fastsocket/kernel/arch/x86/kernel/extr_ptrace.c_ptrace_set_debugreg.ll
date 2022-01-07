; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ptrace.c_ptrace_set_debugreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ptrace.c_ptrace_set_debugreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@DR_CONTROL_RESERVED = common dso_local global i64 0, align 8
@TIF_DEBUG = common dso_local global i32 0, align 4
@DR7_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i64)* @ptrace_set_debugreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_set_debugreg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 5
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %114

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = call i64 @debugreg_addr_limit(%struct.task_struct* %27)
  %29 = icmp uge i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %114

36:                                               ; preds = %25, %22
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %113 [
    i32 0, label %38
    i32 1, label %43
    i32 2, label %48
    i32 3, label %53
    i32 6, label %58
    i32 7, label %70
  ]

38:                                               ; preds = %36
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %113

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  br label %113

48:                                               ; preds = %36
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i64 %49, i64* %52, align 8
  br label %113

53:                                               ; preds = %36
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i64 %54, i64* %57, align 8
  br label %113

58:                                               ; preds = %36
  %59 = load i64, i64* %7, align 8
  %60 = and i64 %59, -4294967296
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %114

65:                                               ; preds = %58
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i64 %66, i64* %69, align 8
  br label %113

70:                                               ; preds = %36
  %71 = load i64, i64* @DR_CONTROL_RESERVED, align 8
  %72 = xor i64 %71, -1
  %73 = load i64, i64* %7, align 8
  %74 = and i64 %73, %72
  store i64 %74, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %94, %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 4, %80
  %82 = add nsw i32 16, %81
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %79, %83
  %85 = and i64 %84, 15
  %86 = trunc i64 %85 to i32
  %87 = ashr i32 21844, %86
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %114

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %100 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %106 = load i32, i32* @TIF_DEBUG, align 4
  %107 = call i32 @set_tsk_thread_flag(%struct.task_struct* %105, i32 %106)
  br label %112

108:                                              ; preds = %97
  %109 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %110 = load i32, i32* @TIF_DEBUG, align 4
  %111 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %36, %112, %65, %53, %48, %43, %38
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %90, %62, %33, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @debugreg_addr_limit(%struct.task_struct*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
