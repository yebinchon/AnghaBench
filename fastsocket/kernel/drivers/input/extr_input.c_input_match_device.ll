; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_device_id = type { i32, i64, i64, i64, i64, i64 }
%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@INPUT_DEVICE_ID_MATCH_BUS = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@INPUT_DEVICE_ID_MATCH_VERSION = common dso_local global i32 0, align 4
@evbit = common dso_local global i32 0, align 4
@EV_MAX = common dso_local global i32 0, align 4
@keybit = common dso_local global i32 0, align 4
@KEY_MAX = common dso_local global i32 0, align 4
@relbit = common dso_local global i32 0, align 4
@REL_MAX = common dso_local global i32 0, align 4
@absbit = common dso_local global i32 0, align 4
@ABS_MAX = common dso_local global i32 0, align 4
@mscbit = common dso_local global i32 0, align 4
@MSC_MAX = common dso_local global i32 0, align 4
@ledbit = common dso_local global i32 0, align 4
@LED_MAX = common dso_local global i32 0, align 4
@sndbit = common dso_local global i32 0, align 4
@SND_MAX = common dso_local global i32 0, align 4
@ffbit = common dso_local global i32 0, align 4
@FF_MAX = common dso_local global i32 0, align 4
@swbit = common dso_local global i32 0, align 4
@SW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_device_id* (%struct.input_device_id*, %struct.input_dev*)* @input_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_device_id* @input_match_device(%struct.input_device_id* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.input_device_id*, align 8
  %4 = alloca %struct.input_device_id*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.input_device_id* %0, %struct.input_device_id** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  br label %7

7:                                                ; preds = %120, %2
  %8 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %9 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %14 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ true, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %123

19:                                               ; preds = %17
  %20 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @INPUT_DEVICE_ID_MATCH_BUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %28 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %120

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %39 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VENDOR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %46 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %120

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %57 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @INPUT_DEVICE_ID_MATCH_PRODUCT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %64 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %120

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %75 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @INPUT_DEVICE_ID_MATCH_VERSION, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %82 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %120

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* @evbit, align 4
  %93 = load i32, i32* @EV_MAX, align 4
  %94 = call i32 @MATCH_BIT(i32 %92, i32 %93)
  %95 = load i32, i32* @keybit, align 4
  %96 = load i32, i32* @KEY_MAX, align 4
  %97 = call i32 @MATCH_BIT(i32 %95, i32 %96)
  %98 = load i32, i32* @relbit, align 4
  %99 = load i32, i32* @REL_MAX, align 4
  %100 = call i32 @MATCH_BIT(i32 %98, i32 %99)
  %101 = load i32, i32* @absbit, align 4
  %102 = load i32, i32* @ABS_MAX, align 4
  %103 = call i32 @MATCH_BIT(i32 %101, i32 %102)
  %104 = load i32, i32* @mscbit, align 4
  %105 = load i32, i32* @MSC_MAX, align 4
  %106 = call i32 @MATCH_BIT(i32 %104, i32 %105)
  %107 = load i32, i32* @ledbit, align 4
  %108 = load i32, i32* @LED_MAX, align 4
  %109 = call i32 @MATCH_BIT(i32 %107, i32 %108)
  %110 = load i32, i32* @sndbit, align 4
  %111 = load i32, i32* @SND_MAX, align 4
  %112 = call i32 @MATCH_BIT(i32 %110, i32 %111)
  %113 = load i32, i32* @ffbit, align 4
  %114 = load i32, i32* @FF_MAX, align 4
  %115 = call i32 @MATCH_BIT(i32 %113, i32 %114)
  %116 = load i32, i32* @swbit, align 4
  %117 = load i32, i32* @SW_MAX, align 4
  %118 = call i32 @MATCH_BIT(i32 %116, i32 %117)
  %119 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  store %struct.input_device_id* %119, %struct.input_device_id** %3, align 8
  br label %124

120:                                              ; preds = %89, %71, %53, %35
  %121 = load %struct.input_device_id*, %struct.input_device_id** %4, align 8
  %122 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %121, i32 1
  store %struct.input_device_id* %122, %struct.input_device_id** %4, align 8
  br label %7

123:                                              ; preds = %17
  store %struct.input_device_id* null, %struct.input_device_id** %3, align 8
  br label %124

124:                                              ; preds = %123, %91
  %125 = load %struct.input_device_id*, %struct.input_device_id** %3, align 8
  ret %struct.input_device_id* %125
}

declare dso_local i32 @MATCH_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
