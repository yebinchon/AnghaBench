; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_selection.c_paste_selection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_selection.c_paste_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_4__*, i32, i32, %struct.vc_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.tty_struct*, i64, i32*, i32)* }
%struct.vc_data = type { i32 }
%struct.tty_ldisc = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@sel_buffer = common dso_local global i64 0, align 8
@sel_buffer_lth = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TTY_THROTTLED = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paste_selection(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 3
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  store %struct.vc_data* %9, %struct.vc_data** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, i32 %11)
  %13 = call i32 (...) @acquire_console_sem()
  %14 = call i32 (...) @poke_blanked_console()
  %15 = call i32 (...) @release_console_sem()
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %16)
  store %struct.tty_ldisc* %17, %struct.tty_ldisc** %6, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = call i32 @add_wait_queue(i32* %19, i32* @wait)
  br label %21

21:                                               ; preds = %40, %38, %1
  %22 = load i64, i64* @sel_buffer, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @sel_buffer_lth, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %66

30:                                               ; preds = %28
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @set_current_state(i32 %31)
  %33 = load i32, i32* @TTY_THROTTLED, align 4
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 2
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 (...) @schedule()
  br label %21

40:                                               ; preds = %30
  %41 = load i32, i32* @sel_buffer_lth, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @min(i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.tty_struct*, i64, i32*, i32)*, i32 (%struct.tty_struct*, i64, i32*, i32)** %54, align 8
  %56 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %57 = load i64, i64* @sel_buffer, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* %5, align 4
  %62 = call i32 %55(%struct.tty_struct* %56, i64 %60, i32* null, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %21

66:                                               ; preds = %28
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 0
  %69 = call i32 @remove_wait_queue(i32* %68, i32* @wait)
  %70 = load i32, i32* @TASK_RUNNING, align 4
  %71 = call i32 @__set_current_state(i32 %70)
  %72 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %73 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %72)
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @poke_blanked_console(...) #1

declare dso_local i32 @release_console_sem(...) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
