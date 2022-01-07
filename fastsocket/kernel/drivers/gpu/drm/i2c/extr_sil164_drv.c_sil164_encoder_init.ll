; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_encoder_slave = type { i32*, %struct.sil164_priv* }
%struct.sil164_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sil164_encoder_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.drm_device*, %struct.drm_encoder_slave*)* @sil164_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sil164_encoder_init(%struct.i2c_client* %0, %struct.drm_device* %1, %struct.drm_encoder_slave* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_encoder_slave*, align 8
  %8 = alloca %struct.sil164_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_encoder_slave* %2, %struct.drm_encoder_slave** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sil164_priv* @kzalloc(i32 4, i32 %9)
  store %struct.sil164_priv* %10, %struct.sil164_priv** %8, align 8
  %11 = load %struct.sil164_priv*, %struct.sil164_priv** %8, align 8
  %12 = icmp ne %struct.sil164_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load %struct.sil164_priv*, %struct.sil164_priv** %8, align 8
  %18 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %19 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %18, i32 0, i32 1
  store %struct.sil164_priv* %17, %struct.sil164_priv** %19, align 8
  %20 = load %struct.drm_encoder_slave*, %struct.drm_encoder_slave** %7, align 8
  %21 = getelementptr inbounds %struct.drm_encoder_slave, %struct.drm_encoder_slave* %20, i32 0, i32 0
  store i32* @sil164_encoder_funcs, i32** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = call i32 @sil164_detect_slave(%struct.i2c_client* %22)
  %24 = load %struct.sil164_priv*, %struct.sil164_priv** %8, align 8
  %25 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.sil164_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @sil164_detect_slave(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
