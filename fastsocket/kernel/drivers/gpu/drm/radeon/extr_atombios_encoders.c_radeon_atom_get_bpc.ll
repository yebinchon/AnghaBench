; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_get_bpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_get_bpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }

@PANEL_BPC_UNDEFINE = common dso_local global i32 0, align 4
@PANEL_6BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_8BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_10BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_12BIT_PER_COLOR = common dso_local global i32 0, align 4
@PANEL_16BIT_PER_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @radeon_atom_get_bpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_get_bpc(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %6)
  store %struct.drm_connector* %7, %struct.drm_connector** %4, align 8
  store i32 8, i32* %5, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = icmp ne %struct.drm_connector* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call i32 @radeon_get_monitor_bpc(%struct.drm_connector* %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %20 [
    i32 0, label %15
    i32 6, label %17
    i32 8, label %19
    i32 10, label %22
    i32 12, label %24
    i32 16, label %26
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @PANEL_BPC_UNDEFINE, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %13
  %18 = load i32, i32* @PANEL_6BIT_PER_COLOR, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %13, %19
  %21 = load i32, i32* @PANEL_8BIT_PER_COLOR, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %13
  %23 = load i32, i32* @PANEL_10BIT_PER_COLOR, align 4
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load i32, i32* @PANEL_12BIT_PER_COLOR, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @PANEL_16BIT_PER_COLOR, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %17, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
