; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.isr_statistics }
%struct.isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CSR_INT = common dso_local global i32 0, align 4
@CSR_INT_BIT_HW_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Hardware error detected.  Restarting.\0A\00", align 1
@CSR_INT_BIT_SCD = common dso_local global i32 0, align 4
@CSR_INT_BIT_ALIVE = common dso_local global i32 0, align 4
@CSR_INT_BIT_RF_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"RF_KILL bit toggled to %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"disable radio\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"enable radio\00", align 1
@STATUS_RFKILL = common dso_local global i32 0, align 4
@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Rfkill while SYNC HCMD in flight\0A\00", align 1
@CSR_INT_BIT_CT_KILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Microcode CT kill error detected.\0A\00", align 1
@CSR_INT_BIT_SW_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Microcode SW error detected.  Restarting 0x%X.\0A\00", align 1
@CSR_INT_BIT_WAKEUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Wakeup interrupt\0A\00", align 1
@CSR_INT_BIT_FH_RX = common dso_local global i32 0, align 4
@CSR_INT_BIT_SW_RX = common dso_local global i32 0, align 4
@CSR_INT_BIT_RX_PERIODIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Rx interrupt\0A\00", align 1
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@CSR_FH_INT_RX_MASK = common dso_local global i32 0, align 4
@CSR_INT_PERIODIC_REG = common dso_local global i32 0, align 4
@CSR_INT_PERIODIC_DIS = common dso_local global i32 0, align 4
@CSR_INT_PERIODIC_ENA = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_TX = common dso_local global i32 0, align 4
@CSR_FH_INT_TX_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"uCode load interrupt\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Disabled INTA bits 0x%08x were pending\0A\00", align 1
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@IWL_DL_ISR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca %struct.isr_statistics*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.iwl_trans*
  store %struct.iwl_trans* %14, %struct.iwl_trans** %5, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %16 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %15)
  store %struct.iwl_trans_pcie* %16, %struct.iwl_trans_pcie** %6, align 8
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 9
  store %struct.isr_statistics* %18, %struct.isr_statistics** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 0
  %21 = call i32 @lock_map_acquire(i32* %20)
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %27 = load i32, i32* @CSR_INT, align 4
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = or i32 %30, %34
  %36 = call i32 @iwl_write32(%struct.iwl_trans* %26, i32 %27, i32 %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %2
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %52 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %54 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %53)
  %55 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %56 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %60 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %59)
  %61 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %337

64:                                               ; preds = %2
  %65 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %66 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %64
  %76 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %77 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %83 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_WARN(%struct.iwl_trans* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %85 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %89 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @iwl_op_mode_hw_rf_kill(i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %75
  %96 = load i32, i32* @STATUS_RFKILL, align 4
  %97 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %98 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %97, i32 0, i32 3
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %101 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %102 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %101, i32 0, i32 3
  %103 = call i64 @test_and_clear_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %107 = call i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %95
  %109 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %110 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %109, i32 0, i32 7
  %111 = call i32 @wake_up(i32* %110)
  br label %117

112:                                              ; preds = %75
  %113 = load i32, i32* @STATUS_RFKILL, align 4
  %114 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %115 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %114, i32 0, i32 3
  %116 = call i32 @clear_bit(i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %112, %108
  %118 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %64
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @CSR_INT_BIT_CT_KILL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %128 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %129 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %130 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @CSR_INT_BIT_CT_KILL, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %126, %121
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %146 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %150 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %149)
  %151 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %141, %136
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %196

159:                                              ; preds = %154
  %160 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %161 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %162 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %163 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %164 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %163, i32 0, i32 6
  %165 = call i32 @iwl_pcie_rxq_inc_wr_ptr(%struct.iwl_trans* %162, i32* %164)
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %185, %159
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %169 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %167, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %166
  %177 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %178 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %179 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %178, i32 0, i32 5
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = call i32 @iwl_pcie_txq_inc_wr_ptr(%struct.iwl_trans* %177, i32* %183)
  br label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %166

188:                                              ; preds = %166
  %189 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %190 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %194 = load i32, i32* %9, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %188, %154
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %199 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %202 = or i32 %200, %201
  %203 = and i32 %197, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %260

205:                                              ; preds = %196
  %206 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %207 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %210 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %211 = or i32 %209, %210
  %212 = and i32 %208, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %205
  %215 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %216 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* %9, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %9, align 4
  %220 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %221 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %222 = load i32, i32* @CSR_FH_INT_RX_MASK, align 4
  %223 = call i32 @iwl_write32(%struct.iwl_trans* %220, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %214, %205
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %224
  %230 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %231 = load i32, i32* %9, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %234 = load i32, i32* @CSR_INT, align 4
  %235 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %236 = call i32 @iwl_write32(%struct.iwl_trans* %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %229, %224
  %238 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %239 = load i32, i32* @CSR_INT_PERIODIC_REG, align 4
  %240 = load i32, i32* @CSR_INT_PERIODIC_DIS, align 4
  %241 = call i32 @iwl_write8(%struct.iwl_trans* %238, i32 %239, i32 %240)
  %242 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %243 = call i32 @iwl_pcie_rx_handle(%struct.iwl_trans* %242)
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %246 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %244, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %237
  %251 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %252 = load i32, i32* @CSR_INT_PERIODIC_REG, align 4
  %253 = load i32, i32* @CSR_INT_PERIODIC_ENA, align 4
  %254 = call i32 @iwl_write8(%struct.iwl_trans* %251, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %250, %237
  %256 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %257 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %255, %196
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %260
  %266 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %267 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %268 = load i32, i32* @CSR_FH_INT_TX_MASK, align 4
  %269 = call i32 @iwl_write32(%struct.iwl_trans* %266, i32 %267, i32 %268)
  %270 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %271 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %270, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %272 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %273 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  %276 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %277 = load i32, i32* %9, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %9, align 4
  %279 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %280 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %279, i32 0, i32 2
  store i32 1, i32* %280, align 8
  %281 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %282 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %281, i32 0, i32 4
  %283 = call i32 @wake_up(i32* %282)
  br label %284

284:                                              ; preds = %265, %260
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %9, align 4
  %287 = xor i32 %286, -1
  %288 = and i32 %285, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %284
  %291 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %9, align 4
  %294 = xor i32 %293, -1
  %295 = and i32 %292, %294
  %296 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %291, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %295)
  %297 = load %struct.isr_statistics*, %struct.isr_statistics** %7, align 8
  %298 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %290, %284
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %304 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = xor i32 %305, -1
  %307 = and i32 %302, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %301
  %310 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %313 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = xor i32 %314, -1
  %316 = and i32 %311, %315
  %317 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_WARN(%struct.iwl_trans* %310, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %316)
  br label %318

318:                                              ; preds = %309, %301
  %319 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %320 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %321 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %320, i32 0, i32 3
  %322 = call i64 @test_bit(i32 %319, i32* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %326 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %325)
  br label %336

327:                                              ; preds = %318
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %334 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %333)
  br label %335

335:                                              ; preds = %332, %327
  br label %336

336:                                              ; preds = %335, %324
  br label %337

337:                                              ; preds = %336, %50
  %338 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %339 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %338, i32 0, i32 0
  %340 = call i32 @lock_map_release(i32* %339)
  %341 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %341
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_op_mode_hw_rf_kill(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_RF_KILL(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_pcie_rxq_inc_wr_ptr(%struct.iwl_trans*, i32*) #1

declare dso_local i32 @iwl_pcie_txq_inc_wr_ptr(%struct.iwl_trans*, i32*) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_rx_handle(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @lock_map_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
