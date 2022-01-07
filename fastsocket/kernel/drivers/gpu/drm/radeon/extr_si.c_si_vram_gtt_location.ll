; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_mc = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"limiting VRAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_mc*)* @si_vram_gtt_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_vram_gtt_location(%struct.radeon_device* %0, %struct.radeon_mc* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mc*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %4, align 8
  %5 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %6 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ugt i64 %8, 1098437885952
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_warn(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %15, i32 0, i32 1
  store i32 -1073741824, i32* %16, align 4
  %17 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %17, i32 0, i32 0
  store i32 -1073741824, i32* %18, align 4
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = call i32 @si_vram_location(%struct.radeon_device* %20, %struct.TYPE_2__* %22, i32 0)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %29 = call i32 @si_gtt_location(%struct.radeon_device* %27, %struct.radeon_mc* %28)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @si_vram_location(%struct.radeon_device*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @si_gtt_location(%struct.radeon_device*, %struct.radeon_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
