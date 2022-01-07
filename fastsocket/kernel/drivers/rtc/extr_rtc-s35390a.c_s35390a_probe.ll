; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32, i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.s35390a = type { i32, %struct.i2c_client**, i32 }
%struct.rtc_time = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Address %02x unavailable\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error resetting chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"error disabling test mode\0A\00", align 1
@S35390A_CMD_STATUS1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"error checking 12/24 hour mode\0A\00", align 1
@S35390A_FLAG_24H = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"clock needs to be set\0A\00", align 1
@s35390a_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@s35390a_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s35390a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s35390a*, align 8
  %9 = alloca %struct.rtc_time, align 4
  %10 = alloca [1 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %182

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.s35390a* @kzalloc(i32 24, i32 %21)
  store %struct.s35390a* %22, %struct.s35390a** %8, align 8
  %23 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %24 = icmp ne %struct.s35390a* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %182

28:                                               ; preds = %20
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %31 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %30, i32 0, i32 1
  %32 = load %struct.i2c_client**, %struct.i2c_client*** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %32, i64 0
  store %struct.i2c_client* %29, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.s35390a* %35)
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %78, %28
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %38, 8
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call %struct.i2c_client* @i2c_new_dummy(i32 %43, i64 %49)
  %51 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %52 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %51, i32 0, i32 1
  %53 = load %struct.i2c_client**, %struct.i2c_client*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %53, i64 %55
  store %struct.i2c_client* %50, %struct.i2c_client** %56, align 8
  %57 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %58 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %57, i32 0, i32 1
  %59 = load %struct.i2c_client**, %struct.i2c_client*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %59, i64 %61
  %63 = load %struct.i2c_client*, %struct.i2c_client** %62, align 8
  %64 = icmp ne %struct.i2c_client* %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %40
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %151

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %37

81:                                               ; preds = %37
  %82 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %83 = call i32 @s35390a_reset(%struct.s35390a* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %151

90:                                               ; preds = %81
  %91 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %92 = call i32 @s35390a_disable_test_mode(%struct.s35390a* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %151

99:                                               ; preds = %90
  %100 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %101 = load i32, i32* @S35390A_CMD_STATUS1, align 4
  %102 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0
  %103 = call i32 @s35390a_get_reg(%struct.s35390a* %100, i32 %101, i8* %102, i32 1)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %151

110:                                              ; preds = %99
  %111 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* @S35390A_FLAG_24H, align 1
  %115 = sext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %120 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %124

121:                                              ; preds = %110
  %122 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %123 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = call i64 @s35390a_get_datetime(%struct.i2c_client* %125, %struct.rtc_time* %9)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = call i32 @dev_warn(i32* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s35390a_driver, i32 0, i32 0, i32 0), align 4
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load i32, i32* @THIS_MODULE, align 4
  %137 = call i32 @rtc_device_register(i32 %133, i32* %135, i32* @s35390a_rtc_ops, i32 %136)
  %138 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %139 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %141 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @IS_ERR(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %132
  %146 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %147 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @PTR_ERR(i32 %148)
  store i32 %149, i32* %6, align 4
  br label %151

150:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %184

151:                                              ; preds = %145, %106, %95, %86, %65
  store i32 1, i32* %7, align 4
  br label %152

152:                                              ; preds = %174, %151
  %153 = load i32, i32* %7, align 4
  %154 = icmp ult i32 %153, 8
  br i1 %154, label %155, label %177

155:                                              ; preds = %152
  %156 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %157 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %156, i32 0, i32 1
  %158 = load %struct.i2c_client**, %struct.i2c_client*** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %158, i64 %160
  %162 = load %struct.i2c_client*, %struct.i2c_client** %161, align 8
  %163 = icmp ne %struct.i2c_client* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %155
  %165 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %166 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %165, i32 0, i32 1
  %167 = load %struct.i2c_client**, %struct.i2c_client*** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %167, i64 %169
  %171 = load %struct.i2c_client*, %struct.i2c_client** %170, align 8
  %172 = call i32 @i2c_unregister_device(%struct.i2c_client* %171)
  br label %173

173:                                              ; preds = %164, %155
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %152

177:                                              ; preds = %152
  %178 = load %struct.s35390a*, %struct.s35390a** %8, align 8
  %179 = call i32 @kfree(%struct.s35390a* %178)
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = call i32 @i2c_set_clientdata(%struct.i2c_client* %180, %struct.s35390a* null)
  br label %182

182:                                              ; preds = %177, %25, %17
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %150
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.s35390a* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.s35390a*) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @s35390a_reset(%struct.s35390a*) #1

declare dso_local i32 @s35390a_disable_test_mode(%struct.s35390a*) #1

declare dso_local i32 @s35390a_get_reg(%struct.s35390a*, i32, i8*, i32) #1

declare dso_local i64 @s35390a_get_datetime(%struct.i2c_client*, %struct.rtc_time*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rtc_device_register(i32, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.s35390a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
