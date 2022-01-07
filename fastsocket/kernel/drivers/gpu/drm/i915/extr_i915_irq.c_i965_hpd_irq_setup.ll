; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i965_hpd_irq_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i965_hpd_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_2__ = type { i32 }

@PORTB_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@PORTB_HOTPLUG_INT_EN = common dso_local global i32 0, align 4
@PORTC_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@PORTC_HOTPLUG_INT_EN = common dso_local global i32 0, align 4
@PORTD_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@PORTD_HOTPLUG_INT_EN = common dso_local global i32 0, align 4
@SDVOC_HOTPLUG_INT_STATUS_G4X = common dso_local global i32 0, align 4
@SDVOC_HOTPLUG_INT_EN = common dso_local global i32 0, align 4
@SDVOB_HOTPLUG_INT_STATUS_G4X = common dso_local global i32 0, align 4
@SDVOB_HOTPLUG_INT_EN = common dso_local global i32 0, align 4
@SDVOC_HOTPLUG_INT_STATUS_I965 = common dso_local global i32 0, align 4
@SDVOB_HOTPLUG_INT_STATUS_I965 = common dso_local global i32 0, align 4
@CRT_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@CRT_HOTPLUG_INT_EN = common dso_local global i32 0, align 4
@CRT_HOTPLUG_ACTIVATION_PERIOD_64 = common dso_local global i32 0, align 4
@CRT_HOTPLUG_VOLTAGE_COMPARE_50 = common dso_local global i32 0, align 4
@PORT_HOTPLUG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i965_hpd_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_hpd_irq_setup(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PORTB_HOTPLUG_INT_STATUS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @PORTB_HOTPLUG_INT_EN, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PORTC_HOTPLUG_INT_STATUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @PORTC_HOTPLUG_INT_EN, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PORTD_HOTPLUG_INT_STATUS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @PORTD_HOTPLUG_INT_EN, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %43 = call i64 @IS_G4X(%struct.drm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SDVOC_HOTPLUG_INT_STATUS_G4X, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @SDVOC_HOTPLUG_INT_EN, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDVOB_HOTPLUG_INT_STATUS_G4X, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @SDVOB_HOTPLUG_INT_EN, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %56
  br label %91

68:                                               ; preds = %41
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SDVOC_HOTPLUG_INT_STATUS_I965, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @SDVOC_HOTPLUG_INT_EN, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SDVOB_HOTPLUG_INT_STATUS_I965, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @SDVOB_HOTPLUG_INT_EN, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %67
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CRT_HOTPLUG_INT_STATUS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %91
  %99 = load i32, i32* @CRT_HOTPLUG_INT_EN, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %103 = call i64 @IS_G4X(%struct.drm_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @CRT_HOTPLUG_ACTIVATION_PERIOD_64, align 4
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32, i32* @CRT_HOTPLUG_VOLTAGE_COMPARE_50, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %91
  %114 = load i32, i32* @PORT_HOTPLUG_EN, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @I915_WRITE(i32 %114, i32 %115)
  ret void
}

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
