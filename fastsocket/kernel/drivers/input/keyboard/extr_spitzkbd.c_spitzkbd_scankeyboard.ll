; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_spitzkbd.c_spitzkbd_scankeyboard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_spitzkbd.c_spitzkbd_scankeyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spitzkbd = type { i32, i32, i32, i64, i32*, i64 }

@SPITZ_GPIO_ON_KEY = common dso_local global i32 0, align 4
@KB_COLS = common dso_local global i32 0, align 4
@KB_DISCHARGE_DELAY = common dso_local global i32 0, align 4
@KB_ACTIVATE_DELAY = common dso_local global i32 0, align 4
@KB_ROWS = common dso_local global i32 0, align 4
@SPITZ_KEY_SYNC = common dso_local global i32 0, align 4
@SPITZ_GPIO_SYNC = common dso_local global i32 0, align 4
@KEY_SUSPEND = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EV_PWR = common dso_local global i32 0, align 4
@SCAN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spitzkbd*)* @spitzkbd_scankeyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitzkbd_scankeyboard(%struct.spitzkbd* %0) #0 {
  %2 = alloca %struct.spitzkbd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spitzkbd* %0, %struct.spitzkbd** %2, align 8
  %11 = load i32, i32* @SPITZ_GPIO_ON_KEY, align 4
  %12 = call i32 @GPLR(i32 %11)
  %13 = load i32, i32* @SPITZ_GPIO_ON_KEY, align 4
  %14 = call i32 @GPIO_bit(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %19 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %142

23:                                               ; preds = %1
  %24 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %25 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %78, %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @KB_COLS, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %28
  %33 = call i32 (...) @spitzkbd_discharge_all()
  %34 = load i32, i32* @KB_DISCHARGE_DELAY, align 4
  %35 = call i32 @udelay(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @spitzkbd_activate_col(i32 %36)
  %38 = load i32, i32* @KB_ACTIVATE_DELAY, align 4
  %39 = call i32 @udelay(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @spitzkbd_get_row_status(i32 %40)
  store i32 %41, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %72, %32
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @KB_ROWS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @SCANCODE(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @KB_ROWMASK(i32 %51)
  %53 = and i32 %50, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %55 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %58 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @input_report_key(i32 %56, i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %46
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %46
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %42

75:                                               ; preds = %42
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @spitzkbd_reset_col(i32 %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %28

81:                                               ; preds = %28
  %82 = call i32 (...) @spitzkbd_activate_all()
  %83 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %84 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SPITZ_KEY_SYNC, align 4
  %87 = load i32, i32* @SPITZ_GPIO_SYNC, align 4
  %88 = call i32 @GPLR(i32 %87)
  %89 = load i32, i32* @SPITZ_GPIO_SYNC, align 4
  %90 = call i32 @GPIO_bit(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @input_report_key(i32 %85, i32 %86, i32 %93)
  %95 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %96 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @KEY_SUSPEND, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @input_report_key(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %81
  %104 = load i64, i64* @jiffies, align 8
  %105 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %106 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @msecs_to_jiffies(i32 1000)
  %109 = add nsw i64 %107, %108
  %110 = call i64 @time_after(i64 %104, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %103
  %113 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %114 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @EV_PWR, align 4
  %117 = load i32, i32* @KEY_SUSPEND, align 4
  %118 = call i32 @input_event(i32 %115, i32 %116, i32 %117, i32 1)
  %119 = load i64, i64* @jiffies, align 8
  %120 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %121 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %112, %103, %81
  %123 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %124 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @input_sync(i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %131 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %130, i32 0, i32 1
  %132 = load i64, i64* @jiffies, align 8
  %133 = load i32, i32* @SCAN_INTERVAL, align 4
  %134 = call i64 @msecs_to_jiffies(i32 %133)
  %135 = add nsw i64 %132, %134
  %136 = call i32 @mod_timer(i32* %131, i64 %135)
  br label %137

137:                                              ; preds = %129, %122
  %138 = load %struct.spitzkbd*, %struct.spitzkbd** %2, align 8
  %139 = getelementptr inbounds %struct.spitzkbd, %struct.spitzkbd* %138, i32 0, i32 0
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  br label %142

142:                                              ; preds = %137, %22
  ret void
}

declare dso_local i32 @GPLR(i32) #1

declare dso_local i32 @GPIO_bit(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spitzkbd_discharge_all(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spitzkbd_activate_col(i32) #1

declare dso_local i32 @spitzkbd_get_row_status(i32) #1

declare dso_local i32 @SCANCODE(i32, i32) #1

declare dso_local i32 @KB_ROWMASK(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @spitzkbd_reset_col(i32) #1

declare dso_local i32 @spitzkbd_activate_all(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
