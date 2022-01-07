; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_irq_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_irq_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.ipw_fw_error*, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ipw_fw_error = type { i32 }

@IPW_INTA_RW = common dso_local global i32 0, align 4
@IPW_INTA_MASK_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TASKLET INTA == 0xFFFFFFFF\0A\00", align 1
@IPW_INTA_MASK_ALL = common dso_local global i32 0, align 4
@IPW_INTA_BIT_RX_TRANSFER = common dso_local global i32 0, align 4
@IPW_INTA_BIT_TX_CMD_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Command completed.\0A\00", align 1
@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@IPW_INTA_BIT_TX_QUEUE_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"TX_QUEUE_1\0A\00", align 1
@IPW_INTA_BIT_TX_QUEUE_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"TX_QUEUE_2\0A\00", align 1
@IPW_INTA_BIT_TX_QUEUE_3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"TX_QUEUE_3\0A\00", align 1
@IPW_INTA_BIT_TX_QUEUE_4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"TX_QUEUE_4\0A\00", align 1
@IPW_INTA_BIT_STATUS_CHANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"STATUS_CHANGE\0A\00", align 1
@IPW_INTA_BIT_BEACON_PERIOD_EXPIRED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"TX_PERIOD_EXPIRED\0A\00", align 1
@IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"HOST_CMD_DONE\0A\00", align 1
@IPW_INTA_BIT_FW_INITIALIZATION_DONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"FW_INITIALIZATION_DONE\0A\00", align 1
@IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"PHY_OFF_DONE\0A\00", align 1
@IPW_INTA_BIT_RF_KILL_DONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"RF_KILL_DONE\0A\00", align 1
@STATUS_RF_KILL_HW = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPW_INTA_BIT_FATAL_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Firmware error detected.  Restarting.\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Sysfs 'error' log already exists.\0A\00", align 1
@ipw_debug_level = common dso_local global i32 0, align 4
@IPW_DL_FW_ERRORS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Sysfs 'error' log captured.\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Error allocating sysfs 'error' log.\0A\00", align 1
@STATUS_INIT = common dso_local global i32 0, align 4
@IPW_INTA_BIT_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"Parity error\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_irq_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_irq_tasklet(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw_fw_error*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 15
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = load i32, i32* @IPW_INTA_RW, align 4
  %15 = call i32 @ipw_read32(%struct.ipw_priv* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %17 = load i32, i32* @IPW_INTA_MASK_R, align 4
  %18 = call i32 @ipw_read32(%struct.ipw_priv* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 15
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @IPW_INTA_BIT_RX_TRANSFER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %48 = call i32 @ipw_rx(%struct.ipw_priv* %47)
  %49 = load i32, i32* @IPW_INTA_BIT_RX_TRANSFER, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %46, %23
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @IPW_INTA_BIT_TX_CMD_QUEUE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %60 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %61 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %60, i32 0, i32 14
  %62 = call i32 @ipw_queue_tx_reclaim(%struct.ipw_priv* %59, i32* %61, i32 -1)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %66 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %70 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %69, i32 0, i32 4
  %71 = call i32 @wake_up_interruptible(i32* %70)
  %72 = load i32, i32* @IPW_INTA_BIT_TX_CMD_QUEUE, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %57, %52
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = call i32 @IPW_DEBUG_TX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %84 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %83, i32 0, i32 13
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @ipw_queue_tx_reclaim(%struct.ipw_priv* %82, i32* %86, i32 0)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_1, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %80, %75
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_2, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = call i32 @IPW_DEBUG_TX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %99 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %100 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %99, i32 0, i32 13
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = call i32 @ipw_queue_tx_reclaim(%struct.ipw_priv* %98, i32* %102, i32 1)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_2, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %96, %91
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_3, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = call i32 @IPW_DEBUG_TX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %115 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %116 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %115, i32 0, i32 13
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = call i32 @ipw_queue_tx_reclaim(%struct.ipw_priv* %114, i32* %118, i32 2)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_3, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %112, %107
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_4, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = call i32 @IPW_DEBUG_TX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %130 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %131 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %132 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %131, i32 0, i32 13
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = call i32 @ipw_queue_tx_reclaim(%struct.ipw_priv* %130, i32* %134, i32 3)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @IPW_INTA_BIT_TX_QUEUE_4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %128, %123
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @IPW_INTA_BIT_STATUS_CHANGE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* @IPW_INTA_BIT_STATUS_CHANGE, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @IPW_INTA_BIT_BEACON_PERIOD_EXPIRED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32, i32* @IPW_INTA_BIT_BEACON_PERIOD_EXPIRED, align 4
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %166 = load i32, i32* @IPW_INTA_BIT_SLAVE_MODE_HOST_CMD_DONE, align 4
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %159
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %176 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %177 = load i32, i32* %5, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %186 = load i32, i32* @IPW_INTA_BIT_FW_CARD_DISABLE_PHY_OFF_DONE, align 4
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %184, %179
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @IPW_INTA_BIT_RF_KILL_DONE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %242

194:                                              ; preds = %189
  %195 = call i32 @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %196 = load i32, i32* @STATUS_RF_KILL_HW, align 4
  %197 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %198 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %202 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %201, i32 0, i32 5
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @wiphy_rfkill_set_hw_state(i32 %206, i32 1)
  %208 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %209 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %208, i32 0, i32 4
  %210 = call i32 @wake_up_interruptible(i32* %209)
  %211 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %212 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %216 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %220 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %219, i32 0, i32 12
  %221 = call i32 @cancel_delayed_work(i32* %220)
  %222 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %223 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %222, i32 0, i32 11
  %224 = call i32 @cancel_delayed_work(i32* %223)
  %225 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %226 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %225, i32 0, i32 10
  %227 = call i32 @cancel_delayed_work(i32* %226)
  %228 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %229 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %228, i32 0, i32 9
  %230 = call i32 @cancel_delayed_work(i32* %229)
  %231 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %232 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %231, i32 0, i32 8
  %233 = call i32 @schedule_work(i32* %232)
  %234 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %235 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %234, i32 0, i32 7
  %236 = load i32, i32* @HZ, align 4
  %237 = mul nsw i32 2, %236
  %238 = call i32 @schedule_delayed_work(i32* %235, i32 %237)
  %239 = load i32, i32* @IPW_INTA_BIT_RF_KILL_DONE, align 4
  %240 = load i32, i32* %5, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %194, %189
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @IPW_INTA_BIT_FATAL_ERROR, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %334

247:                                              ; preds = %242
  %248 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %249 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %250 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %249, i32 0, i32 6
  %251 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %250, align 8
  %252 = icmp ne %struct.ipw_fw_error* %251, null
  br i1 %252, label %253, label %269

253:                                              ; preds = %247
  %254 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %255 = load i32, i32* @ipw_debug_level, align 4
  %256 = load i32, i32* @IPW_DL_FW_ERRORS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %253
  %260 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %261 = call i8* @ipw_alloc_error_log(%struct.ipw_priv* %260)
  %262 = bitcast i8* %261 to %struct.ipw_fw_error*
  store %struct.ipw_fw_error* %262, %struct.ipw_fw_error** %8, align 8
  %263 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %264 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %8, align 8
  %265 = call i32 @ipw_dump_error_log(%struct.ipw_priv* %263, %struct.ipw_fw_error* %264)
  %266 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %8, align 8
  %267 = call i32 @kfree(%struct.ipw_fw_error* %266)
  br label %268

268:                                              ; preds = %259, %253
  br label %295

269:                                              ; preds = %247
  %270 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %271 = call i8* @ipw_alloc_error_log(%struct.ipw_priv* %270)
  %272 = bitcast i8* %271 to %struct.ipw_fw_error*
  %273 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %274 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %273, i32 0, i32 6
  store %struct.ipw_fw_error* %272, %struct.ipw_fw_error** %274, align 8
  %275 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %276 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %275, i32 0, i32 6
  %277 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %276, align 8
  %278 = icmp ne %struct.ipw_fw_error* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %269
  %280 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %283

281:                                              ; preds = %269
  %282 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  br label %283

283:                                              ; preds = %281, %279
  %284 = load i32, i32* @ipw_debug_level, align 4
  %285 = load i32, i32* @IPW_DL_FW_ERRORS, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %290 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %291 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %290, i32 0, i32 6
  %292 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %291, align 8
  %293 = call i32 @ipw_dump_error_log(%struct.ipw_priv* %289, %struct.ipw_fw_error* %292)
  br label %294

294:                                              ; preds = %288, %283
  br label %295

295:                                              ; preds = %294, %268
  %296 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %297 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %296, i32 0, i32 5
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %295
  %304 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %307 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %311 = call i32 @notify_wx_assoc_event(%struct.ipw_priv* %310)
  br label %312

312:                                              ; preds = %303, %295
  %313 = load i32, i32* @STATUS_INIT, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %316 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %320 = xor i32 %319, -1
  %321 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %322 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %326 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %325, i32 0, i32 4
  %327 = call i32 @wake_up_interruptible(i32* %326)
  %328 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %329 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %328, i32 0, i32 3
  %330 = call i32 @schedule_work(i32* %329)
  %331 = load i32, i32* @IPW_INTA_BIT_FATAL_ERROR, align 4
  %332 = load i32, i32* %5, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %5, align 4
  br label %334

334:                                              ; preds = %312, %242
  %335 = load i32, i32* %3, align 4
  %336 = load i32, i32* @IPW_INTA_BIT_PARITY_ERROR, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %341 = load i32, i32* @IPW_INTA_BIT_PARITY_ERROR, align 4
  %342 = load i32, i32* %5, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %5, align 4
  br label %344

344:                                              ; preds = %339, %334
  %345 = load i32, i32* %5, align 4
  %346 = load i32, i32* %3, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %354

348:                                              ; preds = %344
  %349 = load i32, i32* %3, align 4
  %350 = load i32, i32* %5, align 4
  %351 = xor i32 %350, -1
  %352 = and i32 %349, %351
  %353 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %348, %344
  %355 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %356 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %355, i32 0, i32 2
  %357 = load i64, i64* %6, align 8
  %358 = call i32 @spin_unlock_irqrestore(i32* %356, i64 %357)
  %359 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %360 = call i32 @ipw_enable_interrupts(%struct.ipw_priv* %359)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_WARNING(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipw_rx(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @ipw_queue_tx_reclaim(%struct.ipw_priv*, i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @IPW_DEBUG_TX(i8*) #1

declare dso_local i32 @IPW_DEBUG_RF_KILL(i8*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @IPW_DEBUG_FW(i8*) #1

declare dso_local i8* @ipw_alloc_error_log(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_dump_error_log(%struct.ipw_priv*, %struct.ipw_fw_error*) #1

declare dso_local i32 @kfree(%struct.ipw_fw_error*) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_ERROR(i8*, ...) #1

declare dso_local i32 @ipw_enable_interrupts(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
