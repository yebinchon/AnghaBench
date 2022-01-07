; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_w83791d_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_w83791d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83791d_data = type { i32*, i32**, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUMBER_OF_FANIN = common dso_local global i32 0, align 4
@W83791D_REG_FAN_MIN = common dso_local global i32* null, align 8
@w83791d_group = common dso_local global i32 0, align 4
@W83791D_REG_GPIO = common dso_local global i32 0, align 4
@w83791d_group_fanpwm45 = common dso_local global i32 0, align 4
@W83791D_REG_DID_VID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83791d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83791d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.w83791d_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.w83791d_data* @kzalloc(i32 24, i32 %13)
  store %struct.w83791d_data* %14, %struct.w83791d_data** %6, align 8
  %15 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %16 = icmp ne %struct.w83791d_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %141

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.w83791d_data* %22)
  %24 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %25 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @w83791d_detect_subclients(%struct.i2c_client* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %138

32:                                               ; preds = %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @w83791d_init_client(%struct.i2c_client* %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %53, %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @NUMBER_OF_FANIN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32*, i32** @W83791D_REG_FAN_MIN, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @w83791d_read(%struct.i2c_client* %40, i32 %45)
  %47 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %48 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_group(i32* %59, i32* @w83791d_group)
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %109

63:                                               ; preds = %56
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* @W83791D_REG_GPIO, align 4
  %66 = call i32 @w83791d_read(%struct.i2c_client* %64, i32 %65)
  %67 = and i32 %66, 16
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = call i32 @sysfs_create_group(i32* %73, i32* @w83791d_group_fanpwm45)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %104

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = call i32 @hwmon_device_register(%struct.device* %80)
  %82 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %83 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %85 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %91 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %9, align 4
  br label %95

94:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %143

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 0
  %102 = call i32 @sysfs_remove_group(i32* %101, i32* @w83791d_group_fanpwm45)
  br label %103

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = call i32 @sysfs_remove_group(i32* %107, i32* @w83791d_group)
  br label %109

109:                                              ; preds = %104, %62
  %110 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %111 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %118 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @i2c_unregister_device(i32* %121)
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %125 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %132 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @i2c_unregister_device(i32* %135)
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %31
  %139 = load %struct.w83791d_data*, %struct.w83791d_data** %6, align 8
  %140 = call i32 @kfree(%struct.w83791d_data* %139)
  br label %141

141:                                              ; preds = %138, %17
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %94
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.w83791d_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83791d_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83791d_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @w83791d_init_client(%struct.i2c_client*) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i32*) #1

declare dso_local i32 @kfree(%struct.w83791d_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
