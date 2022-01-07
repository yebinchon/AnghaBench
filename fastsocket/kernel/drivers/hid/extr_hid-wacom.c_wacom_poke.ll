; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_poke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 (%struct.hid_device*, i8*, i32, i32)*, i32 }
%struct.wacom_data = type { i64 }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to poke device, command %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i64)* @wacom_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_poke(%struct.hid_device* %0, i64 %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wacom_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %10 = call %struct.wacom_data* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.wacom_data* %10, %struct.wacom_data** %5, align 8
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 3, i8* %11, align 1
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %12, align 1
  store i32 3, i32* %6, align 4
  br label %13

13:                                               ; preds = %28, %2
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32 (%struct.hid_device*, i8*, i32, i32)*, i32 (%struct.hid_device*, i8*, i32, i32)** %15, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %19 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %20 = call i32 %16(%struct.hid_device* %17, i8* %18, i32 2, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp sgt i32 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %13, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 5, i8* %37, align 1
  br label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 6, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %36
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %41, align 1
  store i32 3, i32* %6, align 4
  br label %42

42:                                               ; preds = %57, %40
  %43 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 0
  %45 = load i32 (%struct.hid_device*, i8*, i32, i32)*, i32 (%struct.hid_device*, i8*, i32, i32)** %44, align 8
  %46 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %48 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %49 = call i32 %45(%struct.hid_device* %46, i8* %47, i32 2, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp sgt i32 %54, 0
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %42, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.wacom_data*, %struct.wacom_data** %5, align 8
  %65 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %74

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %30
  %68 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %69 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8 signext %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %62
  ret void
}

declare dso_local %struct.wacom_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
