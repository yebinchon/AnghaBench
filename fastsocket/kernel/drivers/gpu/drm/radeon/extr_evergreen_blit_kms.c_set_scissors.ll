; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_scissors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_scissors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PA_SC_SCREEN_SCISSOR_TL = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@PA_SC_GENERIC_SCISSOR_TL = common dso_local global i32 0, align 4
@PA_SC_WINDOW_SCISSOR_TL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32, i32)* @set_scissors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scissors(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %13, align 8
  %15 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i64 %15
  store %struct.radeon_ring* %16, %struct.radeon_ring** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHIP_CAYMAN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 2, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %33, %30
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %40 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %41 = call i32 @PACKET3(i32 %40, i32 2)
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %44 = load i32, i32* @PA_SC_SCREEN_SCISSOR_TL, align 4
  %45 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %46 = sub nsw i32 %44, %45
  %47 = ashr i32 %46, 2
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 0
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %51, %53
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %57, 0
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %61)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %64 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %65 = call i32 @PACKET3(i32 %64, i32 2)
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %68 = load i32, i32* @PA_SC_GENERIC_SCISSOR_TL, align 4
  %69 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %70 = sub nsw i32 %68, %69
  %71 = ashr i32 %70, 2
  %72 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %71)
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 %74, 0
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %75, %77
  %79 = or i32 %78, -2147483648
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %73, i32 %79)
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %82 = load i32, i32* %9, align 4
  %83 = shl i32 %82, 0
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %83, %85
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 %86)
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %89 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %90 = call i32 @PACKET3(i32 %89, i32 2)
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %93 = load i32, i32* @PA_SC_WINDOW_SCISSOR_TL, align 4
  %94 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %95 = sub nsw i32 %93, %94
  %96 = ashr i32 %95, 2
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 %96)
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 0
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 16
  %103 = or i32 %100, %102
  %104 = or i32 %103, -2147483648
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %98, i32 %104)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %107, 0
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 %111)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
