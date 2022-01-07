; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_cp_init_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_cp_init_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_19__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.drm_file = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64 }

@RADEON_CP_RB_BASE = common dso_local global i32 0, align 4
@RADEON_CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@RADEON_CP_RB_RPTR = common dso_local global i32 0, align 4
@RADEON_CP_RB_WPTR = common dso_local global i32 0, align 4
@RADEON_CP_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@RADEON_CP_RB_CNTL = common dso_local global i32 0, align 4
@RADEON_SCRATCH_ADDR = common dso_local global i32 0, align 4
@RADEON_SCRATCH_REG_OFFSET = common dso_local global i32 0, align 4
@RADEON_SCRATCH_UMSK = common dso_local global i32 0, align 4
@RADEON_LAST_FRAME_REG = common dso_local global i32 0, align 4
@RADEON_LAST_DISPATCH_REG = common dso_local global i32 0, align 4
@RADEON_LAST_CLEAR_REG = common dso_local global i32 0, align 4
@RADEON_ISYNC_CNTL = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY2D_IDLE3D = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY3D_IDLE2D = common dso_local global i32 0, align 4
@RADEON_ISYNC_WAIT_IDLEGUI = common dso_local global i32 0, align 4
@RADEON_ISYNC_CPSCRATCH_IDLEGUI = common dso_local global i32 0, align 4
@RADEON_BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_24__*, %struct.drm_file*)* @radeon_cp_init_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cp_init_ring_buffer(%struct.drm_device* %0, %struct.TYPE_24__* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_radeon_master_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %19, -65536
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = or i32 %20, %24
  %26 = call i32 @radeon_write_fb_location(%struct.TYPE_24__* %15, i32 %25)
  br label %27

27:                                               ; preds = %14, %3
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %32, %37
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add i64 %38, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @RADEON_CP_RB_BASE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @RADEON_WRITE(i32 %45, i32 %46)
  %48 = load i32, i32* @RADEON_CP_RB_WPTR_DELAY, align 4
  %49 = call i32 @RADEON_WRITE(i32 %48, i32 0)
  %50 = load i32, i32* @RADEON_CP_RB_RPTR, align 4
  %51 = call i32 @RADEON_READ(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @RADEON_CP_RB_WPTR, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @RADEON_WRITE(i32 %52, i32 %53)
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @SET_RING_HEAD(%struct.TYPE_24__* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @RADEON_CP_RB_RPTR_ADDR, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %67, %72
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add i64 %73, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @RADEON_WRITE(i32 %62, i32 %79)
  %81 = load i32, i32* @RADEON_CP_RB_CNTL, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 18
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 8
  %92 = or i32 %86, %91
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %92, %96
  %98 = call i32 @RADEON_WRITE(i32 %81, i32 %97)
  %99 = load i32, i32* @RADEON_SCRATCH_ADDR, align 4
  %100 = load i32, i32* @RADEON_CP_RB_RPTR_ADDR, align 4
  %101 = call i32 @RADEON_READ(i32 %100)
  %102 = load i32, i32* @RADEON_SCRATCH_REG_OFFSET, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @RADEON_WRITE(i32 %99, i32 %103)
  %105 = load i32, i32* @RADEON_SCRATCH_UMSK, align 4
  %106 = call i32 @RADEON_WRITE(i32 %105, i32 7)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = call i32 @radeon_enable_bm(%struct.TYPE_24__* %107)
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = call i32 @RADEON_SCRATCHOFF(i32 0)
  %111 = call i32 @radeon_write_ring_rptr(%struct.TYPE_24__* %109, i32 %110, i32 0)
  %112 = load i32, i32* @RADEON_LAST_FRAME_REG, align 4
  %113 = call i32 @RADEON_WRITE(i32 %112, i32 0)
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %115 = call i32 @RADEON_SCRATCHOFF(i32 1)
  %116 = call i32 @radeon_write_ring_rptr(%struct.TYPE_24__* %114, i32 %115, i32 0)
  %117 = load i32, i32* @RADEON_LAST_DISPATCH_REG, align 4
  %118 = call i32 @RADEON_WRITE(i32 %117, i32 0)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = call i32 @RADEON_SCRATCHOFF(i32 2)
  %121 = call i32 @radeon_write_ring_rptr(%struct.TYPE_24__* %119, i32 %120, i32 0)
  %122 = load i32, i32* @RADEON_LAST_CLEAR_REG, align 4
  %123 = call i32 @RADEON_WRITE(i32 %122, i32 0)
  %124 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %125 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %124, i32 0, i32 0
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %127, align 8
  store %struct.drm_radeon_master_private* %128, %struct.drm_radeon_master_private** %7, align 8
  %129 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %130 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %129, i32 0, i32 0
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = icmp ne %struct.TYPE_23__* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %27
  %134 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %135 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %134, i32 0, i32 0
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %139 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %138, i32 0, i32 0
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %143 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %142, i32 0, i32 0
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %133, %27
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %148 = call i32 @radeon_do_wait_for_idle(%struct.TYPE_24__* %147)
  %149 = load i32, i32* @RADEON_ISYNC_CNTL, align 4
  %150 = load i32, i32* @RADEON_ISYNC_ANY2D_IDLE3D, align 4
  %151 = load i32, i32* @RADEON_ISYNC_ANY3D_IDLE2D, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @RADEON_ISYNC_WAIT_IDLEGUI, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @RADEON_ISYNC_CPSCRATCH_IDLEGUI, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @RADEON_WRITE(i32 %149, i32 %156)
  ret void
}

declare dso_local i32 @radeon_write_fb_location(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @SET_RING_HEAD(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @radeon_enable_bm(%struct.TYPE_24__*) #1

declare dso_local i32 @radeon_write_ring_rptr(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @RADEON_SCRATCHOFF(i32) #1

declare dso_local i32 @radeon_do_wait_for_idle(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
