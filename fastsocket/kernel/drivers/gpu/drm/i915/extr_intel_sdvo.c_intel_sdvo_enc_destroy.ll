; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_enc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_enc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.intel_sdvo = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @intel_sdvo_enc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_enc_destroy(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.intel_sdvo*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.intel_sdvo* @to_intel_sdvo(%struct.drm_encoder* %4)
  store %struct.intel_sdvo* %5, %struct.intel_sdvo** %3, align 8
  %6 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %15 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @drm_mode_destroy(i32 %13, i32* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %20 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %19, i32 0, i32 0
  %21 = call i32 @i2c_del_adapter(i32* %20)
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %23 = call i32 @intel_encoder_destroy(%struct.drm_encoder* %22)
  ret void
}

declare dso_local %struct.intel_sdvo* @to_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_destroy(i32, i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @intel_encoder_destroy(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
