; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32 }
%struct.radeon_ib = type { i64, i32, i32 }

@PACKET3_MODE_CONTROL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_MEM_WRITE = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %15 = load i32, i32* @PACKET3_MODE_CONTROL, align 4
  %16 = call i32 @PACKET3(i32 %15, i32 0)
  %17 = call i32 @radeon_ring_write(%struct.radeon_ring* %14, i32 %16)
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %19 = call i32 @radeon_ring_write(%struct.radeon_ring* %18, i32 1)
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 3
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %32 = call i32 @PACKET3(i32 %31, i32 1)
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %39 = sub nsw i32 %37, %38
  %40 = ashr i32 %39, 2
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %43)
  br label %81

45:                                               ; preds = %2
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 5
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %6, align 4
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = load i32, i32* @PACKET3_MEM_WRITE, align 4
  %59 = call i32 @PACKET3(i32 %58, i32 3)
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -4
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @upper_32_bits(i32 %70)
  %72 = and i32 %71, 255
  %73 = or i32 %72, 262144
  %74 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %73)
  %75 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @radeon_ring_write(%struct.radeon_ring* %75, i32 %76)
  %78 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %78, i32 0)
  br label %80

80:                                               ; preds = %51, %45
  br label %81

81:                                               ; preds = %80, %24
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %83 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %84 = call i32 @PACKET3(i32 %83, i32 2)
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %82, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %87 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, -4
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %93 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @upper_32_bits(i32 %95)
  %97 = and i32 %96, 255
  %98 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 %97)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %100 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %99, i32 %102)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
