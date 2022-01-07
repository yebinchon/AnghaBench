; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_set_spd_infoframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_set_spd_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dip_infoframe = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DIP_TYPE_SPD = common dso_local global i32 0, align 4
@DIP_VERSION_SPD = common dso_local global i32 0, align 4
@DIP_LEN_SPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Integrated gfx\00", align 1
@DIP_SPD_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @intel_hdmi_set_spd_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_set_spd_infoframe(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dip_infoframe, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = call i32 @memset(%struct.dip_infoframe* %3, i32 0, i32 24)
  %5 = load i32, i32* @DIP_TYPE_SPD, align 4
  %6 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %3, i32 0, i32 3
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @DIP_VERSION_SPD, align 4
  %8 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @DIP_LEN_SPD, align 4
  %10 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @DIP_SPD_PC, align 4
  %22 = getelementptr inbounds %struct.dip_infoframe, %struct.dip_infoframe* %3, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %26 = call i32 @intel_set_infoframe(%struct.drm_encoder* %25, %struct.dip_infoframe* %3)
  ret void
}

declare dso_local i32 @memset(%struct.dip_infoframe*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @intel_set_infoframe(%struct.drm_encoder*, %struct.dip_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
