; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_stacktrace.c___save_stack_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_stacktrace.c___save_stack_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i64 }
%struct.stack_trace = type { i64, i64, i64, i64* }
%struct.sparc_stackf = type { i64, i64 }
%struct.pt_regs = type { i32, i64, i64* }

@STACK_BIAS = common dso_local global i64 0, align 8
@TSTATE_PRIV = common dso_local global i32 0, align 4
@UREG_I6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_info*, %struct.stack_trace*, i32)* @__save_stack_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__save_stack_trace(%struct.thread_info* %0, %struct.stack_trace* %1, i32 %2) #0 {
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.stack_trace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sparc_stackf*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %13 = call %struct.thread_info* (...) @current_thread_info()
  %14 = icmp eq %struct.thread_info* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 (...) @stack_trace_flush()
  %17 = call i64 asm sideeffect "mov %fp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %17, i64* %7, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %20 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @STACK_BIAS, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %100, %22
  %27 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @kstack_valid(%struct.thread_info* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %108

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = inttoptr i64 %33 to %struct.sparc_stackf*
  store %struct.sparc_stackf* %34, %struct.sparc_stackf** %9, align 8
  %35 = load %struct.sparc_stackf*, %struct.sparc_stackf** %9, align 8
  %36 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %35, i64 1
  %37 = bitcast %struct.sparc_stackf* %36 to %struct.pt_regs*
  store %struct.pt_regs* %37, %struct.pt_regs** %10, align 8
  %38 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %40 = call i64 @kstack_is_trap_frame(%struct.thread_info* %38, %struct.pt_regs* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %32
  %43 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TSTATE_PRIV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %108

50:                                               ; preds = %42
  %51 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @UREG_I6, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @STACK_BIAS, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %8, align 8
  br label %71

62:                                               ; preds = %32
  %63 = load %struct.sparc_stackf*, %struct.sparc_stackf** %9, align 8
  %64 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  %66 = load %struct.sparc_stackf*, %struct.sparc_stackf** %9, align 8
  %67 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STACK_BIAS, align 8
  %70 = add i64 %68, %69
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %62, %50
  %72 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %73 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %78 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  br label %99

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @in_sched_functions(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84, %81
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %91 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %94 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 %89, i64* %97, align 8
  br label %98

98:                                               ; preds = %88, %84
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %102 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %105 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %26, label %108

108:                                              ; preds = %100, %49, %31
  ret void
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @stack_trace_flush(...) #1

declare dso_local i32 @kstack_valid(%struct.thread_info*, i64) #1

declare dso_local i64 @kstack_is_trap_frame(%struct.thread_info*, %struct.pt_regs*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 997}
