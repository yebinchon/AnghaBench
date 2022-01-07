; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_enc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_enc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.intel_dvo = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @intel_dvo_enc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dvo_enc_destroy(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.intel_dvo*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.intel_dvo* @enc_to_intel_dvo(%struct.drm_encoder* %4)
  store %struct.intel_dvo* %5, %struct.intel_dvo** %3, align 8
  %6 = load %struct.intel_dvo*, %struct.intel_dvo** %3, align 8
  %7 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %10, align 8
  %12 = icmp ne i32 (%struct.TYPE_4__*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.intel_dvo*, %struct.intel_dvo** %3, align 8
  %15 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %18, align 8
  %20 = load %struct.intel_dvo*, %struct.intel_dvo** %3, align 8
  %21 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %20, i32 0, i32 1
  %22 = call i32 %19(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.intel_dvo*, %struct.intel_dvo** %3, align 8
  %25 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %29 = call i32 @intel_encoder_destroy(%struct.drm_encoder* %28)
  ret void
}

declare dso_local %struct.intel_dvo* @enc_to_intel_dvo(%struct.drm_encoder*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @intel_encoder_destroy(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
