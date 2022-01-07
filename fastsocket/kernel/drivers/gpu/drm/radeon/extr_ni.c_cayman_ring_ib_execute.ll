; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PACKET3_MODE_CONTROL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@CP_COHER_CNTL2 = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
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
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 3
  %29 = add nsw i32 %28, 4
  %30 = add nsw i32 %29, 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %32 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %33 = call i32 @PACKET3(i32 %32, i32 1)
  %34 = call i32 @radeon_ring_write(%struct.radeon_ring* %31, i32 %33)
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %40, 2
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 %44)
  br label %46

46:                                               ; preds = %24, %2
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %48 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %49 = call i32 @PACKET3(i32 %48, i32 2)
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 %49)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -4
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %59 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @upper_32_bits(i32 %60)
  %62 = and i32 %61, 255
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %62)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %65 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = icmp ne %struct.TYPE_2__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %46
  %73 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %74 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 24
  br label %80

79:                                               ; preds = %46
  br label %80

80:                                               ; preds = %79, %72
  %81 = phi i32 [ %78, %72 ], [ 0, %79 ]
  %82 = or i32 %67, %81
  %83 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %85 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %86 = call i32 @PACKET3(i32 %85, i32 1)
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 %86)
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %89 = load i32, i32* @CP_COHER_CNTL2, align 4
  %90 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %91 = sub nsw i32 %89, %90
  %92 = ashr i32 %91, 2
  %93 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 %92)
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %95 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %96 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = icmp ne %struct.TYPE_2__* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %80
  %100 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %106

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %99
  %107 = phi i32 [ %104, %99 ], [ 0, %105 ]
  %108 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %107)
  %109 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %110 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %111 = call i32 @PACKET3(i32 %110, i32 3)
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %109, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %114 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %115 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %116)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %119 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 -1)
  %120 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %121 = call i32 @radeon_ring_write(%struct.radeon_ring* %120, i32 0)
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %123 = call i32 @radeon_ring_write(%struct.radeon_ring* %122, i32 10)
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
