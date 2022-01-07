; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.max1586_platform_data* }
%struct.max1586_platform_data = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.max1586_data = type { i32, i32, %struct.regulator_dev**, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@MAX1586_V6 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX1586_V3_MIN_UV = common dso_local global i32 0, align 4
@MAX1586_V3_MAX_UV = common dso_local global i32 0, align 4
@MAX1586_V3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid regulator id %d\0A\00", align 1
@max1586_reg = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Maxim 1586 regulator driver loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max1586_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_pmic_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_dev**, align 8
  %7 = alloca %struct.max1586_platform_data*, align 8
  %8 = alloca %struct.max1586_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %14, align 8
  store %struct.max1586_platform_data* %15, %struct.max1586_platform_data** %7, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @MAX1586_V6, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = add i64 24, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.max1586_data* @kzalloc(i32 %23, i32 %24)
  store %struct.max1586_data* %25, %struct.max1586_data** %8, align 8
  %26 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %27 = icmp ne %struct.max1586_data* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %177

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %32 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %31, i32 0, i32 3
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %34 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %174

40:                                               ; preds = %29
  %41 = load i32, i32* @MAX1586_V3_MIN_UV, align 4
  %42 = sdiv i32 %41, 1000
  %43 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 1000
  %48 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %49 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MAX1586_V3_MAX_UV, align 4
  %51 = sdiv i32 %50, 1000
  %52 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %53 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = sdiv i32 %55, 1000
  %57 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %58 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %60 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %59, i32 0, i32 2
  %61 = load %struct.regulator_dev**, %struct.regulator_dev*** %60, align 8
  store %struct.regulator_dev** %61, %struct.regulator_dev*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %151, %40
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MAX1586_V6, align 4
  %71 = icmp sle i32 %69, %70
  br label %72

72:                                               ; preds = %68, %62
  %73 = phi i1 [ false, %62 ], [ %71, %68 ]
  br i1 %73, label %74, label %154

74:                                               ; preds = %72
  %75 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %76 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %84 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %74
  br label %151

93:                                               ; preds = %74
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @MAX1586_V3, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @MAX1586_V6, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97, %93
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @dev_err(%struct.TYPE_9__* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %161

106:                                              ; preds = %97
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @max1586_reg, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %7, align 8
  %114 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %122 = call %struct.regulator_dev* @regulator_register(%struct.TYPE_8__* %110, %struct.TYPE_9__* %112, i32 %120, %struct.max1586_data* %121)
  %123 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %123, i64 %125
  store %struct.regulator_dev* %122, %struct.regulator_dev** %126, align 8
  %127 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %127, i64 %129
  %131 = load %struct.regulator_dev*, %struct.regulator_dev** %130, align 8
  %132 = call i64 @IS_ERR(%struct.regulator_dev* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %106
  %135 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %135, i64 %137
  %139 = load %struct.regulator_dev*, %struct.regulator_dev** %138, align 8
  %140 = call i32 @PTR_ERR(%struct.regulator_dev* %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @max1586_reg, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dev_err(%struct.TYPE_9__* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %161

150:                                              ; preds = %106
  br label %151

151:                                              ; preds = %150, %92
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %62

154:                                              ; preds = %72
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %157 = call i32 @i2c_set_clientdata(%struct.i2c_client* %155, %struct.regulator_dev** %156)
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = call i32 @dev_info(%struct.TYPE_9__* %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %179

161:                                              ; preds = %134, %101
  br label %162

162:                                              ; preds = %166, %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %9, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.regulator_dev**, %struct.regulator_dev*** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %167, i64 %169
  %171 = load %struct.regulator_dev*, %struct.regulator_dev** %170, align 8
  %172 = call i32 @regulator_unregister(%struct.regulator_dev* %171)
  br label %162

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %37
  %175 = load %struct.max1586_data*, %struct.max1586_data** %8, align 8
  %176 = call i32 @kfree(%struct.max1586_data* %175)
  br label %177

177:                                              ; preds = %174, %28
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %154
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.max1586_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local %struct.regulator_dev* @regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, %struct.max1586_data*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.regulator_dev**) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @regulator_unregister(%struct.regulator_dev*) #1

declare dso_local i32 @kfree(%struct.max1586_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
