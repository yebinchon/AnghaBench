; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_tosakbd.c_tosakbd_scankeyboard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_tosakbd.c_tosakbd_scankeyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tosakbd = type { i32, i32, i32, i32*, i64 }

@TOSA_KEY_STROBE_NUM = common dso_local global i32 0, align 4
@KB_DISCHARGE_DELAY = common dso_local global i32 0, align 4
@KB_ACTIVATE_DELAY = common dso_local global i32 0, align 4
@TOSA_KEY_SENSE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unhandled scancode: 0x%02x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SCAN_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tosakbd_scankeyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosakbd_scankeyboard(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tosakbd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call %struct.tosakbd* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.tosakbd* %12, %struct.tosakbd** %3, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %14 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %18 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %109

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %90, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TOSA_KEY_STROBE_NUM, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %93

27:                                               ; preds = %23
  %28 = call i32 (...) @tosakbd_discharge_all()
  %29 = load i32, i32* @KB_DISCHARGE_DELAY, align 4
  %30 = call i32 @udelay(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @tosakbd_activate_col(i32 %31)
  %33 = load i32, i32* @KB_ACTIVATE_DELAY, align 4
  %34 = call i32 @udelay(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @GET_ROWS_STATUS(i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %84, %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TOSA_KEY_SENSE_NUM, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @SCANCODE(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @KB_ROWMASK(i32 %46)
  %48 = and i32 %45, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %53 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %51, %41
  %66 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %67 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %70 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @input_report_key(i32 %68, i32 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %37

87:                                               ; preds = %37
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @tosakbd_reset_col(i32 %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %23

93:                                               ; preds = %23
  %94 = call i32 (...) @tosakbd_activate_all()
  %95 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %96 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @input_sync(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %103 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %102, i32 0, i32 1
  %104 = load i64, i64* @jiffies, align 8
  %105 = load i64, i64* @SCAN_INTERVAL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @mod_timer(i32* %103, i64 %106)
  br label %108

108:                                              ; preds = %101, %93
  br label %109

109:                                              ; preds = %108, %21
  %110 = load %struct.tosakbd*, %struct.tosakbd** %3, align 8
  %111 = getelementptr inbounds %struct.tosakbd, %struct.tosakbd* %110, i32 0, i32 0
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  ret void
}

declare dso_local %struct.tosakbd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tosakbd_discharge_all(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tosakbd_activate_col(i32) #1

declare dso_local i32 @GET_ROWS_STATUS(i32) #1

declare dso_local i32 @SCANCODE(i32, i32) #1

declare dso_local i32 @KB_ROWMASK(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @tosakbd_reset_col(i32) #1

declare dso_local i32 @tosakbd_activate_all(...) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
