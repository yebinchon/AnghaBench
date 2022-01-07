; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.acpi_device = type { i32 }

@fujitsu = common dso_local global %struct.TYPE_2__* null, align 8
@FUJLAPTOP_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"brightness button event [%i -> %i (%i)]\0A\00", align 1
@disable_brightness_adjust = common dso_local global i32 0, align 4
@use_alt_lcd_levels = common dso_local global i32 0, align 4
@ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@FUJLAPTOP_DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_fujitsu_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_fujitsu_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %5, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %77 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @get_lcd_level()
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @FUJLAPTOP_DBG_TRACE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, i32, ...) @vdbg_printk(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %13
  %32 = load i32, i32* @disable_brightness_adjust, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* @use_alt_lcd_levels, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @set_lcd_level_alt(i32 %38)
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @set_lcd_level(i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS, align 4
  %49 = call i32 @acpi_bus_generate_proc_event(i32 %47, i32 %48, i32 0)
  %50 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  store i32 %50, i32* %6, align 4
  br label %76

51:                                               ; preds = %13
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* @disable_brightness_adjust, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* @use_alt_lcd_levels, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @set_lcd_level_alt(i32 %62)
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @set_lcd_level(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS, align 4
  %73 = call i32 @acpi_bus_generate_proc_event(i32 %71, i32 %72, i32 0)
  %74 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %68, %51
  br label %76

76:                                               ; preds = %75, %44
  br label %82

77:                                               ; preds = %2
  %78 = load i32, i32* @KEY_UNKNOWN, align 4
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @FUJLAPTOP_DBG_WARN, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, i32, ...) @vdbg_printk(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %76
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @input_report_key(%struct.input_dev* %86, i32 %87, i32 1)
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = call i32 @input_sync(%struct.input_dev* %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @input_report_key(%struct.input_dev* %91, i32 %92, i32 0)
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = call i32 @input_sync(%struct.input_dev* %94)
  br label %96

96:                                               ; preds = %85, %82
  ret void
}

declare dso_local i32 @get_lcd_level(...) #1

declare dso_local i32 @vdbg_printk(i32, i8*, i32, ...) #1

declare dso_local i32 @set_lcd_level_alt(i32) #1

declare dso_local i32 @set_lcd_level(i32) #1

declare dso_local i32 @acpi_bus_generate_proc_event(i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
