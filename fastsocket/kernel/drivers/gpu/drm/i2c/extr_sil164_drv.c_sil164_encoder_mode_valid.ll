; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sil164_priv = type { i32 }

@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* @sil164_encoder_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sil164_encoder_mode_valid(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.sil164_priv*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %8 = call %struct.sil164_priv* @to_sil164_priv(%struct.drm_encoder* %7)
  store %struct.sil164_priv* %8, %struct.sil164_priv** %6, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 32000
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 330000
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 165000
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.sil164_priv*, %struct.sil164_priv** %6, align 8
  %27 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %15
  %31 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %25, %20
  %33 = load i32, i32* @MODE_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.sil164_priv* @to_sil164_priv(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
