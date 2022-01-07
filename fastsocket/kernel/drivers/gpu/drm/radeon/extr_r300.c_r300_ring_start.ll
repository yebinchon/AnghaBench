; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_r300_ring_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_r300_ring_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@R300_ENABLE_TILING = common dso_local global i32 0, align 4
@R300_TILE_SIZE_16 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R300 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R420_3P = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R420 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_RV350 = common dso_local global i32 0, align 4
@RADEON_ISYNC_CNTL = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY2D_IDLE3D = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY3D_IDLE2D = common dso_local global i32 0, align 4
@RADEON_ISYNC_WAIT_IDLEGUI = common dso_local global i32 0, align 4
@RADEON_ISYNC_CPSCRATCH_IDLEGUI = common dso_local global i32 0, align 4
@R300_GB_TILE_CONFIG = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@R300_PIPE_AUTO_CONFIG = common dso_local global i32 0, align 4
@R300_GB_SELECT = common dso_local global i32 0, align 4
@R300_GB_ENABLE = common dso_local global i32 0, align 4
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DC_FLUSH = common dso_local global i32 0, align 4
@R300_RB3D_DC_FREE = common dso_local global i32 0, align 4
@R300_RB3D_ZCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_ZC_FLUSH = common dso_local global i32 0, align 4
@R300_ZC_FREE = common dso_local global i32 0, align 4
@R300_GB_AA_CONFIG = common dso_local global i32 0, align 4
@R300_GB_MSPOS0 = common dso_local global i32 0, align 4
@R300_MS_X0_SHIFT = common dso_local global i32 0, align 4
@R300_MS_Y0_SHIFT = common dso_local global i32 0, align 4
@R300_MS_X1_SHIFT = common dso_local global i32 0, align 4
@R300_MS_Y1_SHIFT = common dso_local global i32 0, align 4
@R300_MS_X2_SHIFT = common dso_local global i32 0, align 4
@R300_MS_Y2_SHIFT = common dso_local global i32 0, align 4
@R300_MSBD0_Y_SHIFT = common dso_local global i32 0, align 4
@R300_MSBD0_X_SHIFT = common dso_local global i32 0, align 4
@R300_GB_MSPOS1 = common dso_local global i32 0, align 4
@R300_MS_X3_SHIFT = common dso_local global i32 0, align 4
@R300_MS_Y3_SHIFT = common dso_local global i32 0, align 4
@R300_MS_X4_SHIFT = common dso_local global i32 0, align 4
@R300_MS_Y4_SHIFT = common dso_local global i32 0, align 4
@R300_MS_X5_SHIFT = common dso_local global i32 0, align 4
@R300_MS_Y5_SHIFT = common dso_local global i32 0, align 4
@R300_MSBD1_SHIFT = common dso_local global i32 0, align 4
@R300_GA_ENHANCE = common dso_local global i32 0, align 4
@R300_GA_DEADLOCK_CNTL = common dso_local global i32 0, align 4
@R300_GA_FASTSYNC_CNTL = common dso_local global i32 0, align 4
@R300_GA_POLY_MODE = common dso_local global i32 0, align 4
@R300_FRONT_PTYPE_TRIANGE = common dso_local global i32 0, align 4
@R300_BACK_PTYPE_TRIANGE = common dso_local global i32 0, align 4
@R300_GA_ROUND_MODE = common dso_local global i32 0, align 4
@R300_GEOMETRY_ROUND_NEAREST = common dso_local global i32 0, align 4
@R300_COLOR_ROUND_NEAREST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r300_ring_start(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %7 = load i32, i32* @R300_ENABLE_TILING, align 4
  %8 = load i32, i32* @R300_TILE_SIZE_16, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %26 [
    i32 2, label %13
    i32 3, label %17
    i32 4, label %21
    i32 1, label %25
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @R300_PIPE_COUNT_R300, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* @R300_PIPE_COUNT_R420_3P, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @R300_PIPE_COUNT_R420, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %2, %25
  %27 = load i32, i32* @R300_PIPE_COUNT_RV350, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21, %17, %13
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %33 = call i32 @radeon_ring_lock(%struct.radeon_device* %31, %struct.radeon_ring* %32, i32 64)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %222

37:                                               ; preds = %30
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = load i32, i32* @RADEON_ISYNC_CNTL, align 4
  %40 = call i32 @PACKET0(i32 %39, i32 0)
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %43 = load i32, i32* @RADEON_ISYNC_ANY2D_IDLE3D, align 4
  %44 = load i32, i32* @RADEON_ISYNC_ANY3D_IDLE2D, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RADEON_ISYNC_WAIT_IDLEGUI, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RADEON_ISYNC_CPSCRATCH_IDLEGUI, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %49)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %52 = load i32, i32* @R300_GB_TILE_CONFIG, align 4
  %53 = call i32 @PACKET0(i32 %52, i32 0)
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %53)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %56)
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %59 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %60 = call i32 @PACKET0(i32 %59, i32 0)
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %58, i32 %60)
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %63 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %64 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %68 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %69 = call i32 @PACKET0(i32 %68, i32 0)
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %69)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %72 = load i32, i32* @R300_PIPE_AUTO_CONFIG, align 4
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 %72)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %75 = load i32, i32* @R300_GB_SELECT, align 4
  %76 = call i32 @PACKET0(i32 %75, i32 0)
  %77 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %76)
  %78 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %78, i32 0)
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %81 = load i32, i32* @R300_GB_ENABLE, align 4
  %82 = call i32 @PACKET0(i32 %81, i32 0)
  %83 = call i32 @radeon_ring_write(%struct.radeon_ring* %80, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 0)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %87 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %88 = call i32 @PACKET0(i32 %87, i32 0)
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %88)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %91 = load i32, i32* @R300_RB3D_DC_FLUSH, align 4
  %92 = load i32, i32* @R300_RB3D_DC_FREE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %93)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %96 = load i32, i32* @R300_RB3D_ZCACHE_CTLSTAT, align 4
  %97 = call i32 @PACKET0(i32 %96, i32 0)
  %98 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 %97)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %100 = load i32, i32* @R300_ZC_FLUSH, align 4
  %101 = load i32, i32* @R300_ZC_FREE, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %99, i32 %102)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %105 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %106 = call i32 @PACKET0(i32 %105, i32 0)
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 %106)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %109 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %110 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %114 = load i32, i32* @R300_GB_AA_CONFIG, align 4
  %115 = call i32 @PACKET0(i32 %114, i32 0)
  %116 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %115)
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %118 = call i32 @radeon_ring_write(%struct.radeon_ring* %117, i32 0)
  %119 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %120 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %121 = call i32 @PACKET0(i32 %120, i32 0)
  %122 = call i32 @radeon_ring_write(%struct.radeon_ring* %119, i32 %121)
  %123 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %124 = load i32, i32* @R300_RB3D_DC_FLUSH, align 4
  %125 = load i32, i32* @R300_RB3D_DC_FREE, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @radeon_ring_write(%struct.radeon_ring* %123, i32 %126)
  %128 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %129 = load i32, i32* @R300_RB3D_ZCACHE_CTLSTAT, align 4
  %130 = call i32 @PACKET0(i32 %129, i32 0)
  %131 = call i32 @radeon_ring_write(%struct.radeon_ring* %128, i32 %130)
  %132 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %133 = load i32, i32* @R300_ZC_FLUSH, align 4
  %134 = load i32, i32* @R300_ZC_FREE, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @radeon_ring_write(%struct.radeon_ring* %132, i32 %135)
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %138 = load i32, i32* @R300_GB_MSPOS0, align 4
  %139 = call i32 @PACKET0(i32 %138, i32 0)
  %140 = call i32 @radeon_ring_write(%struct.radeon_ring* %137, i32 %139)
  %141 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %142 = load i32, i32* @R300_MS_X0_SHIFT, align 4
  %143 = shl i32 6, %142
  %144 = load i32, i32* @R300_MS_Y0_SHIFT, align 4
  %145 = shl i32 6, %144
  %146 = or i32 %143, %145
  %147 = load i32, i32* @R300_MS_X1_SHIFT, align 4
  %148 = shl i32 6, %147
  %149 = or i32 %146, %148
  %150 = load i32, i32* @R300_MS_Y1_SHIFT, align 4
  %151 = shl i32 6, %150
  %152 = or i32 %149, %151
  %153 = load i32, i32* @R300_MS_X2_SHIFT, align 4
  %154 = shl i32 6, %153
  %155 = or i32 %152, %154
  %156 = load i32, i32* @R300_MS_Y2_SHIFT, align 4
  %157 = shl i32 6, %156
  %158 = or i32 %155, %157
  %159 = load i32, i32* @R300_MSBD0_Y_SHIFT, align 4
  %160 = shl i32 6, %159
  %161 = or i32 %158, %160
  %162 = load i32, i32* @R300_MSBD0_X_SHIFT, align 4
  %163 = shl i32 6, %162
  %164 = or i32 %161, %163
  %165 = call i32 @radeon_ring_write(%struct.radeon_ring* %141, i32 %164)
  %166 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %167 = load i32, i32* @R300_GB_MSPOS1, align 4
  %168 = call i32 @PACKET0(i32 %167, i32 0)
  %169 = call i32 @radeon_ring_write(%struct.radeon_ring* %166, i32 %168)
  %170 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %171 = load i32, i32* @R300_MS_X3_SHIFT, align 4
  %172 = shl i32 6, %171
  %173 = load i32, i32* @R300_MS_Y3_SHIFT, align 4
  %174 = shl i32 6, %173
  %175 = or i32 %172, %174
  %176 = load i32, i32* @R300_MS_X4_SHIFT, align 4
  %177 = shl i32 6, %176
  %178 = or i32 %175, %177
  %179 = load i32, i32* @R300_MS_Y4_SHIFT, align 4
  %180 = shl i32 6, %179
  %181 = or i32 %178, %180
  %182 = load i32, i32* @R300_MS_X5_SHIFT, align 4
  %183 = shl i32 6, %182
  %184 = or i32 %181, %183
  %185 = load i32, i32* @R300_MS_Y5_SHIFT, align 4
  %186 = shl i32 6, %185
  %187 = or i32 %184, %186
  %188 = load i32, i32* @R300_MSBD1_SHIFT, align 4
  %189 = shl i32 6, %188
  %190 = or i32 %187, %189
  %191 = call i32 @radeon_ring_write(%struct.radeon_ring* %170, i32 %190)
  %192 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %193 = load i32, i32* @R300_GA_ENHANCE, align 4
  %194 = call i32 @PACKET0(i32 %193, i32 0)
  %195 = call i32 @radeon_ring_write(%struct.radeon_ring* %192, i32 %194)
  %196 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %197 = load i32, i32* @R300_GA_DEADLOCK_CNTL, align 4
  %198 = load i32, i32* @R300_GA_FASTSYNC_CNTL, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @radeon_ring_write(%struct.radeon_ring* %196, i32 %199)
  %201 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %202 = load i32, i32* @R300_GA_POLY_MODE, align 4
  %203 = call i32 @PACKET0(i32 %202, i32 0)
  %204 = call i32 @radeon_ring_write(%struct.radeon_ring* %201, i32 %203)
  %205 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %206 = load i32, i32* @R300_FRONT_PTYPE_TRIANGE, align 4
  %207 = load i32, i32* @R300_BACK_PTYPE_TRIANGE, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @radeon_ring_write(%struct.radeon_ring* %205, i32 %208)
  %210 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %211 = load i32, i32* @R300_GA_ROUND_MODE, align 4
  %212 = call i32 @PACKET0(i32 %211, i32 0)
  %213 = call i32 @radeon_ring_write(%struct.radeon_ring* %210, i32 %212)
  %214 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %215 = load i32, i32* @R300_GEOMETRY_ROUND_NEAREST, align 4
  %216 = load i32, i32* @R300_COLOR_ROUND_NEAREST, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @radeon_ring_write(%struct.radeon_ring* %214, i32 %217)
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %221 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %219, %struct.radeon_ring* %220)
  br label %222

222:                                              ; preds = %37, %36
  ret void
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
