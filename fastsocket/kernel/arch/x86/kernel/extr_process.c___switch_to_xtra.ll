; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c___switch_to_xtra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c___switch_to_xtra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tss_struct = type { i32 }

@TIF_DEBUG = common dso_local global i32 0, align 4
@TIF_BLOCKSTEP = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTF = common dso_local global i64 0, align 8
@TIF_NOTSC = common dso_local global i32 0, align 4
@TIF_IO_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__switch_to_xtra(%struct.task_struct* %0, %struct.task_struct* %1, %struct.tss_struct* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.tss_struct*, align 8
  %7 = alloca %struct.thread_struct*, align 8
  %8 = alloca %struct.thread_struct*, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.tss_struct* %2, %struct.tss_struct** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  store %struct.thread_struct* %11, %struct.thread_struct** %7, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  store %struct.thread_struct* %13, %struct.thread_struct** %8, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = load i32, i32* @TIF_DEBUG, align 4
  %16 = call i32 @test_tsk_thread_flag(%struct.task_struct* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %20 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_debugreg(i32 %21, i32 0)
  %23 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %24 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_debugreg(i32 %25, i32 1)
  %27 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %28 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_debugreg(i32 %29, i32 2)
  %31 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %32 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_debugreg(i32 %33, i32 3)
  %35 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %36 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_debugreg(i32 %37, i32 6)
  %39 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %40 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_debugreg(i32 %41, i32 7)
  br label %43

43:                                               ; preds = %18, %3
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %46 = call i32 @test_tsk_thread_flag(%struct.task_struct* %44, i32 %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %48 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %49 = call i32 @test_tsk_thread_flag(%struct.task_struct* %47, i32 %48)
  %50 = xor i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %43
  %53 = call i64 (...) @get_debugctlmsr()
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %9, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %60 = call i32 @test_tsk_thread_flag(%struct.task_struct* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %64 = load i64, i64* %9, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @update_debugctlmsr(i64 %67)
  br label %69

69:                                               ; preds = %66, %43
  %70 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %71 = load i32, i32* @TIF_NOTSC, align 4
  %72 = call i32 @test_tsk_thread_flag(%struct.task_struct* %70, i32 %71)
  %73 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %74 = load i32, i32* @TIF_NOTSC, align 4
  %75 = call i32 @test_tsk_thread_flag(%struct.task_struct* %73, i32 %74)
  %76 = xor i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %80 = load i32, i32* @TIF_NOTSC, align 4
  %81 = call i32 @test_tsk_thread_flag(%struct.task_struct* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (...) @hard_disable_TSC()
  br label %87

85:                                               ; preds = %78
  %86 = call i32 (...) @hard_enable_TSC()
  br label %87

87:                                               ; preds = %85, %83
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = load i32, i32* @TIF_IO_BITMAP, align 4
  %91 = call i32 @test_tsk_thread_flag(%struct.task_struct* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.tss_struct*, %struct.tss_struct** %6, align 8
  %95 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %98 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %101 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.thread_struct*, %struct.thread_struct** %8, align 8
  %104 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @max(i32 %102, i32 %105)
  %107 = call i32 @memcpy(i32 %96, i32 %99, i32 %106)
  br label %122

108:                                              ; preds = %88
  %109 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %110 = load i32, i32* @TIF_IO_BITMAP, align 4
  %111 = call i32 @test_tsk_thread_flag(%struct.task_struct* %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.tss_struct*, %struct.tss_struct** %6, align 8
  %115 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %118 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memset(i32 %116, i32 255, i32 %119)
  br label %121

121:                                              ; preds = %113, %108
  br label %122

122:                                              ; preds = %121, %93
  %123 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %124 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %125 = call i32 @propagate_user_return_notify(%struct.task_struct* %123, %struct.task_struct* %124)
  ret void
}

declare dso_local i32 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @set_debugreg(i32, i32) #1

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

declare dso_local i32 @hard_disable_TSC(...) #1

declare dso_local i32 @hard_enable_TSC(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @propagate_user_return_notify(%struct.task_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
