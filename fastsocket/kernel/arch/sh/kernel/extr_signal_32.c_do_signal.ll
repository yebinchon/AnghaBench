; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_signal_32.c_do_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_signal_32.c_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i64, i32*, i64 }
%struct.k_sigaction = type { i32 }

@TIF_RESTORE_SIGMASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@__NR_restart_syscall = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @do_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_signal(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.k_sigaction, align 4
  %8 = alloca i32*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = call i32 @user_mode(%struct.pt_regs* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %144

13:                                               ; preds = %2
  %14 = call i64 (...) @try_to_freeze()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %58

17:                                               ; preds = %13
  %18 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %19 = call i64 @test_thread_flag(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* %23, i32** %8, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* %26, i32** %8, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %29 = call i32 @get_signal_to_deliver(i32* %5, %struct.k_sigaction* %7, %struct.pt_regs* %28, i32* null)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %35 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %7, i32 0, i32 0
  %36 = call i32 @handle_syscall_restart(i32 %33, %struct.pt_regs* %34, i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @handle_signal(i32 %37, %struct.k_sigaction* %7, i32* %5, i32* %38, %struct.pt_regs* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %32
  %44 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %45 = call i64 @test_thread_flag(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %49 = call i32 @clear_thread_flag(i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %53 = load i32, i32* @TIF_SINGLESTEP, align 4
  %54 = call i64 @test_thread_flag(i32 %53)
  %55 = call i32 @tracehook_signal_handler(i32 %51, i32* %5, %struct.k_sigaction* %7, %struct.pt_regs* %52, i64 %54)
  br label %56

56:                                               ; preds = %50, %32
  br label %144

57:                                               ; preds = %27
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %133

63:                                               ; preds = %58
  %64 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ERESTARTNOHAND, align 4
  %70 = sub i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %63
  %73 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %72
  %82 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ERESTARTNOINTR, align 4
  %88 = sub i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %81, %72, %63
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 4
  %100 = call i32 @ctrl_inw(i64 %99)
  %101 = call i64 @instruction_size(i32 %100)
  %102 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %132

106:                                              ; preds = %81
  %107 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %113 = sub i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 4
  %120 = call i32 @ctrl_inw(i64 %119)
  %121 = call i64 @instruction_size(i32 %120)
  %122 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %123 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i32, i32* @__NR_restart_syscall, align 4
  %127 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %128 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %115, %106
  br label %132

132:                                              ; preds = %131, %90
  br label %133

133:                                              ; preds = %132, %58
  %134 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %135 = call i64 @test_thread_flag(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %139 = call i32 @clear_thread_flag(i32 %138)
  %140 = load i32, i32* @SIG_SETMASK, align 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = call i32 @sigprocmask(i32 %140, i32* %142, i32* null)
  br label %144

144:                                              ; preds = %12, %56, %137, %133
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @get_signal_to_deliver(i32*, %struct.k_sigaction*, %struct.pt_regs*, i32*) #1

declare dso_local i32 @handle_syscall_restart(i32, %struct.pt_regs*, i32*) #1

declare dso_local i64 @handle_signal(i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*, i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @tracehook_signal_handler(i32, i32*, %struct.k_sigaction*, %struct.pt_regs*, i64) #1

declare dso_local i64 @instruction_size(i32) #1

declare dso_local i32 @ctrl_inw(i64) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
