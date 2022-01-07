; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_spuravoid_pllupdate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_spuravoid_pllupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_p1div = private unnamed_addr constant [3 x i32] [i32 1, i32 5, i32 5], align 4
@__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_ndiv = private unnamed_addr constant [3 x i32] [i32 48, i32 246, i32 252], align 4
@BCMA_CC_PLLCTL_ADDR = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL0 = common dso_local global i32 0, align 4
@BCMA_CC_PLLCTL_DATA = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC0_P1DIV_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC0_P1DIV_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL2 = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL1 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL3 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL4 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unknown spuravoidance settings for chip 0x%04X, not changing PLL\0A\00", align 1
@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_pmu_spuravoid_pllupdate(%struct.bcma_drv_cc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x i32]* @__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_p1div to i8*), i64 12, i1 false)
  %11 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_ndiv to i8*), i64 12, i1 false)
  %12 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %13 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.bcma_bus*, %struct.bcma_bus** %15, align 8
  store %struct.bcma_bus* %16, %struct.bcma_bus** %9, align 8
  %17 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %248 [
    i32 129, label %21
    i32 130, label %21
    i32 128, label %21
    i32 137, label %93
    i32 134, label %93
    i32 141, label %122
    i32 140, label %122
    i32 136, label %122
    i32 133, label %164
    i32 131, label %164
    i32 132, label %164
    i32 139, label %206
    i32 138, label %206
    i32 135, label %206
  ]

21:                                               ; preds = %2, %2, %2
  %22 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br label %39

39:                                               ; preds = %33, %27, %21
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ %38, %33 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 6, i32 0
  store i32 %42, i32* %6, align 4
  %43 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %44 = load i32, i32* @BCMA_CC_PLLCTL_ADDR, align 4
  %45 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %43, i32 %44, i32 %47)
  %49 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %50 = load i32, i32* @BCMA_CC_PLLCTL_DATA, align 4
  %51 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC0_P1DIV_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC0_P1DIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %65 = load i32, i32* @BCMA_CC_PLLCTL_DATA, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %64, i32 %65, i32 %66)
  %68 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %69 = load i32, i32* @BCMA_CC_PLLCTL_ADDR, align 4
  %70 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %68, i32 %69, i32 %72)
  %74 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %75 = load i32, i32* @BCMA_CC_PLLCTL_DATA, align 4
  %76 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %90 = load i32, i32* @BCMA_CC_PLLCTL_DATA, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %89, i32 %90, i32 %91)
  store i32 1024, i32* %5, align 4
  br label %255

93:                                               ; preds = %2, %2
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %98 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %99 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %97, i32 %98, i32 290455572)
  %100 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %101 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %102 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %100, i32 %101, i32 264243720)
  br label %121

103:                                              ; preds = %93
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %108 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %109 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %107, i32 %108, i32 290455572)
  %110 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %111 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %112 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %110, i32 %111, i32 257952264)
  br label %120

113:                                              ; preds = %103
  %114 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %115 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %116 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %114, i32 %115, i32 286261268)
  %117 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %118 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %119 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %117, i32 %118, i32 50334216)
  br label %120

120:                                              ; preds = %113, %106
  br label %121

121:                                              ; preds = %120, %96
  store i32 1024, i32* %5, align 4
  br label %255

122:                                              ; preds = %2, %2, %2
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %127 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %128 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %126, i32 %127, i32 290455568)
  %129 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %130 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %131 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %129, i32 %130, i32 789510)
  %132 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %133 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %134 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %132, i32 %133, i32 257952264)
  %135 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %136 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %137 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %135, i32 %136, i32 0)
  %138 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %139 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %140 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %138, i32 %139, i32 536996128)
  %141 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %142 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %143 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %141, i32 %142, i32 -2004318187)
  br label %163

144:                                              ; preds = %122
  %145 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %146 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %147 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %145, i32 %146, i32 286261264)
  %148 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %149 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %150 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %148, i32 %149, i32 789510)
  %151 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %152 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %153 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %151, i32 %152, i32 50334216)
  %154 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %155 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %156 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %154, i32 %155, i32 0)
  %157 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %158 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %159 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %157, i32 %158, i32 536872384)
  %160 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %161 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %162 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %160, i32 %161, i32 -2004318187)
  br label %163

163:                                              ; preds = %144, %125
  store i32 1024, i32* %5, align 4
  br label %255

164:                                              ; preds = %2, %2, %2
  %165 = load i32, i32* %4, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %169 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %170 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %168, i32 %169, i32 290455648)
  %171 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %172 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %173 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %171, i32 %172, i32 135007238)
  %174 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %175 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %176 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %174, i32 %175, i32 257949696)
  %177 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %178 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %179 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %177, i32 %178, i32 0)
  %180 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %181 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %182 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %180, i32 %181, i32 536996132)
  %183 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %184 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %185 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %183, i32 %184, i32 -2004318187)
  br label %205

186:                                              ; preds = %164
  %187 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %188 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %189 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %187, i32 %188, i32 286261344)
  %190 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %191 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %192 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %190, i32 %191, i32 135007238)
  %193 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %194 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %195 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %193, i32 %194, i32 50331648)
  %196 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %197 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %198 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %196, i32 %197, i32 0)
  %199 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %200 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %201 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %199, i32 %200, i32 536872384)
  %202 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %203 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %204 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %202, i32 %203, i32 -2004318187)
  br label %205

205:                                              ; preds = %186, %167
  store i32 1536, i32* %5, align 4
  br label %255

206:                                              ; preds = %2, %2, %2
  %207 = load i32, i32* %4, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %228

209:                                              ; preds = %206
  %210 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %211 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %212 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %210, i32 %211, i32 17825812)
  %213 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %214 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %215 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %213, i32 %214, i32 67898374)
  %216 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %217 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %218 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %216, i32 %217, i32 51644936)
  %219 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %220 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %221 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %219, i32 %220, i32 3355443)
  %222 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %223 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %224 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %222, i32 %223, i32 539764768)
  %225 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %226 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %227 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %225, i32 %226, i32 -2004318187)
  br label %247

228:                                              ; preds = %206
  %229 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %230 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %231 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %229, i32 %230, i32 286261268)
  %232 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %233 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %234 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %232, i32 %233, i32 67898374)
  %235 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %236 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %237 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %235, i32 %236, i32 50334216)
  %238 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %239 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %240 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %238, i32 %239, i32 0)
  %241 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %242 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %243 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %241, i32 %242, i32 536872384)
  %244 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %245 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %246 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %244, i32 %245, i32 -2004318187)
  br label %247

247:                                              ; preds = %228, %209
  store i32 1024, i32* %5, align 4
  br label %255

248:                                              ; preds = %2
  %249 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %250 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %251 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @bcma_err(%struct.bcma_bus* %249, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %253)
  br label %255

255:                                              ; preds = %248, %247, %205, %163, %121, %39
  %256 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %257 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %258 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %256, i32 %257)
  %259 = load i32, i32* %5, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %5, align 4
  %261 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %262 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %261, i32 %262, i32 %263)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #2

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #2

declare dso_local i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc*, i32, i32) #2

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
