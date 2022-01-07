; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_do_blank_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_do_blank_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.vc_data*, i32, i32)* }

@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@console_blanked = common dso_local global i32 0, align 4
@blank_state = common dso_local global i64 0, align 8
@blank_vesa_wait = common dso_local global i64 0, align 8
@blank_off = common dso_local global i64 0, align 8
@vesa_blank_mode = common dso_local global i32 0, align 4
@blank_normal_wait = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@console_timer = common dso_local global i32 0, align 4
@blank_timer_expired = common dso_local global i64 0, align 8
@vesa_off_interval = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@VT_EVENT_BLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_blank_screen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %6 = load i64, i64* @fg_console, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  store %struct.vc_data* %9, %struct.vc_data** %3, align 8
  %10 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %11 = load i32, i32* @console_blanked, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i64, i64* @blank_state, align 8
  %15 = load i64, i64* @blank_vesa_wait, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i64, i64* @blank_off, align 8
  store i64 %18, i64* @blank_state, align 8
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %22, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %25 = load i32, i32* @vesa_blank_mode, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 %23(%struct.vc_data* %24, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %17, %13
  br label %121

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = call i32 @hide_cursor(%struct.vc_data* %33)
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = call i32 @save_screen(%struct.vc_data* %35)
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %40, align 8
  %42 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %43 = call i32 %41(%struct.vc_data* %42, i32 -1, i32 1)
  %44 = load i64, i64* @fg_console, align 8
  %45 = add i64 %44, 1
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* @console_blanked, align 4
  %47 = load i64, i64* @blank_off, align 8
  store i64 %47, i64* @blank_state, align 8
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = call i32 @set_origin(%struct.vc_data* %48)
  br label %121

50:                                               ; preds = %29
  %51 = load i64, i64* @blank_state, align 8
  %52 = load i64, i64* @blank_normal_wait, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %121

55:                                               ; preds = %50
  %56 = load i64, i64* @blank_off, align 8
  store i64 %56, i64* @blank_state, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KD_TEXT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i64, i64* @fg_console, align 8
  %64 = add i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* @console_blanked, align 4
  br label %121

66:                                               ; preds = %55
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = call i32 @hide_cursor(%struct.vc_data* %67)
  %69 = call i32 @del_timer_sync(i32* @console_timer)
  store i64 0, i64* @blank_timer_expired, align 8
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = call i32 @save_screen(%struct.vc_data* %70)
  %72 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %75, align 8
  %77 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %78 = load i64, i64* @vesa_off_interval, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %84

81:                                               ; preds = %66
  %82 = load i32, i32* @vesa_blank_mode, align 4
  %83 = add nsw i32 %82, 1
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i32 [ 1, %80 ], [ %83, %81 ]
  %86 = call i32 %76(%struct.vc_data* %77, i32 %85, i32 0)
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* @fg_console, align 8
  %88 = add i64 %87, 1
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* @console_blanked, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %94 = call i32 @set_origin(%struct.vc_data* %93)
  br label %95

95:                                               ; preds = %92, %84
  br i1 true, label %96, label %100

96:                                               ; preds = %95
  %97 = call i64 @console_blank_hook(i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %121

100:                                              ; preds = %96, %95
  %101 = load i64, i64* @vesa_off_interval, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* @vesa_blank_mode, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i64, i64* @blank_vesa_wait, align 8
  store i64 %107, i64* @blank_state, align 8
  %108 = load i64, i64* @jiffies, align 8
  %109 = load i64, i64* @vesa_off_interval, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @mod_timer(i32* @console_timer, i64 %110)
  br label %112

112:                                              ; preds = %106, %103, %100
  %113 = load i32, i32* @VT_EVENT_BLANK, align 4
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %118 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @vt_event_post(i32 %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %112, %99, %62, %54, %32, %28
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

declare dso_local i32 @save_screen(%struct.vc_data*) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @console_blank_hook(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @vt_event_post(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
