; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_w83792d_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_w83792d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83792d_data = type { i32**, i32, i8**, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@W83792D_REG_FAN_MIN = common dso_local global i32* null, align 8
@w83792d_group = common dso_local global i32 0, align 4
@W83792D_REG_GPIO_EN = common dso_local global i32 0, align 4
@w83792d_group_fan = common dso_local global i32* null, align 8
@W83792D_REG_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83792d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83792d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.w83792d_data*, align 8
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
  %14 = call %struct.w83792d_data* @kzalloc(i32 40, i32 %13)
  store %struct.w83792d_data* %14, %struct.w83792d_data** %6, align 8
  %15 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %16 = icmp ne %struct.w83792d_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  br label %192

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.w83792d_data* %22)
  %24 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %25 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %27 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %26, i32 0, i32 3
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @w83792d_detect_subclients(%struct.i2c_client* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %189

34:                                               ; preds = %20
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @w83792d_init_client(%struct.i2c_client* %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %54, %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 7
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32*, i32** @W83792D_REG_FAN_MIN, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @w83792d_read_value(%struct.i2c_client* %41, i32 %46)
  %48 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %49 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %48, i32 0, i32 2
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_group(i32* %59, i32* @w83792d_group)
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %160

63:                                               ; preds = %57
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* @W83792D_REG_GPIO_EN, align 4
  %66 = call i8* @w83792d_read_value(%struct.i2c_client* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 64
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %63
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32*, i32** @w83792d_group_fan, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i32 @sysfs_create_group(i32* %73, i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %139

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = load i32*, i32** @w83792d_group_fan, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = call i32 @sysfs_create_group(i32* %86, i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %139

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %80
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = load i32, i32* @W83792D_REG_PIN, align 4
  %96 = call i8* @w83792d_read_value(%struct.i2c_client* %94, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 64
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = load i32*, i32** @w83792d_group_fan, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = call i32 @sysfs_create_group(i32* %103, i32* %105)
  store i32 %106, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %139

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 0
  %117 = load i32*, i32** @w83792d_group_fan, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = call i32 @sysfs_create_group(i32* %116, i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %139

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i32 @hwmon_device_register(%struct.device* %124)
  %126 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %127 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %129 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %135 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PTR_ERR(i32 %136)
  store i32 %137, i32* %10, align 4
  br label %139

138:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %194

139:                                              ; preds = %133, %121, %108, %91, %78
  %140 = load %struct.device*, %struct.device** %7, align 8
  %141 = getelementptr inbounds %struct.device, %struct.device* %140, i32 0, i32 0
  %142 = call i32 @sysfs_remove_group(i32* %141, i32* @w83792d_group)
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %156, %139
  %144 = load i32, i32* %8, align 4
  %145 = load i32*, i32** @w83792d_group_fan, align 8
  %146 = call i32 @ARRAY_SIZE(i32* %145)
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.device*, %struct.device** %7, align 8
  %150 = getelementptr inbounds %struct.device, %struct.device* %149, i32 0, i32 0
  %151 = load i32*, i32** @w83792d_group_fan, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = call i32 @sysfs_remove_group(i32* %150, i32* %154)
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %143

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159, %62
  %161 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %162 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %161, i32 0, i32 0
  %163 = load i32**, i32*** %162, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 0
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %169 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %168, i32 0, i32 0
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @i2c_unregister_device(i32* %172)
  br label %174

174:                                              ; preds = %167, %160
  %175 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %176 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %175, i32 0, i32 0
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %183 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %182, i32 0, i32 0
  %184 = load i32**, i32*** %183, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @i2c_unregister_device(i32* %186)
  br label %188

188:                                              ; preds = %181, %174
  br label %189

189:                                              ; preds = %188, %33
  %190 = load %struct.w83792d_data*, %struct.w83792d_data** %6, align 8
  %191 = call i32 @kfree(%struct.w83792d_data* %190)
  br label %192

192:                                              ; preds = %189, %17
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %138
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.w83792d_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83792d_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83792d_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @w83792d_init_client(%struct.i2c_client*) #1

declare dso_local i8* @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_unregister_device(i32*) #1

declare dso_local i32 @kfree(%struct.w83792d_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
