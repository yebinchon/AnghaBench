; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_fence_ring_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_fence_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_VC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE_EOP = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_EVENT_TS = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_EVENT = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@WAIT_UNTIL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@WAIT_3D_IDLE_bit = common dso_local global i32 0, align 4
@WAIT_3D_IDLECLEAN_bit = common dso_local global i32 0, align 4
@CP_INT_STATUS = common dso_local global i32 0, align 4
@RB_INT_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_fence_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 2
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %31 = call i32 @PACKET3(i32 %30, i32 3)
  %32 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %31)
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %34 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %35 = load i32, i32* @PACKET3_VC_ACTION_ENA, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 %38)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 -1)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 0)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 10)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %48 = call i32 @PACKET3(i32 %47, i32 4)
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 %48)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %51 = load i32, i32* @CACHE_FLUSH_AND_INV_EVENT_TS, align 4
  %52 = call i32 @EVENT_TYPE(i32 %51)
  %53 = call i32 @EVENT_INDEX(i32 5)
  %54 = or i32 %52, %53
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @upper_32_bits(i32 %60)
  %62 = and i32 %61, 255
  %63 = call i32 @DATA_SEL(i32 1)
  %64 = or i32 %62, %63
  %65 = call i32 @INT_SEL(i32 2)
  %66 = or i32 %64, %65
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 %66)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %69 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %70 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %71)
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %74 = call i32 @radeon_ring_write(%struct.radeon_ring* %73, i32 0)
  br label %148

75:                                               ; preds = %2
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %77 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %78 = call i32 @PACKET3(i32 %77, i32 3)
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %78)
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %81 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %82 = load i32, i32* @PACKET3_VC_ACTION_ENA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @radeon_ring_write(%struct.radeon_ring* %80, i32 %85)
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 -1)
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %89, i32 0)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 10)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %94 = load i32, i32* @PACKET3_EVENT_WRITE, align 4
  %95 = call i32 @PACKET3(i32 %94, i32 0)
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 %95)
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %98 = load i32, i32* @CACHE_FLUSH_AND_INV_EVENT, align 4
  %99 = call i32 @EVENT_TYPE(i32 %98)
  %100 = call i32 @EVENT_INDEX(i32 0)
  %101 = or i32 %99, %100
  %102 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 %101)
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %104 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %105 = call i32 @PACKET3(i32 %104, i32 1)
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %103, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %108 = load i32, i32* @WAIT_UNTIL, align 4
  %109 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %110 = sub nsw i32 %108, %109
  %111 = ashr i32 %110, 2
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %114 = load i32, i32* @WAIT_3D_IDLE_bit, align 4
  %115 = load i32, i32* @WAIT_3D_IDLECLEAN_bit, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %116)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %119 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %120 = call i32 @PACKET3(i32 %119, i32 1)
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 %120)
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %127 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %133 = sub nsw i32 %131, %132
  %134 = ashr i32 %133, 2
  %135 = call i32 @radeon_ring_write(%struct.radeon_ring* %122, i32 %134)
  %136 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %137 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @radeon_ring_write(%struct.radeon_ring* %136, i32 %139)
  %141 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %142 = load i32, i32* @CP_INT_STATUS, align 4
  %143 = call i32 @PACKET0(i32 %142, i32 0)
  %144 = call i32 @radeon_ring_write(%struct.radeon_ring* %141, i32 %143)
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %146 = load i32, i32* @RB_INT_STAT, align 4
  %147 = call i32 @radeon_ring_write(%struct.radeon_ring* %145, i32 %146)
  br label %148

148:                                              ; preds = %75, %19
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
