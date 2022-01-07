; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_irq_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_irq_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, %struct.TYPE_6__, i32, i32*, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CSR_INT = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@CSR49_FH_INT_RX_MASK = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_RX = common dso_local global i32 0, align 4
@CSR49_FH_INT_TX_MASK = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_TX = common dso_local global i32 0, align 4
@CSR_INT_BIT_HW_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Hardware error detected.  Restarting.\0A\00", align 1
@CSR_INT_BIT_SCD = common dso_local global i32 0, align 4
@CSR_INT_BIT_ALIVE = common dso_local global i32 0, align 4
@CSR_INT_BIT_RF_KILL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"RF_KILL bit toggled to %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"disable radio\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"enable radio\00", align 1
@S_RFKILL = common dso_local global i32 0, align 4
@CSR_INT_BIT_CT_KILL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Microcode CT kill error detected.\0A\00", align 1
@CSR_INT_BIT_SW_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Microcode SW error detected.  Restarting 0x%X.\0A\00", align 1
@CSR_INT_BIT_WAKEUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Wakeup interrupt\0A\00", align 1
@CSR_INT_BIT_SW_RX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"uCode load interrupt\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Disabled INTA bits 0x%08x were pending\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"   with FH49_INT = 0x%08x\0A\00", align 1
@S_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@IL_DL_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_irq_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_irq_tasklet(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 9
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %14 = load i32, i32* @CSR_INT, align 4
  %15 = call i32 @_il_rd(%struct.il_priv* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = load i32, i32* @CSR_INT, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @_il_wr(%struct.il_priv* %16, i32 %17, i32 %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %21 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %22 = call i32 @_il_rd(%struct.il_priv* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %24 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @_il_wr(%struct.il_priv* %23, i32 %24, i32 %25)
  %27 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 9
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CSR49_FH_INT_RX_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CSR49_FH_INT_TX_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %56 = call i32 @il_disable_interrupts(%struct.il_priv* %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %63 = call i32 @il_irq_handle_error(%struct.il_priv* %62)
  %64 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %287

67:                                               ; preds = %48
  %68 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %69 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  %79 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %80 = load i32, i32* @CSR_GP_CNTRL, align 4
  %81 = call i32 @_il_rd(%struct.il_priv* %79, i32 %80)
  %82 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %78
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %91 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load i32, i32* @S_RFKILL, align 4
  %101 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 2
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %111

104:                                              ; preds = %86
  %105 = load i32, i32* @S_RFKILL, align 4
  %106 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 2
  %108 = call i32 @clear_bit(i32 %105, i32* %107)
  %109 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %110 = call i32 @il_force_reset(%struct.il_priv* %109, i32 1)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %113 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %112, i32 0, i32 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @wiphy_rfkill_set_hw_state(i32 %116, i32 %117)
  %119 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %111, %67
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @CSR_INT_BIT_CT_KILL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %130 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* @CSR_INT_BIT_CT_KILL, align 4
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %127, %122
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %151 = call i32 @il_irq_handle_error(%struct.il_priv* %150)
  %152 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %153 = load i32, i32* %4, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %142, %137
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %155
  %161 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %162 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %163 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %164 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %163, i32 0, i32 7
  %165 = call i32 @il_rx_queue_update_write_ptr(%struct.il_priv* %162, i32* %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %182, %160
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %169 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %167, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %166
  %174 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %175 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %176 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %174, i32* %180)
  br label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %166

185:                                              ; preds = %166
  %186 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %187 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %192 = load i32, i32* %4, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %185, %155
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %197 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %203 = call i32 @il4965_rx_handle(%struct.il_priv* %202)
  %204 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %205 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %210 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* %4, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %201, %194
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %214
  %220 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %221 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %222 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %227 = load i32, i32* %4, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %4, align 4
  %229 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %230 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %229, i32 0, i32 0
  store i32 1, i32* %230, align 8
  %231 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %232 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %231, i32 0, i32 4
  %233 = call i32 @wake_up(i32* %232)
  br label %234

234:                                              ; preds = %219, %214
  %235 = load i32, i32* %3, align 4
  %236 = load i32, i32* %4, align 4
  %237 = xor i32 %236, -1
  %238 = and i32 %235, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %234
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* %4, align 4
  %243 = xor i32 %242, -1
  %244 = and i32 %241, %243
  %245 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %244)
  %246 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %247 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %240, %234
  %252 = load i32, i32* %3, align 4
  %253 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %254 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = xor i32 %255, -1
  %257 = and i32 %252, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %251
  %260 = load i32, i32* %3, align 4
  %261 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %262 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = xor i32 %263, -1
  %265 = and i32 %260, %264
  %266 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* %5, align 4
  %268 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %259, %251
  %270 = load i32, i32* @S_INT_ENABLED, align 4
  %271 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %272 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %271, i32 0, i32 2
  %273 = call i64 @test_bit(i32 %270, i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %277 = call i32 @il_enable_interrupts(%struct.il_priv* %276)
  br label %287

278:                                              ; preds = %269
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %285 = call i32 @il_enable_rfkill_int(%struct.il_priv* %284)
  br label %286

286:                                              ; preds = %283, %278
  br label %287

287:                                              ; preds = %53, %286, %275
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @il_irq_handle_error(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @il_force_reset(%struct.il_priv*, i32) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @D_ISR(i8*, ...) #1

declare dso_local i32 @il_rx_queue_update_write_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il_txq_update_write_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il4965_rx_handle(%struct.il_priv*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_enable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @il_enable_rfkill_int(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
