; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_validate_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_validate_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_report = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.hid_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hid_report** }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid HID report type %u\0A\00", align 1
@HID_MAX_IDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid HID report id %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"missing %s %u\0A\00", align 1
@hid_report_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"not enough fields in %s %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"not enough values in %s %u field %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hid_report* @hid_validate_values(%struct.hid_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_err(%struct.hid_device* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.hid_report* null, %struct.hid_report** %6, align 8
  br label %91

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @HID_MAX_IDS, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_err(%struct.hid_device* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store %struct.hid_report* null, %struct.hid_report** %6, align 8
  br label %91

28:                                               ; preds = %20
  %29 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.hid_report**, %struct.hid_report*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %36, i64 %38
  %40 = load %struct.hid_report*, %struct.hid_report** %39, align 8
  store %struct.hid_report* %40, %struct.hid_report** %12, align 8
  %41 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %42 = icmp ne %struct.hid_report* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %28
  %44 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %45 = load i32*, i32** @hid_report_names, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_err(%struct.hid_device* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  store %struct.hid_report* null, %struct.hid_report** %6, align 8
  br label %91

52:                                               ; preds = %28
  %53 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %54 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %60 = load i32*, i32** @hid_report_names, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_err(%struct.hid_device* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  store %struct.hid_report* null, %struct.hid_report** %6, align 8
  br label %91

67:                                               ; preds = %52
  %68 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %69 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %67
  %80 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %81 = load i32*, i32** @hid_report_names, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_err(%struct.hid_device* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  store %struct.hid_report* null, %struct.hid_report** %6, align 8
  br label %91

89:                                               ; preds = %67
  %90 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  store %struct.hid_report* %90, %struct.hid_report** %6, align 8
  br label %91

91:                                               ; preds = %89, %79, %58, %43, %24, %16
  %92 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  ret %struct.hid_report* %92
}

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
