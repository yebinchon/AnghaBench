; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_set_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.ch7006_priv = type { %struct.ch7006_encoder_params }
%struct.ch7006_encoder_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i8*)* @ch7006_encoder_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7006_encoder_set_config(%struct.drm_encoder* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ch7006_priv*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %6)
  store %struct.ch7006_priv* %7, %struct.ch7006_priv** %5, align 8
  %8 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %9 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %8, i32 0, i32 0
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ch7006_encoder_params*
  %12 = bitcast %struct.ch7006_encoder_params* %9 to i8*
  %13 = bitcast %struct.ch7006_encoder_params* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  ret void
}

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
