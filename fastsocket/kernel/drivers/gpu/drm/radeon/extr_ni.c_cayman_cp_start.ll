; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_cp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_cp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_ME_INITIALIZE = common dso_local global i32 0, align 4
@cayman_default_size = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@cayman_default_state = common dso_local global i32* null, align 8
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cayman_cp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cayman_cp_start(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %10
  store %struct.radeon_ring* %11, %struct.radeon_ring** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %14 = call i32 @radeon_ring_lock(%struct.radeon_device* %12, %struct.radeon_ring* %13, i32 7)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %127

21:                                               ; preds = %1
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %23 = load i32, i32* @PACKET3_ME_INITIALIZE, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 5)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 1)
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i32 0)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = call i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32 1)
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %39)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 0)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 0)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %47 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %45, %struct.radeon_ring* %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = call i32 @cayman_cp_enable(%struct.radeon_device* %48, i32 1)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %52 = load i32, i32* @cayman_default_size, align 4
  %53 = add nsw i32 %52, 19
  %54 = call i32 @radeon_ring_lock(%struct.radeon_device* %50, %struct.radeon_ring* %51, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %21
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %127

61:                                               ; preds = %21
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %63 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %64 = call i32 @PACKET3(i32 %63, i32 0)
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %64)
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %67 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %81, %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @cayman_default_size, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %75 = load i32*, i32** @cayman_default_state, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %69

84:                                               ; preds = %69
  %85 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %86 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %87 = call i32 @PACKET3(i32 %86, i32 0)
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %85, i32 %87)
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %90 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %89, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %93 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %94 = call i32 @PACKET3(i32 %93, i32 0)
  %95 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 %94)
  %96 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %96, i32 0)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %99 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 -1073582336)
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %101 = call i32 @radeon_ring_write(%struct.radeon_ring* %100, i32 0)
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %102, i32 0)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 0)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 -1073516800)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 3012)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %111 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 -1)
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %113 = call i32 @radeon_ring_write(%struct.radeon_ring* %112, i32 -1)
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %114, i32 -1)
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %116, i32 -1073583872)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %119 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 790)
  %120 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %120, i32 14)
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %123 = call i32 @radeon_ring_write(%struct.radeon_ring* %122, i32 16)
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %126 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %124, %struct.radeon_ring* %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %84, %57, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @cayman_cp_enable(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
