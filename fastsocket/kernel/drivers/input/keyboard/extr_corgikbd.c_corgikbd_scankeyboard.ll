; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_corgikbd.c_corgikbd_scankeyboard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_corgikbd.c_corgikbd_scankeyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgikbd = type { i64*, i32, i32, i32, i64, i64 }

@KB_COLS = common dso_local global i32 0, align 4
@KB_DISCHARGE_DELAY = common dso_local global i32 0, align 4
@KB_ACTIVATE_DELAY = common dso_local global i32 0, align 4
@KB_ROWS = common dso_local global i32 0, align 4
@CORGI_KEY_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EV_PWR = common dso_local global i32 0, align 4
@SCAN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.corgikbd*)* @corgikbd_scankeyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgikbd_scankeyboard(%struct.corgikbd* %0) #0 {
  %2 = alloca %struct.corgikbd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.corgikbd* %0, %struct.corgikbd** %2, align 8
  %10 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %11 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %126

15:                                               ; preds = %1
  %16 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %17 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %102, %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KB_COLS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = call i32 (...) @corgikbd_discharge_all()
  %26 = load i32, i32* @KB_DISCHARGE_DELAY, align 4
  %27 = call i32 @udelay(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @corgikbd_activate_col(i32 %28)
  %30 = load i32, i32* @KB_ACTIVATE_DELAY, align 4
  %31 = call i32 @udelay(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @GET_ROWS_STATUS(i32 %32)
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %96, %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @KB_ROWS, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @SCANCODE(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @KB_ROWMASK(i32 %43)
  %45 = and i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %47 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %50 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @input_report_key(i32 %48, i64 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %38
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %68 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CORGI_KEY_OFF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %66
  %77 = load i64, i64* @jiffies, align 8
  %78 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %79 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HZ, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i64 @time_after(i64 %77, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %76
  %86 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %87 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EV_PWR, align 4
  %90 = load i64, i64* @CORGI_KEY_OFF, align 8
  %91 = call i32 @input_event(i32 %88, i32 %89, i64 %90, i32 1)
  %92 = load i64, i64* @jiffies, align 8
  %93 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %94 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %85, %76, %66, %63
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %34

99:                                               ; preds = %34
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @corgikbd_reset_col(i32 %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %20

105:                                              ; preds = %20
  %106 = call i32 (...) @corgikbd_activate_all()
  %107 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %108 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @input_sync(i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %115 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %114, i32 0, i32 2
  %116 = load i64, i64* @jiffies, align 8
  %117 = load i32, i32* @SCAN_INTERVAL, align 4
  %118 = call i64 @msecs_to_jiffies(i32 %117)
  %119 = add nsw i64 %116, %118
  %120 = call i32 @mod_timer(i32* %115, i64 %119)
  br label %121

121:                                              ; preds = %113, %105
  %122 = load %struct.corgikbd*, %struct.corgikbd** %2, align 8
  %123 = getelementptr inbounds %struct.corgikbd, %struct.corgikbd* %122, i32 0, i32 1
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  br label %126

126:                                              ; preds = %121, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @corgikbd_discharge_all(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @corgikbd_activate_col(i32) #1

declare dso_local i32 @GET_ROWS_STATUS(i32) #1

declare dso_local i32 @SCANCODE(i32, i32) #1

declare dso_local i32 @KB_ROWMASK(i32) #1

declare dso_local i32 @input_report_key(i32, i64, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @input_event(i32, i32, i64, i32) #1

declare dso_local i32 @corgikbd_reset_col(i32) #1

declare dso_local i32 @corgikbd_activate_all(...) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
