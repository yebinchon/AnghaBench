; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_cp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_cp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_ME_INITIALIZE = common dso_local global i32 0, align 4
@CP_ME_CNTL = common dso_local global i32 0, align 4
@evergreen_default_size = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@evergreen_default_state = common dso_local global i32* null, align 8
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @evergreen_cp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_cp_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %4, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %15 = call i32 @radeon_ring_lock(%struct.radeon_device* %13, %struct.radeon_ring* %14, i32 7)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %129

22:                                               ; preds = %1
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %24 = load i32, i32* @PACKET3_ME_INITIALIZE, align 4
  %25 = call i32 @PACKET3(i32 %24, i32 5)
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %28 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 1)
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %30 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 0)
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %31, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %40 = call i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32 1)
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 0)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 0)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %48 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %46, %struct.radeon_ring* %47)
  store i32 255, i32* %7, align 4
  %49 = load i32, i32* @CP_ME_CNTL, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %54 = load i32, i32* @evergreen_default_size, align 4
  %55 = add nsw i32 %54, 19
  %56 = call i32 @radeon_ring_lock(%struct.radeon_device* %52, %struct.radeon_ring* %53, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %22
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %129

63:                                               ; preds = %22
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %65 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %66 = call i32 @PACKET3(i32 %65, i32 0)
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %66)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %69 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %83, %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @evergreen_default_size, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %77 = load i32*, i32** @evergreen_default_state, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %88 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %89 = call i32 @PACKET3(i32 %88, i32 0)
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 %89)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %92 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %93 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 %92)
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %95 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %96 = call i32 @PACKET3(i32 %95, i32 0)
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %99 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 0)
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %100, i32 -1073582336)
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 0)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 0)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 0)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 -1073516800)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %111 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 3012)
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %113 = call i32 @radeon_ring_write(%struct.radeon_ring* %112, i32 -1)
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %114, i32 -1)
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %116, i32 -1)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %119 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 -1073583872)
  %120 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %120, i32 790)
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %123 = call i32 @radeon_ring_write(%struct.radeon_ring* %122, i32 14)
  %124 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %125 = call i32 @radeon_ring_write(%struct.radeon_ring* %124, i32 16)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %128 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %126, %struct.radeon_ring* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %86, %59, %18
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
