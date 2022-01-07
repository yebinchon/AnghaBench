; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_bp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.bnx2x = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@bnx2x_sp_task = common dso_local global i32 0, align 4
@bnx2x_sp_rtnl_task = common dso_local global i32 0, align 4
@bnx2x_period_task = common dso_local global i32 0, align 4
@func_mb = common dso_local global %struct.TYPE_10__* null, align 8
@DRV_MSG_SEQ_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fw_seq 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FPGA detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"MCP disabled, must load devices in order!\0A\00", align 1
@NETIF_F_GRO = common dso_local global i32 0, align 4
@disable_tpa = common dso_local global i32 0, align 4
@TPA_ENABLE_FLAG = common dso_local global i32 0, align 4
@GRO_ENABLE_FLAG = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@dropless_fc = common dso_local global i32 0, align 4
@mrrs = common dso_local global i32 0, align 4
@MAX_TX_AVAIL = common dso_local global i32 0, align 4
@MAX_RX_AVAIL = common dso_local global i32 0, align 4
@BNX2X_BTR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@bnx2x_timer = common dso_local global i32 0, align 4
@dcbx_lldp_params_offset = common dso_local global i32 0, align 4
@dcbx_lldp_dcbx_stat_offset = common dso_local global i32 0, align 4
@BNX2X_DCBX_ENABLED_ON_NEG_ON = common dso_local global i32 0, align 4
@BNX2X_DCBX_ENABLED_OFF = common dso_local global i32 0, align 4
@FP_SB_MAX_E1x = common dso_local global i32 0, align 4
@FP_SB_MAX_E2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"bp->min_msix_vec_cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_bp(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 24
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 23
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 22
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 21
  %18 = call i32 @sema_init(i32* %17, i32 1)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 20
  %21 = load i32, i32* @bnx2x_sp_task, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 19
  %25 = load i32, i32* @bnx2x_sp_rtnl_task, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 18
  %29 = load i32, i32* @bnx2x_period_task, align 4
  %30 = call i32 @INIT_DELAYED_WORK(i32* %28, i32 %29)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = call i64 @IS_PF(%struct.bnx2x* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = call i32 @bnx2x_get_hwinfo(%struct.bnx2x* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %314

41:                                               ; preds = %34
  br label %49

42:                                               ; preds = %1
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 16
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @eth_zero_addr(i32 %47)
  br label %49

49:                                               ; preds = %42, %41
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = call i32 @bnx2x_set_modes_bitmap(%struct.bnx2x* %50)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = call i32 @bnx2x_alloc_mem_bp(%struct.bnx2x* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %314

58:                                               ; preds = %49
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = call i32 @bnx2x_read_fwinfo(%struct.bnx2x* %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = call i32 @BP_FUNC(%struct.bnx2x* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = call i64 @IS_PF(%struct.bnx2x* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %58
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = call i64 @BP_NOMCP(%struct.bnx2x* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %66
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @func_mb, align 8
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SHMEM_RD(%struct.bnx2x* %71, i32 %77)
  %79 = load i32, i32* @DRV_MSG_SEQ_NUMBER_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %88 = call i32 @bnx2x_prev_unload(%struct.bnx2x* %87)
  br label %89

89:                                               ; preds = %70, %66, %58
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = call i64 @CHIP_REV_IS_FPGA(%struct.bnx2x* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 17
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %89
  %100 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %101 = call i64 @BP_NOMCP(%struct.bnx2x* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 17
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %103, %99
  %113 = load i32, i32* @NETIF_F_GRO, align 4
  %114 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %115 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %114, i32 0, i32 16
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @disable_tpa, align 4
  %121 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %122 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %124 = call i64 @IS_MF_STORAGE_SD(%struct.bnx2x* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %112
  %127 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %128 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %126, %112
  %131 = phi i1 [ true, %112 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %134 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %130
  %142 = load i32, i32* @TPA_ENABLE_FLAG, align 4
  %143 = load i32, i32* @GRO_ENABLE_FLAG, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %147 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @NETIF_F_LRO, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %153 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %152, i32 0, i32 16
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %171

158:                                              ; preds = %130
  %159 = load i32, i32* @TPA_ENABLE_FLAG, align 4
  %160 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %161 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @NETIF_F_LRO, align 4
  %165 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %166 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %165, i32 0, i32 16
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %158, %141
  %172 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %173 = call i64 @CHIP_IS_E1(%struct.bnx2x* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %177 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %176, i32 0, i32 3
  store i32 0, i32* %177, align 4
  br label %185

178:                                              ; preds = %171
  %179 = load i32, i32* @dropless_fc, align 4
  %180 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %181 = call i32 @bnx2x_get_dropless_info(%struct.bnx2x* %180)
  %182 = or i32 %179, %181
  %183 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %184 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %178, %175
  %186 = load i32, i32* @mrrs, align 4
  %187 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %188 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %187, i32 0, i32 15
  store i32 %186, i32* %188, align 8
  %189 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %190 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %195

193:                                              ; preds = %185
  %194 = load i32, i32* @MAX_TX_AVAIL, align 4
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi i32 [ 0, %192 ], [ %194, %193 ]
  %197 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %198 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %197, i32 0, i32 14
  store i32 %196, i32* %198, align 4
  %199 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %200 = call i64 @IS_VF(%struct.bnx2x* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load i32, i32* @MAX_RX_AVAIL, align 4
  %204 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %205 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %204, i32 0, i32 13
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %195
  %207 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %208 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %207, i32 0, i32 4
  store i32 1, i32* %208, align 8
  %209 = load i32, i32* @BNX2X_BTR, align 4
  %210 = sdiv i32 50, %209
  %211 = load i32, i32* @BNX2X_BTR, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %214 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @BNX2X_BTR, align 4
  %216 = sdiv i32 25, %215
  %217 = load i32, i32* @BNX2X_BTR, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %220 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %219, i32 0, i32 6
  store i32 %218, i32* %220, align 8
  %221 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %222 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %206
  %225 = load i32, i32* @HZ, align 4
  %226 = mul nsw i32 5, %225
  br label %229

227:                                              ; preds = %206
  %228 = load i32, i32* @HZ, align 4
  br label %229

229:                                              ; preds = %227, %224
  %230 = phi i32 [ %226, %224 ], [ %228, %227 ]
  %231 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %232 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 4
  %233 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %234 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %233, i32 0, i32 12
  %235 = call i32 @init_timer(%struct.TYPE_9__* %234)
  %236 = load i32, i32* @jiffies, align 4
  %237 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %238 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %242 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %241, i32 0, i32 12
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  %244 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %245 = ptrtoint %struct.bnx2x* %244 to i64
  %246 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %247 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %246, i32 0, i32 12
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  store i64 %245, i64* %248, align 8
  %249 = load i32, i32* @bnx2x_timer, align 4
  %250 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %251 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %250, i32 0, i32 12
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  store i32 %249, i32* %252, align 8
  %253 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %254 = load i32, i32* @dcbx_lldp_params_offset, align 4
  %255 = call i64 @SHMEM2_HAS(%struct.bnx2x* %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %278

257:                                              ; preds = %229
  %258 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %259 = load i32, i32* @dcbx_lldp_dcbx_stat_offset, align 4
  %260 = call i64 @SHMEM2_HAS(%struct.bnx2x* %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %257
  %263 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %264 = load i32, i32* @dcbx_lldp_params_offset, align 4
  %265 = call i64 @SHMEM2_RD(%struct.bnx2x* %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %262
  %268 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %269 = load i32, i32* @dcbx_lldp_dcbx_stat_offset, align 4
  %270 = call i64 @SHMEM2_RD(%struct.bnx2x* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %274 = load i32, i32* @BNX2X_DCBX_ENABLED_ON_NEG_ON, align 4
  %275 = call i32 @bnx2x_dcbx_set_state(%struct.bnx2x* %273, i32 1, i32 %274)
  %276 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %277 = call i32 @bnx2x_dcbx_init_params(%struct.bnx2x* %276)
  br label %282

278:                                              ; preds = %267, %262, %257, %229
  %279 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %280 = load i32, i32* @BNX2X_DCBX_ENABLED_OFF, align 4
  %281 = call i32 @bnx2x_dcbx_set_state(%struct.bnx2x* %279, i32 0, i32 %280)
  br label %282

282:                                              ; preds = %278, %272
  %283 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %284 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = load i32, i32* @FP_SB_MAX_E1x, align 4
  %288 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %289 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %288, i32 0, i32 11
  store i32 %287, i32* %289, align 4
  br label %294

290:                                              ; preds = %282
  %291 = load i32, i32* @FP_SB_MAX_E2, align 4
  %292 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %293 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %292, i32 0, i32 11
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %290, %286
  %295 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %296 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %295, i32 0, i32 8
  store i32 1, i32* %296, align 8
  %297 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %298 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %302 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %301, i32 0, i32 9
  store i32 3, i32* %302, align 4
  br label %306

303:                                              ; preds = %294
  %304 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %305 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %304, i32 0, i32 9
  store i32 2, i32* %305, align 4
  br label %306

306:                                              ; preds = %303, %300
  %307 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %308 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %309)
  %311 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %312 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %311, i32 0, i32 10
  store i32 1, i32* %312, align 8
  %313 = load i32, i32* %5, align 4
  store i32 %313, i32* %2, align 4
  br label %314

314:                                              ; preds = %306, %56, %39
  %315 = load i32, i32* %2, align 4
  ret i32 %315
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_hwinfo(%struct.bnx2x*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @bnx2x_set_modes_bitmap(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_alloc_mem_bp(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_fwinfo(%struct.bnx2x*) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @bnx2x_prev_unload(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bnx2x*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @IS_MF_STORAGE_SD(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_dropless_info(%struct.bnx2x*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @init_timer(%struct.TYPE_9__*) #1

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i64 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_dcbx_set_state(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_dcbx_init_params(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
