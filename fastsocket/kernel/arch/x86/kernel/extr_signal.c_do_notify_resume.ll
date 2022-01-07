; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_signal.c_do_notify_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_signal.c_do_notify_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }

@_TIF_SIGPENDING = common dso_local global i32 0, align 4
@_TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4
@TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_TIF_USER_RETURN_NOTIFY = common dso_local global i32 0, align 4
@TIF_IRET = common dso_local global i32 0, align 4
@_TIF_MCE_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_notify_resume(%struct.pt_regs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @_TIF_SIGPENDING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = call i32 @do_signal(%struct.pt_regs* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @_TIF_NOTIFY_RESUME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32, i32* @TIF_NOTIFY_RESUME, align 4
  %21 = call i32 @clear_thread_flag(i32 %20)
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = call i32 @tracehook_notify_resume(%struct.pt_regs* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @key_replace_session_keyring()
  br label %30

30:                                               ; preds = %28, %19
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @_TIF_USER_RETURN_NOTIFY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @fire_user_return_notifiers()
  br label %38

38:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @do_signal(%struct.pt_regs*) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @tracehook_notify_resume(%struct.pt_regs*) #1

declare dso_local i32 @key_replace_session_keyring(...) #1

declare dso_local i32 @fire_user_return_notifiers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
