; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_audio.c_radeon_dig_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_audio.c_radeon_dig_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @radeon_dig_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dig_encoder(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %6 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %5)
  store %struct.radeon_encoder* %6, %struct.radeon_encoder** %4, align 8
  %7 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 133, label %10
    i32 131, label %10
    i32 134, label %10
    i32 132, label %10
    i32 137, label %10
    i32 136, label %10
    i32 138, label %10
    i32 130, label %10
    i32 135, label %10
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
