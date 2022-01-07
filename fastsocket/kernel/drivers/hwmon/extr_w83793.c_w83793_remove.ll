; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_w83793_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_w83793_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.w83793_data = type { i32**, i32 }

@w83793_sensor_attr_2 = common dso_local global %struct.TYPE_8__* null, align 8
@sda_single_files = common dso_local global %struct.TYPE_8__* null, align 8
@w83793_vid = common dso_local global %struct.TYPE_8__* null, align 8
@dev_attr_vrm = common dso_local global i32 0, align 4
@w83793_left_fan = common dso_local global %struct.TYPE_8__* null, align 8
@w83793_left_pwm = common dso_local global %struct.TYPE_8__* null, align 8
@w83793_temp = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83793_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83793_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.w83793_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.w83793_data* %7, %struct.w83793_data** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %11 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hwmon_device_unregister(i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_sensor_attr_2, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_sensor_attr_2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(%struct.device* %20, i32* %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sda_single_files, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sda_single_files, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @device_remove_file(%struct.device* %37, i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %31

47:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_vid, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_vid, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @device_remove_file(%struct.device* %54, i32* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @device_remove_file(%struct.device* %65, i32* @dev_attr_vrm)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %80, %64
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_left_fan, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %69)
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_left_fan, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @device_remove_file(%struct.device* %73, i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %67

83:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_left_pwm, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_left_pwm, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32 @device_remove_file(%struct.device* %90, i32* %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %84

100:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %114, %100
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_temp, align 8
  %104 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %103)
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @w83793_temp, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = call i32 @device_remove_file(%struct.device* %107, i32* %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %119 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %126 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @i2c_unregister_device(i32* %129)
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %133 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %132, i32 0, i32 0
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %140 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @i2c_unregister_device(i32* %143)
  br label %145

145:                                              ; preds = %138, %131
  %146 = load %struct.w83793_data*, %struct.w83793_data** %3, align 8
  %147 = call i32 @kfree(%struct.w83793_data* %146)
  ret i32 0
}

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i32*) #1

declare dso_local i32 @kfree(%struct.w83793_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
