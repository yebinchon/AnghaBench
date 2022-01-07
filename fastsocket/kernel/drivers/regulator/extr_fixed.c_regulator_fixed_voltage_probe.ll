; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_fixed.c_regulator_fixed_voltage_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_fixed.c_regulator_fixed_voltage_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.fixed_voltage_config* }
%struct.fixed_voltage_config = type { i32, i32, i32, i32, i32, i32 }
%struct.fixed_voltage_data = type { i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.fixed_voltage_data*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate device data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate supply name\0A\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@fixed_voltage_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"using GPIO 0 for regulator enable control\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Could not obtain regulator enable GPIO %d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Could not configure regulator enable GPIO %d direction: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s supplying %duV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @regulator_fixed_voltage_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_fixed_voltage_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fixed_voltage_config*, align 8
  %5 = alloca %struct.fixed_voltage_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %9, align 8
  store %struct.fixed_voltage_config* %10, %struct.fixed_voltage_config** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fixed_voltage_data* @kzalloc(i32 56, i32 %11)
  store %struct.fixed_voltage_data* %12, %struct.fixed_voltage_data** %5, align 8
  %13 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %14 = icmp eq %struct.fixed_voltage_data* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %203

21:                                               ; preds = %1
  %22 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %23 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.fixed_voltage_data* @kstrdup(i32 %24, i32 %25)
  %27 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %28 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.fixed_voltage_data* %26, %struct.fixed_voltage_data** %29, align 8
  %30 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %31 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %32, align 8
  %34 = icmp eq %struct.fixed_voltage_data* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %203

41:                                               ; preds = %21
  %42 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %43 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %44 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %48 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %51 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32* @fixed_voltage_ops, i32** %52, align 8
  %53 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %54 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %57 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %60 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %62 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %65 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %67 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @gpio_is_valid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %142

71:                                               ; preds = %41
  %72 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %73 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %76 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %78 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_warn(%struct.TYPE_7__* %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %71
  %86 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %87 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %90 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gpio_request(i32 %88, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %99 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %101)
  br label %197

103:                                              ; preds = %85
  %104 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %105 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %108 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %110 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %103
  %114 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %115 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  br label %124

117:                                              ; preds = %103
  %118 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %119 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  br label %124

124:                                              ; preds = %117, %113
  %125 = phi i32 [ %116, %113 ], [ %123, %117 ]
  store i32 %125, i32* %6, align 4
  %126 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %127 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @gpio_direction_output(i32 %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %137 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %135, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %139)
  br label %185

141:                                              ; preds = %124
  br label %145

142:                                              ; preds = %41
  %143 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %144 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %141
  %146 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %147 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %146, i32 0, i32 2
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %151 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %154 = call i32 @regulator_register(%struct.TYPE_6__* %147, %struct.TYPE_7__* %149, i32 %152, %struct.fixed_voltage_data* %153)
  %155 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %156 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %158 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @IS_ERR(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %145
  %163 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %164 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @PTR_ERR(i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %6, align 4
  %170 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  br label %185

171:                                              ; preds = %145
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %174 = call i32 @platform_set_drvdata(%struct.platform_device* %172, %struct.fixed_voltage_data* %173)
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %178 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %179, align 8
  %181 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %182 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dev_dbg(%struct.TYPE_7__* %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.fixed_voltage_data* %180, i32 %183)
  store i32 0, i32* %2, align 4
  br label %207

185:                                              ; preds = %162, %133
  %186 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %187 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @gpio_is_valid(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %4, align 8
  %193 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @gpio_free(i32 %194)
  br label %196

196:                                              ; preds = %191, %185
  br label %197

197:                                              ; preds = %196, %95
  %198 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %199 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %200, align 8
  %202 = call i32 @kfree(%struct.fixed_voltage_data* %201)
  br label %203

203:                                              ; preds = %197, %35, %15
  %204 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %5, align 8
  %205 = call i32 @kfree(%struct.fixed_voltage_data* %204)
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %203, %171
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.fixed_voltage_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.fixed_voltage_data* @kstrdup(i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @regulator_register(%struct.TYPE_6__*, %struct.TYPE_7__*, i32, %struct.fixed_voltage_data*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fixed_voltage_data*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, %struct.fixed_voltage_data*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.fixed_voltage_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
