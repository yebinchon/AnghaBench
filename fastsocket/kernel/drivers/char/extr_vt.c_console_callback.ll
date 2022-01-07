; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_console_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_console_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.vc_data*, i64)* }
%struct.work_struct = type { i32 }

@want_console = common dso_local global i64 0, align 8
@fg_console = common dso_local global i64 0, align 8
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@do_poke_blanked_console = common dso_local global i64 0, align 8
@scrollback_delta = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@blank_timer_expired = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @console_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @console_callback(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.vc_data*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = call i32 (...) @acquire_console_sem()
  %5 = load i64, i64* @want_console, align 8
  %6 = icmp uge i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i64, i64* @want_console, align 8
  %9 = load i64, i64* @fg_console, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i64, i64* @want_console, align 8
  %13 = call i64 @vc_cons_allocated(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %17 = load i64, i64* @fg_console, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  %21 = call i32 @hide_cursor(%struct.vc_data* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %23 = load i64, i64* @want_console, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.vc_data*, %struct.vc_data** %25, align 8
  %27 = call i32 @change_console(%struct.vc_data* %26)
  br label %28

28:                                               ; preds = %15, %11, %7
  store i64 -1, i64* @want_console, align 8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i64, i64* @do_poke_blanked_console, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  store i64 0, i64* @do_poke_blanked_console, align 8
  %33 = call i32 (...) @poke_blanked_console()
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* @scrollback_delta, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %39 = load i64, i64* @fg_console, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.vc_data*, %struct.vc_data** %41, align 8
  store %struct.vc_data* %42, %struct.vc_data** %3, align 8
  %43 = call i32 (...) @clear_selection()
  %44 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KD_TEXT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.vc_data*, i64)*, i32 (%struct.vc_data*, i64)** %53, align 8
  %55 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %56 = load i64, i64* @scrollback_delta, align 8
  %57 = call i32 %54(%struct.vc_data* %55, i64 %56)
  br label %58

58:                                               ; preds = %49, %37
  store i64 0, i64* @scrollback_delta, align 8
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i64, i64* @blank_timer_expired, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @do_blank_screen(i32 0)
  store i64 0, i64* @blank_timer_expired, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %66 = load i64, i64* @fg_console, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.vc_data*, %struct.vc_data** %68, align 8
  %70 = call i32 @notify_update(%struct.vc_data* %69)
  %71 = call i32 (...) @release_console_sem()
  ret void
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i64 @vc_cons_allocated(i64) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

declare dso_local i32 @change_console(%struct.vc_data*) #1

declare dso_local i32 @poke_blanked_console(...) #1

declare dso_local i32 @clear_selection(...) #1

declare dso_local i32 @do_blank_screen(i32) #1

declare dso_local i32 @notify_update(%struct.vc_data*) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
