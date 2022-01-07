; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_do_notify_resume_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_do_notify_resume_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sigscratch = type { i32 }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4
@TIF_RESTORE_RSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_notify_resume_user(i32* %0, %struct.sigscratch* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sigscratch*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sigscratch* %1, %struct.sigscratch** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %8 = load %struct.sigscratch*, %struct.sigscratch** %5, align 8
  %9 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %8, i32 0, i32 0
  %10 = call i64 @fsys_mode(%struct.TYPE_7__* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.sigscratch*, %struct.sigscratch** %5, align 8
  %14 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %13, i32 0, i32 0
  %15 = call %struct.TYPE_6__* @ia64_psr(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.sigscratch*, %struct.sigscratch** %5, align 8
  %21 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %20, i32 0, i32 0
  %22 = call %struct.TYPE_6__* @ia64_psr(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %12
  br label %61

25:                                               ; preds = %3
  %26 = load i32, i32* @TIF_SIGPENDING, align 4
  %27 = call i64 @test_thread_flag(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = call i32 (...) @local_irq_enable()
  %31 = load %struct.sigscratch*, %struct.sigscratch** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ia64_do_signal(%struct.sigscratch* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* @TIF_NOTIFY_RESUME, align 4
  %36 = call i64 @test_thread_flag(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32, i32* @TIF_NOTIFY_RESUME, align 4
  %40 = call i32 @clear_thread_flag(i32 %39)
  %41 = load %struct.sigscratch*, %struct.sigscratch** %5, align 8
  %42 = getelementptr inbounds %struct.sigscratch, %struct.sigscratch* %41, i32 0, i32 0
  %43 = call i32 @tracehook_notify_resume(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 (...) @key_replace_session_keyring()
  br label %50

50:                                               ; preds = %48, %38
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* @TIF_RESTORE_RSE, align 4
  %53 = call i64 @test_thread_flag(i32 %52)
  %54 = call i64 @unlikely(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = call i32 (...) @local_irq_enable()
  %58 = call i32 (...) @ia64_sync_krbs()
  br label %59

59:                                               ; preds = %56, %51
  %60 = call i32 (...) @local_irq_disable()
  br label %61

61:                                               ; preds = %59, %24
  ret void
}

declare dso_local i64 @fsys_mode(%struct.TYPE_7__*, i32*) #1

declare dso_local %struct.TYPE_6__* @ia64_psr(i32*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ia64_do_signal(%struct.sigscratch*, i64) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @tracehook_notify_resume(i32*) #1

declare dso_local i32 @key_replace_session_keyring(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @ia64_sync_krbs(...) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
