; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_audio.c_r600_audio_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_audio.c_r600_audio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r600_audio = type { i32, i32, i32, i32, i32 }
%struct.radeon_device = type { i32 }

@R600_AUDIO_RATE_BPS_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unknown bits per sample 0x%x, using 16\0A\00", align 1
@R600_AUDIO_STATUS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_audio_status(%struct.r600_audio* noalias sret %0, %struct.radeon_device* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %1, %struct.radeon_device** %3, align 8
  %5 = load i32, i32* @R600_AUDIO_RATE_BPS_CHANNEL, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 7
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 240
  %13 = ashr i32 %12, 4
  switch i32 %13, label %24 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
    i32 3, label %20
    i32 4, label %22
  ]

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 1
  store i32 8, i32* %15, align 4
  br label %31

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 1
  store i32 16, i32* %17, align 4
  br label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 1
  store i32 20, i32* %19, align 4
  br label %31

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 1
  store i32 24, i32* %21, align 4
  br label %31

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 1
  store i32 32, i32* %23, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 1
  store i32 16, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %22, %20, %18, %16, %14
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 16384
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 2
  store i32 44100, i32* %36, align 4
  br label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 2
  store i32 48000, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 11
  %42 = and i32 %41, 7
  %43 = add nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %4, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 7
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @R600_AUDIO_STATUS_BITS, align 4
  %55 = call i32 @RREG32(i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = getelementptr inbounds %struct.r600_audio, %struct.r600_audio* %0, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
