; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cp_init_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_cp_init_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_22__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.drm_file = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i64 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i32 0, align 4
@R600_GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@R600_SOFT_RESET_CP = common dso_local global i32 0, align 4
@R600_CP_RB_CNTL = common dso_local global i32 0, align 4
@RADEON_RB_NO_UPDATE = common dso_local global i32 0, align 4
@R600_CP_SEM_WAIT_TIMER = common dso_local global i32 0, align 4
@R600_CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@R600_RB_NO_UPDATE = common dso_local global i32 0, align 4
@R600_RB_RPTR_WR_ENA = common dso_local global i32 0, align 4
@R600_CP_RB_RPTR_WR = common dso_local global i32 0, align 4
@R600_CP_RB_WPTR = common dso_local global i32 0, align 4
@R600_CP_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@R600_CP_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@R600_CP_RB_BASE = common dso_local global i32 0, align 4
@R600_CP_ME_CNTL = common dso_local global i32 0, align 4
@R600_CP_DEBUG = common dso_local global i32 0, align 4
@R600_SCRATCH_REG_OFFSET = common dso_local global i64 0, align 8
@R600_SCRATCH_ADDR = common dso_local global i32 0, align 4
@R600_SCRATCH_UMSK = common dso_local global i32 0, align 4
@R600_LAST_FRAME_REG = common dso_local global i32 0, align 4
@R600_LAST_DISPATCH_REG = common dso_local global i32 0, align 4
@R600_LAST_CLEAR_REG = common dso_local global i32 0, align 4
@R600_BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@RADEON_BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_25__*, %struct.drm_file*)* @r600_cp_init_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_cp_init_ring_buffer(%struct.drm_device* %0, %struct.TYPE_25__* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_radeon_master_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CHIP_RV770, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = call i32 @r700_gfx_init(%struct.drm_device* %19, %struct.TYPE_25__* %20)
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = call i32 @r600_gfx_init(%struct.drm_device* %23, %struct.TYPE_25__* %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @R600_GRBM_SOFT_RESET, align 4
  %28 = load i32, i32* @R600_SOFT_RESET_CP, align 4
  %29 = call i32 @RADEON_WRITE(i32 %27, i32 %28)
  %30 = load i32, i32* @R600_GRBM_SOFT_RESET, align 4
  %31 = call i32 @RADEON_READ(i32 %30)
  %32 = call i32 @mdelay(i32 15)
  %33 = load i32, i32* @R600_GRBM_SOFT_RESET, align 4
  %34 = call i32 @RADEON_WRITE(i32 %33, i32 0)
  %35 = load i32, i32* @R600_CP_RB_CNTL, align 4
  %36 = load i32, i32* @RADEON_RB_NO_UPDATE, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 8
  %42 = or i32 %36, %41
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %42, %46
  %48 = call i32 @RADEON_WRITE(i32 %35, i32 %47)
  %49 = load i32, i32* @R600_CP_SEM_WAIT_TIMER, align 4
  %50 = call i32 @RADEON_WRITE(i32 %49, i32 0)
  %51 = load i32, i32* @R600_CP_RB_WPTR_DELAY, align 4
  %52 = call i32 @RADEON_WRITE(i32 %51, i32 0)
  %53 = load i32, i32* @R600_CP_RB_CNTL, align 4
  %54 = load i32, i32* @R600_RB_NO_UPDATE, align 4
  %55 = load i32, i32* @R600_RB_RPTR_WR_ENA, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 8
  %62 = or i32 %56, %61
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %62, %66
  %68 = call i32 @RADEON_WRITE(i32 %53, i32 %67)
  %69 = load i32, i32* @R600_CP_RB_RPTR_WR, align 4
  %70 = call i32 @RADEON_WRITE(i32 %69, i32 0)
  %71 = load i32, i32* @R600_CP_RB_WPTR, align 4
  %72 = call i32 @RADEON_WRITE(i32 %71, i32 0)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = call i32 @SET_RING_HEAD(%struct.TYPE_25__* %73, i32 0)
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %82, %87
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %88, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @R600_CP_RB_RPTR_ADDR, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, -4
  %98 = call i32 @RADEON_WRITE(i32 %95, i32 %97)
  %99 = load i32, i32* @R600_CP_RB_RPTR_ADDR_HI, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @upper_32_bits(i32 %100)
  %102 = call i32 @RADEON_WRITE(i32 %99, i32 %101)
  %103 = load i32, i32* @R600_CP_RB_CNTL, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %107, 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %108, %112
  %114 = call i32 @RADEON_WRITE(i32 %103, i32 %113)
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %121 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %119, %124
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %125, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @R600_CP_RB_BASE, align 4
  %133 = load i32, i32* %8, align 4
  %134 = ashr i32 %133, 8
  %135 = call i32 @RADEON_WRITE(i32 %132, i32 %134)
  %136 = load i32, i32* @R600_CP_ME_CNTL, align 4
  %137 = call i32 @RADEON_WRITE(i32 %136, i32 255)
  %138 = load i32, i32* @R600_CP_DEBUG, align 4
  %139 = call i32 @RADEON_WRITE(i32 %138, i32 402653184)
  %140 = load i32, i32* @R600_CP_RB_RPTR_ADDR, align 4
  %141 = call i32 @RADEON_READ(i32 %140)
  %142 = and i32 %141, -4
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* @R600_CP_RB_RPTR_ADDR_HI, align 4
  %144 = call i32 @RADEON_READ(i32 %143)
  %145 = shl i32 %144, 32
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load i64, i64* @R600_SCRATCH_REG_OFFSET, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = ashr i32 %153, 8
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @R600_SCRATCH_ADDR, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @RADEON_WRITE(i32 %156, i32 %157)
  %159 = load i32, i32* @R600_SCRATCH_UMSK, align 4
  %160 = call i32 @RADEON_WRITE(i32 %159, i32 7)
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %162 = call i32 @radeon_enable_bm(%struct.TYPE_25__* %161)
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %164 = call i32 @R600_SCRATCHOFF(i32 0)
  %165 = call i32 @radeon_write_ring_rptr(%struct.TYPE_25__* %163, i32 %164, i32 0)
  %166 = load i32, i32* @R600_LAST_FRAME_REG, align 4
  %167 = call i32 @RADEON_WRITE(i32 %166, i32 0)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = call i32 @R600_SCRATCHOFF(i32 1)
  %170 = call i32 @radeon_write_ring_rptr(%struct.TYPE_25__* %168, i32 %169, i32 0)
  %171 = load i32, i32* @R600_LAST_DISPATCH_REG, align 4
  %172 = call i32 @RADEON_WRITE(i32 %171, i32 0)
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %174 = call i32 @R600_SCRATCHOFF(i32 2)
  %175 = call i32 @radeon_write_ring_rptr(%struct.TYPE_25__* %173, i32 %174, i32 0)
  %176 = load i32, i32* @R600_LAST_CLEAR_REG, align 4
  %177 = call i32 @RADEON_WRITE(i32 %176, i32 0)
  %178 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %179 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %178, i32 0, i32 0
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %181, align 8
  store %struct.drm_radeon_master_private* %182, %struct.drm_radeon_master_private** %7, align 8
  %183 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %184 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %183, i32 0, i32 0
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %184, align 8
  %186 = icmp ne %struct.TYPE_24__* %185, null
  br i1 %186, label %187, label %200

187:                                              ; preds = %26
  %188 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %189 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %188, i32 0, i32 0
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  %192 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %193 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %192, i32 0, i32 0
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %7, align 8
  %197 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %196, i32 0, i32 0
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %187, %26
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %202 = call i32 @r600_do_wait_for_idle(%struct.TYPE_25__* %201)
  ret void
}

declare dso_local i32 @r700_gfx_init(%struct.drm_device*, %struct.TYPE_25__*) #1

declare dso_local i32 @r600_gfx_init(%struct.drm_device*, %struct.TYPE_25__*) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @SET_RING_HEAD(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_enable_bm(%struct.TYPE_25__*) #1

declare dso_local i32 @radeon_write_ring_rptr(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @R600_SCRATCHOFF(i32) #1

declare dso_local i32 @r600_do_wait_for_idle(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
