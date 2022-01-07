; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__, i32, i32, %struct.TYPE_4__, %struct.vpd_params }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@F_CQ = common dso_local global i32 0, align 4
@MAX_RX_COALESCING_LEN = common dso_local global i32 0, align 4
@A_PCIX_CFG = common dso_local global i32 0, align 4
@F_DMASTOPEN = common dso_local global i32 0, align 4
@F_CLIDECEN = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@A_ULPTX_CONFIG = common dso_local global i32 0, align 4
@F_CFG_CQE_SOP_MASK = common dso_local global i32 0, align 4
@A_PM1_RX_CFG = common dso_local global i32 0, align 4
@A_PM1_RX_MODE = common dso_local global i32 0, align 4
@A_PM1_TX_MODE = common dso_local global i32 0, align 4
@A_PL_RST = common dso_local global i32 0, align 4
@F_FATALPERREN = common dso_local global i32 0, align 4
@A_T3DBG_GPIO_ACT_LOW = common dso_local global i32 0, align 4
@A_CIM_HOST_ACC_DATA = common dso_local global i32 0, align 4
@A_CIM_BOOT_CFG = common dso_local global i32 0, align 4
@FW_FLASH_BOOT_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"uP initialization timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_init_hw(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpd_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store %struct.vpd_params* %13, %struct.vpd_params** %8, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = call i32 @calibrate_xgm_t3b(%struct.adapter* %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = call i64 @calibrate_xgm(%struct.adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %231

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %30 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %28
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = call i32 @partition_mem(%struct.adapter* %34, i32* %37)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 4
  %41 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %42 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %45 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @mc7_init(i32* %40, i64 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %33
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 3
  %52 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %53 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %56 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @mc7_init(i32* %51, i64 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %49
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 2
  %63 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %64 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %67 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @mc7_init(i32* %62, i64 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %60
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 1
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.adapter*, %struct.adapter** %3, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @t3_mc5_init(i32* %73, i32 %78, i32 %83, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71, %60, %49, %33
  br label %231

92:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 32
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.adapter*, %struct.adapter** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @F_CQ, align 4
  %100 = call i64 @clear_sge_ctxt(%struct.adapter* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %231

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %93

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %28
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = call i64 @tp_init(%struct.adapter* %109, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %231

116:                                              ; preds = %108
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MAX_RX_COALESCING_LEN, align 4
  %124 = call i32 @min(i32 %122, i32 %123)
  %125 = call i32 @t3_tp_set_coalescing_size(%struct.adapter* %117, i32 %124, i32 1)
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = getelementptr inbounds %struct.adapter, %struct.adapter* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @min(i32 %131, i32 16384)
  %133 = call i32 @t3_tp_set_max_rxsize(%struct.adapter* %126, i32 %132)
  %134 = load %struct.adapter*, %struct.adapter** %3, align 8
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = call i32 @ulp_config(%struct.adapter* %134, i32* %137)
  %139 = load %struct.adapter*, %struct.adapter** %3, align 8
  %140 = call i64 @is_pcie(%struct.adapter* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %116
  %143 = load %struct.adapter*, %struct.adapter** %3, align 8
  %144 = call i32 @config_pcie(%struct.adapter* %143)
  br label %152

145:                                              ; preds = %116
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = load i32, i32* @A_PCIX_CFG, align 4
  %148 = load i32, i32* @F_DMASTOPEN, align 4
  %149 = load i32, i32* @F_CLIDECEN, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @t3_set_reg_field(%struct.adapter* %146, i32 %147, i32 0, i32 %150)
  br label %152

152:                                              ; preds = %145, %142
  %153 = load %struct.adapter*, %struct.adapter** %3, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @T3_REV_C, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = load i32, i32* @A_ULPTX_CONFIG, align 4
  %162 = load i32, i32* @F_CFG_CQE_SOP_MASK, align 4
  %163 = call i32 @t3_set_reg_field(%struct.adapter* %160, i32 %161, i32 0, i32 %162)
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.adapter*, %struct.adapter** %3, align 8
  %166 = load i32, i32* @A_PM1_RX_CFG, align 4
  %167 = call i32 @t3_write_reg(%struct.adapter* %165, i32 %166, i32 -1)
  %168 = load %struct.adapter*, %struct.adapter** %3, align 8
  %169 = load i32, i32* @A_PM1_RX_MODE, align 4
  %170 = call i32 @t3_write_reg(%struct.adapter* %168, i32 %169, i32 0)
  %171 = load %struct.adapter*, %struct.adapter** %3, align 8
  %172 = load i32, i32* @A_PM1_TX_MODE, align 4
  %173 = call i32 @t3_write_reg(%struct.adapter* %171, i32 %172, i32 0)
  %174 = load %struct.adapter*, %struct.adapter** %3, align 8
  %175 = load %struct.adapter*, %struct.adapter** %3, align 8
  %176 = getelementptr inbounds %struct.adapter, %struct.adapter* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @chan_init_hw(%struct.adapter* %174, i32 %178)
  %180 = load %struct.adapter*, %struct.adapter** %3, align 8
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = call i32 @t3_sge_init(%struct.adapter* %180, %struct.TYPE_6__* %183)
  %185 = load %struct.adapter*, %struct.adapter** %3, align 8
  %186 = load i32, i32* @A_PL_RST, align 4
  %187 = load i32, i32* @F_FATALPERREN, align 4
  %188 = call i32 @t3_set_reg_field(%struct.adapter* %185, i32 %186, i32 0, i32 %187)
  %189 = load %struct.adapter*, %struct.adapter** %3, align 8
  %190 = load i32, i32* @A_T3DBG_GPIO_ACT_LOW, align 4
  %191 = load %struct.adapter*, %struct.adapter** %3, align 8
  %192 = call i32 @calc_gpio_intr(%struct.adapter* %191)
  %193 = call i32 @t3_write_reg(%struct.adapter* %189, i32 %190, i32 %192)
  %194 = load %struct.adapter*, %struct.adapter** %3, align 8
  %195 = load i32, i32* @A_CIM_HOST_ACC_DATA, align 4
  %196 = load %struct.vpd_params*, %struct.vpd_params** %8, align 8
  %197 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @t3_write_reg(%struct.adapter* %194, i32 %195, i32 %200)
  %202 = load %struct.adapter*, %struct.adapter** %3, align 8
  %203 = load i32, i32* @A_CIM_BOOT_CFG, align 4
  %204 = load i32, i32* @FW_FLASH_BOOT_ADDR, align 4
  %205 = ashr i32 %204, 2
  %206 = call i32 @V_BOOTADDR(i32 %205)
  %207 = call i32 @t3_write_reg(%struct.adapter* %202, i32 %203, i32 %206)
  %208 = load %struct.adapter*, %struct.adapter** %3, align 8
  %209 = load i32, i32* @A_CIM_BOOT_CFG, align 4
  %210 = call i64 @t3_read_reg(%struct.adapter* %208, i32 %209)
  store i32 100, i32* %6, align 4
  br label %211

211:                                              ; preds = %222, %164
  %212 = call i32 @msleep(i32 20)
  br label %213

213:                                              ; preds = %211
  %214 = load %struct.adapter*, %struct.adapter** %3, align 8
  %215 = load i32, i32* @A_CIM_HOST_ACC_DATA, align 4
  %216 = call i64 @t3_read_reg(%struct.adapter* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br label %222

222:                                              ; preds = %218, %213
  %223 = phi i1 [ false, %213 ], [ %221, %218 ]
  br i1 %223, label %211, label %224

224:                                              ; preds = %222
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load %struct.adapter*, %struct.adapter** %3, align 8
  %229 = call i32 @CH_ERR(%struct.adapter* %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %231

230:                                              ; preds = %224
  store i32 0, i32* %5, align 4
  br label %231

231:                                              ; preds = %230, %227, %115, %102, %91, %26
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @calibrate_xgm_t3b(%struct.adapter*) #1

declare dso_local i64 @calibrate_xgm(%struct.adapter*) #1

declare dso_local i32 @partition_mem(%struct.adapter*, i32*) #1

declare dso_local i64 @mc7_init(i32*, i64, i32) #1

declare dso_local i64 @t3_mc5_init(i32*, i32, i32, i32) #1

declare dso_local i64 @clear_sge_ctxt(%struct.adapter*, i32, i32) #1

declare dso_local i64 @tp_init(%struct.adapter*, i32*) #1

declare dso_local i32 @t3_tp_set_coalescing_size(%struct.adapter*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @t3_tp_set_max_rxsize(%struct.adapter*, i32) #1

declare dso_local i32 @ulp_config(%struct.adapter*, i32*) #1

declare dso_local i64 @is_pcie(%struct.adapter*) #1

declare dso_local i32 @config_pcie(%struct.adapter*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @chan_init_hw(%struct.adapter*, i32) #1

declare dso_local i32 @t3_sge_init(%struct.adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @calc_gpio_intr(%struct.adapter*) #1

declare dso_local i32 @V_BOOTADDR(i32) #1

declare dso_local i64 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
