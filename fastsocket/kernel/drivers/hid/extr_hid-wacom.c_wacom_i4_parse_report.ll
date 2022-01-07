; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_i4_parse_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_i4_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.wacom_data = type { i8 }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unknown report: %d,%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.wacom_data*, %struct.input_dev*, i8*)* @wacom_i4_parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_i4_parse_report(%struct.hid_device* %0, %struct.wacom_data* %1, %struct.input_dev* %2, i8* %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.wacom_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.wacom_data* %1, %struct.wacom_data** %6, align 8
  store %struct.input_dev* %2, %struct.input_dev** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %30 [
    i32 0, label %13
    i32 2, label %14
    i32 3, label %19
    i32 12, label %25
  ]

13:                                               ; preds = %4
  br label %40

14:                                               ; preds = %4
  %15 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @wacom_i4_parse_pen_report(%struct.wacom_data* %15, %struct.input_dev* %16, i8* %17)
  br label %40

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %24 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %23, i32 0, i32 0
  store i8 %22, i8* %24, align 1
  br label %40

25:                                               ; preds = %4
  %26 = load %struct.wacom_data*, %struct.wacom_data** %6, align 8
  %27 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @wacom_i4_parse_button_report(%struct.wacom_data* %26, %struct.input_dev* %27, i8* %28)
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %32 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %31, i32 0, i32 0
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %35, i8 zeroext %38)
  br label %40

40:                                               ; preds = %30, %25, %19, %14, %13
  ret void
}

declare dso_local i32 @wacom_i4_parse_pen_report(%struct.wacom_data*, %struct.input_dev*, i8*) #1

declare dso_local i32 @wacom_i4_parse_button_report(%struct.wacom_data*, %struct.input_dev*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
