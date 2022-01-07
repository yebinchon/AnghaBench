; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.sil164_priv = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @sil164_encoder_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil164_encoder_save(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.sil164_priv*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.sil164_priv* @to_sil164_priv(%struct.drm_encoder* %4)
  store %struct.sil164_priv* %5, %struct.sil164_priv** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call i64 @drm_i2c_encoder_get_client(%struct.drm_encoder* %6)
  %8 = load %struct.sil164_priv*, %struct.sil164_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @sil164_save_state(i64 %7, i32 %10)
  %12 = load %struct.sil164_priv*, %struct.sil164_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.sil164_priv*, %struct.sil164_priv** %3, align 8
  %18 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sil164_priv*, %struct.sil164_priv** %3, align 8
  %21 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sil164_save_state(i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.sil164_priv* @to_sil164_priv(%struct.drm_encoder*) #1

declare dso_local i32 @sil164_save_state(i64, i32) #1

declare dso_local i64 @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
