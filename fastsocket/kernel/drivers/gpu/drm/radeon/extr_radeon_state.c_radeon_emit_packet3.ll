; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_packet3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_emit_packet3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Packet verification failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.TYPE_4__*)* @radeon_emit_packet3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_emit_packet3(%struct.drm_device* %0, %struct.drm_file* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @RING_LOCALS, align 4
  %15 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = call i32 @radeon_check_and_fixup_packet3(i32* %16, %struct.drm_file* %17, %struct.TYPE_4__* %18, i32* %9)
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @BEGIN_RING(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @OUT_RING_DRM_BUFFER(i32 %29, i32 %30)
  %32 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @radeon_check_and_fixup_packet3(i32*, %struct.drm_file*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
