; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_i4_parse_button_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_i4_parse_button_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_data = type { i32 }
%struct.input_dev = type { i32 }

@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_8 = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_data*, %struct.input_dev*, i8*)* @wacom_i4_parse_button_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_i4_parse_button_report(%struct.wacom_data* %0, %struct.input_dev* %1, i8* %2) #0 {
  %4 = alloca %struct.wacom_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.wacom_data* %0, %struct.wacom_data** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 3
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 1
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = or i32 %12, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %21 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %27 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load i32, i32* @BTN_0, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = call i32 @input_report_key(%struct.input_dev* %28, i32 %29, i32 %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = load i32, i32* @BTN_1, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 2
  %37 = call i32 @input_report_key(%struct.input_dev* %33, i32 %34, i32 %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = load i32, i32* @BTN_2, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 4
  %42 = call i32 @input_report_key(%struct.input_dev* %38, i32 %39, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %44 = load i32, i32* @BTN_3, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 8
  %47 = call i32 @input_report_key(%struct.input_dev* %43, i32 %44, i32 %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load i32, i32* @BTN_4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 16
  %52 = call i32 @input_report_key(%struct.input_dev* %48, i32 %49, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = load i32, i32* @BTN_5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 32
  %57 = call i32 @input_report_key(%struct.input_dev* %53, i32 %54, i32 %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = load i32, i32* @BTN_6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 64
  %62 = call i32 @input_report_key(%struct.input_dev* %58, i32 %59, i32 %61)
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = load i32, i32* @BTN_7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 128
  %67 = call i32 @input_report_key(%struct.input_dev* %63, i32 %64, i32 %66)
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = load i32, i32* @BTN_8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 256
  %72 = call i32 @input_report_key(%struct.input_dev* %68, i32 %69, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %75 = call i32 @input_report_key(%struct.input_dev* %73, i32 %74, i32 1)
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @ABS_MISC, align 4
  %78 = load i32, i32* @PAD_DEVICE_ID, align 4
  %79 = call i32 @input_report_abs(%struct.input_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %81 = load i32, i32* @EV_MSC, align 4
  %82 = load i32, i32* @MSC_SERIAL, align 4
  %83 = call i32 @input_event(%struct.input_dev* %80, i32 %81, i32 %82, i32 -1)
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = call i32 @input_sync(%struct.input_dev* %84)
  br label %86

86:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
