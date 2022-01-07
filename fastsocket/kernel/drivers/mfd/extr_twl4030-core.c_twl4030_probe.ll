; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_client = type { i32, %struct.i2c_client*, i64 }
%struct.i2c_client = type { i64, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.twl4030_platform_data* }
%struct.twl4030_platform_data = type { i64, i64, i64 }
%struct.i2c_device_id = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"can't talk I2C?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@inuse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"driver is already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TWL4030_NUM_SLAVES = common dso_local global i32 0, align 4
@twl4030_modules = common dso_local global %struct.twl4030_client* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"can't attach client %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @twl4030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.twl4030_platform_data*, align 8
  %9 = alloca %struct.twl4030_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %12, align 8
  store %struct.twl4030_platform_data* %13, %struct.twl4030_platform_data** %8, align 8
  %14 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %15 = icmp ne %struct.twl4030_platform_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = call i32 @dev_dbg(%struct.TYPE_4__* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %169

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I2C_FUNC_I2C, align 4
  %27 = call i64 @i2c_check_functionality(i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = call i32 @dev_dbg(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %169

35:                                               ; preds = %22
  %36 = load i32, i32* @inuse, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = call i32 @dev_dbg(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %169

44:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %103, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TWL4030_NUM_SLAVES, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load %struct.twl4030_client*, %struct.twl4030_client** @twl4030_modules, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %50, i64 %52
  store %struct.twl4030_client* %53, %struct.twl4030_client** %9, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %61 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %67 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %66, i32 0, i32 1
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  br label %99

68:                                               ; preds = %49
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %73 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.i2c_client* @i2c_new_dummy(i32 %71, i64 %74)
  %76 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %77 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %76, i32 0, i32 1
  store %struct.i2c_client* %75, %struct.i2c_client** %77, align 8
  %78 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %79 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %78, i32 0, i32 1
  %80 = load %struct.i2c_client*, %struct.i2c_client** %79, align 8
  %81 = icmp ne %struct.i2c_client* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %68
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dev_err(%struct.TYPE_4__* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %161

89:                                               ; preds = %68
  %90 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %91 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %90, i32 0, i32 1
  %92 = load %struct.i2c_client*, %struct.i2c_client** %91, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strlcpy(i32 %94, i32 %97, i32 4)
  br label %99

99:                                               ; preds = %89, %64
  %100 = load %struct.twl4030_client*, %struct.twl4030_client** %9, align 8
  %101 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %100, i32 0, i32 0
  %102 = call i32 @mutex_init(i32* %101)
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %45

106:                                              ; preds = %45
  store i32 1, i32* @inuse, align 4
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = call i32 @clocks_init(%struct.TYPE_4__* %108)
  %110 = call i64 (...) @twl_has_power()
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %114 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %119 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @twl4030_power_init(i64 %120)
  br label %122

122:                                              ; preds = %117, %112, %106
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %155

127:                                              ; preds = %122
  %128 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %129 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %127
  %133 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %134 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %137 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %145 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %148 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @twl_init_irq(i64 %143, i64 %146, i64 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %161

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %132, %127, %122
  %156 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %8, align 8
  %157 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %158 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @add_children(%struct.twl4030_platform_data* %156, i32 %159)
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %155, %153, %82
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = call i32 @twl4030_remove(%struct.i2c_client* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %38, %29, %16
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy(i32, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @clocks_init(%struct.TYPE_4__*) #1

declare dso_local i64 @twl_has_power(...) #1

declare dso_local i32 @twl4030_power_init(i64) #1

declare dso_local i32 @twl_init_irq(i64, i64, i64) #1

declare dso_local i32 @add_children(%struct.twl4030_platform_data*, i32) #1

declare dso_local i32 @twl4030_remove(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
