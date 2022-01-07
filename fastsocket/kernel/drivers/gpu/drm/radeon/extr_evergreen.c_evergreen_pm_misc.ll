; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pm_misc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pm_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_5__*, %struct.radeon_power_state*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.radeon_power_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_voltage }
%struct.radeon_voltage = type { i64, i32, i32 }

@VOLTAGE_SW = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Setting: vddc: %d\0A\00", align 1
@PM_METHOD_PROFILE = common dso_local global i64 0, align 8
@CHIP_BARTS = common dso_local global i64 0, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Setting: vddci: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_pm_misc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_power_state*, align 8
  %6 = alloca %struct.radeon_voltage*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 7
  %18 = load %struct.radeon_power_state*, %struct.radeon_power_state** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %18, i64 %20
  store %struct.radeon_power_state* %21, %struct.radeon_power_state** %5, align 8
  %22 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.radeon_voltage* %28, %struct.radeon_voltage** %6, align 8
  %29 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VOLTAGE_SW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %162

34:                                               ; preds = %1
  %35 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 65281
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %162

40:                                               ; preds = %34
  %41 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %60 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %55, i32 %58, i32 %59)
  %61 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %54, %45, %40
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PM_METHOD_PROFILE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %71
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHIP_BARTS, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %78
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %84
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %97, %90
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 7
  %108 = load %struct.radeon_power_state*, %struct.radeon_power_state** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %108, i64 %110
  %112 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store %struct.radeon_voltage* %123, %struct.radeon_voltage** %6, align 8
  br label %124

124:                                              ; preds = %104, %97, %84, %78, %71
  %125 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %126 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 65281
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %162

130:                                              ; preds = %124
  %131 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %132 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %130
  %136 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %137 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %138, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %135
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %147 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %150 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %145, i32 %148, i32 %149)
  %151 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %152 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  store i32 %153, i32* %156, align 8
  %157 = load %struct.radeon_voltage*, %struct.radeon_voltage** %6, align 8
  %158 = getelementptr inbounds %struct.radeon_voltage, %struct.radeon_voltage* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %144, %135, %130
  br label %162

162:                                              ; preds = %39, %129, %161, %1
  ret void
}

declare dso_local i32 @radeon_atom_set_voltage(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
