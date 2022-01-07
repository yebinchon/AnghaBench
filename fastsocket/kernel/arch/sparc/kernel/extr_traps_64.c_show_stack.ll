; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i64 }
%struct.sparc_stackf = type { i64, i64 }
%struct.pt_regs = type { i32, i64, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Call Trace:\0A\00", align 1
@TSTATE_PRIV = common dso_local global i32 0, align 4
@UREG_I6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c" [%016lx] %pS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.thread_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sparc_stackf*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = ptrtoint i64* %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %3, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %20)
  store %struct.thread_info* %21, %struct.thread_info** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %27 = icmp eq %struct.task_struct* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i64 asm "mov %fp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %29, i64* %7, align 8
  br label %34

30:                                               ; preds = %24
  %31 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %30, %28
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %37 = call %struct.thread_info* (...) @current_thread_info()
  %38 = icmp eq %struct.thread_info* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (...) @flushw_all()
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @STACK_BIAS, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %5, align 8
  %45 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %46 = ptrtoint %struct.thread_info* %45 to i64
  store i64 %46, i64* %6, align 8
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %98, %41
  %49 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @kstack_valid(%struct.thread_info* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %102

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = inttoptr i64 %55 to %struct.sparc_stackf*
  store %struct.sparc_stackf* %56, %struct.sparc_stackf** %10, align 8
  %57 = load %struct.sparc_stackf*, %struct.sparc_stackf** %10, align 8
  %58 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %57, i64 1
  %59 = bitcast %struct.sparc_stackf* %58 to %struct.pt_regs*
  store %struct.pt_regs* %59, %struct.pt_regs** %11, align 8
  %60 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %62 = call i64 @kstack_is_trap_frame(%struct.thread_info* %60, %struct.pt_regs* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %54
  %65 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TSTATE_PRIV, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %102

72:                                               ; preds = %64
  %73 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %12, align 8
  %76 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @UREG_I6, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @STACK_BIAS, align 8
  %83 = add i64 %81, %82
  store i64 %83, i64* %5, align 8
  br label %93

84:                                               ; preds = %54
  %85 = load %struct.sparc_stackf*, %struct.sparc_stackf** %10, align 8
  %86 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %12, align 8
  %88 = load %struct.sparc_stackf*, %struct.sparc_stackf** %10, align 8
  %89 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @STACK_BIAS, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %84, %72
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %94, i8* %96)
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = icmp slt i32 %100, 16
  br i1 %101, label %48, label %102

102:                                              ; preds = %98, %71, %53
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @flushw_all(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kstack_valid(%struct.thread_info*, i64) #1

declare dso_local i64 @kstack_is_trap_frame(%struct.thread_info*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1017}
