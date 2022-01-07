; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_query_tablet_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_query_tablet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.wacom_features = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TABLETPC2FG = common dso_local global i64 0, align 8
@WAC_HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@TABLETPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.wacom_features*)* @wacom_query_tablet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_query_tablet_data(%struct.usb_interface* %0, %struct.wacom_features* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.wacom_features*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.wacom_features* %1, %struct.wacom_features** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i32 4, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  %19 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %20 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TABLETPC2FG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 3, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 4, i8* %29, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 0, i8* %33, align 1
  store i32 3, i32* %8, align 4
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = load i32, i32* @WAC_HID_FEATURE_REPORT, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @wacom_set_report(%struct.usb_interface* %34, i32 %35, i32 %36, i8* %37, i32 4, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = load i32, i32* @WAC_HID_FEATURE_REPORT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @wacom_get_report(%struct.usb_interface* %42, i32 %43, i32 %44, i8* %45, i32 4, i32 1)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %58, 5
  br label %61

61:                                               ; preds = %57, %51
  %62 = phi i1 [ false, %51 ], [ %60, %57 ]
  br i1 %62, label %25, label %63

63:                                               ; preds = %61
  br label %107

64:                                               ; preds = %18
  %65 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %66 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TABLETPC, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %103, %70
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 2, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 2, i8* %75, align 1
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = load i32, i32* @WAC_HID_FEATURE_REPORT, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @wacom_set_report(%struct.usb_interface* %76, i32 %77, i32 %78, i8* %79, i32 2, i32 1)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %85 = load i32, i32* @WAC_HID_FEATURE_REPORT, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @wacom_get_report(%struct.usb_interface* %84, i32 %85, i32 %86, i8* %87, i32 2, i32 1)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %83, %71
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %90
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = icmp slt i32 %100, 5
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i1 [ false, %93 ], [ %102, %99 ]
  br i1 %104, label %71, label %105

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105, %64
  br label %107

107:                                              ; preds = %106, %63
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %9, align 4
  br label %115

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %16
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @wacom_set_report(%struct.usb_interface*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wacom_get_report(%struct.usb_interface*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
