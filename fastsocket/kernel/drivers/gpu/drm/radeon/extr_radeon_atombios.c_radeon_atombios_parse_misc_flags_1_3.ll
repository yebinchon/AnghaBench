; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_misc_flags_1_3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_misc_flags_1_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@ATOM_PM_MISCINFO_POWER_SAVING_MODE = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_POWERSAVE = common dso_local global i8* null, align 8
@ATOM_PM_MISCINFO_DEFAULT_DC_STATE_ENTRY_TRUE = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i8* null, align 8
@ATOM_PM_MISCINFO_DEFAULT_LOW_DC_STATE_ENTRY_TRUE = common dso_local global i32 0, align 4
@ATOM_PM_MISCINFO_LOAD_BALANCE_EN = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BALANCED = common dso_local global i8* null, align 8
@ATOM_PM_MISCINFO_3D_ACCELERATION_EN = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i8* null, align 8
@RADEON_PM_STATE_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@ATOM_PM_MISCINFO2_SYSTEM_AC_LITE_MODE = common dso_local global i32 0, align 4
@ATOM_PM_MISCINFO_DRIVER_DEFAULT_MODE = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i8* null, align 8
@RADEON_PM_MODE_NO_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @radeon_atombios_parse_misc_flags_1_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atombios_parse_misc_flags_1_3(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %9, i32* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %18, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ATOM_PM_MISCINFO_POWER_SAVING_MODE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load i8*, i8** @POWER_STATE_TYPE_POWERSAVE, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  store i8* %32, i8** %40, align 8
  br label %41

41:                                               ; preds = %31, %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ATOM_PM_MISCINFO_DEFAULT_DC_STATE_ENTRY_TRUE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i8*, i8** @POWER_STATE_TYPE_BATTERY, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i8* %47, i8** %55, align 8
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ATOM_PM_MISCINFO_DEFAULT_LOW_DC_STATE_ENTRY_TRUE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i8*, i8** @POWER_STATE_TYPE_BATTERY, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i8* %62, i8** %70, align 8
  br label %71

71:                                               ; preds = %61, %56
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @ATOM_PM_MISCINFO_LOAD_BALANCE_EN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i8*, i8** @POWER_STATE_TYPE_BALANCED, align 8
  %78 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i8* %77, i8** %85, align 8
  br label %86

86:                                               ; preds = %76, %71
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ATOM_PM_MISCINFO_3D_ACCELERATION_EN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i8*, i8** @POWER_STATE_TYPE_PERFORMANCE, align 8
  %93 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  store i8* %92, i8** %100, align 8
  %101 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %102
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %91, %86
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @ATOM_PM_MISCINFO2_SYSTEM_AC_LITE_MODE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load i8*, i8** @POWER_STATE_TYPE_BALANCED, align 8
  %120 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  store i8* %119, i8** %127, align 8
  br label %128

128:                                              ; preds = %118, %113
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @ATOM_PM_MISCINFO_DRIVER_DEFAULT_MODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %128
  %134 = load i8*, i8** @POWER_STATE_TYPE_DEFAULT, align 8
  %135 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  store i8* %134, i8** %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  store %struct.TYPE_4__* %156, %struct.TYPE_4__** %164, align 8
  br label %184

165:                                              ; preds = %128
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %165
  %169 = load i32, i32* @RADEON_PM_MODE_NO_DISPLAY, align 4
  %170 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %169
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %168, %165
  br label %184

184:                                              ; preds = %183, %133
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
