; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_intel_setup_gmbus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_intel_setup_gmbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.drm_device = type { %struct.TYPE_7__*, %struct.drm_i915_private* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_gmbus*, i32, i32, i32, i64 }
%struct.intel_gmbus = type { i32, i32, %struct.TYPE_8__, %struct.drm_i915_private* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@PCH_GPIOA = common dso_local global i64 0, align 8
@GPIOA = common dso_local global i64 0, align 8
@VLV_DISPLAY_BASE = common dso_local global i64 0, align 8
@GMBUS_NUM_PORTS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"i915 gmbus %s\00", align 1
@gmbus_ports = common dso_local global %struct.TYPE_9__* null, align 8
@gmbus_algorithm = common dso_local global i32 0, align 4
@GMBUS_RATE_100KHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_setup_gmbus(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_gmbus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_gmbus*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i64, i64* @PCH_GPIOA, align 8
  %18 = load i64, i64* @GPIOA, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* @VLV_DISPLAY_BASE, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 2
  %40 = call i32 @init_waitqueue_head(i32* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %109, %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @GMBUS_NUM_PORTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %112

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = load %struct.intel_gmbus*, %struct.intel_gmbus** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %48, i64 %50
  store %struct.intel_gmbus* %51, %struct.intel_gmbus** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @THIS_MODULE, align 4
  %55 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %56 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @I2C_CLASS_DDC, align 4
  %59 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %60 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %63 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gmbus_ports, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %78 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32* %76, i32** %80, align 8
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %82 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %83 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %82, i32 0, i32 3
  store %struct.drm_i915_private* %81, %struct.drm_i915_private** %83, align 8
  %84 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %85 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* @gmbus_algorithm, i32** %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @GMBUS_RATE_100KHZ, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %91 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %93 = call i64 @IS_I830(%struct.drm_device* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %45
  %96 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %97 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %45
  %99 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @intel_gpio_setup(%struct.intel_gmbus* %99, i32 %100)
  %102 = load %struct.intel_gmbus*, %struct.intel_gmbus** %7, align 8
  %103 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %102, i32 0, i32 2
  %104 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %117

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %41

112:                                              ; preds = %41
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @intel_i2c_reset(i32 %115)
  store i32 0, i32* %2, align 4
  br label %134

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %122, %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 0
  %125 = load %struct.intel_gmbus*, %struct.intel_gmbus** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %125, i64 %127
  store %struct.intel_gmbus* %128, %struct.intel_gmbus** %9, align 8
  %129 = load %struct.intel_gmbus*, %struct.intel_gmbus** %9, align 8
  %130 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %129, i32 0, i32 2
  %131 = call i32 @i2c_del_adapter(%struct.TYPE_8__* %130)
  br label %118

132:                                              ; preds = %118
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %112
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @IS_I830(%struct.drm_device*) #1

declare dso_local i32 @intel_gpio_setup(%struct.intel_gmbus*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #1

declare dso_local i32 @intel_i2c_reset(i32) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
