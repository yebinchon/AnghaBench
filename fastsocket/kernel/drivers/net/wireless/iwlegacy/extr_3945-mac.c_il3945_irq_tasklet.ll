; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_irq_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_irq_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CSR_INT = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@CSR39_FH_INT_RX_MASK = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_RX = common dso_local global i32 0, align 4
@CSR39_FH_INT_TX_MASK = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_TX = common dso_local global i32 0, align 4
@CSR_INT_BIT_HW_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Hardware error detected.  Restarting.\0A\00", align 1
@CSR_INT_BIT_SCD = common dso_local global i32 0, align 4
@CSR_INT_BIT_ALIVE = common dso_local global i32 0, align 4
@CSR_INT_BIT_SW_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Microcode SW error detected. Restarting 0x%X.\0A\00", align 1
@CSR_INT_BIT_WAKEUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Wakeup interrupt\0A\00", align 1
@CSR_INT_BIT_SW_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Tx interrupt\0A\00", align 1
@FH39_SRVC_CHNL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Disabled INTA bits 0x%08x were pending\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"   with inta_fh = 0x%08x\0A\00", align 1
@S_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@IL_DL_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_irq_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_irq_tasklet(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 5
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = load i32, i32* @CSR_INT, align 4
  %13 = call i32 @_il_rd(%struct.il_priv* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = load i32, i32* @CSR_INT, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @_il_wr(%struct.il_priv* %14, i32 %15, i32 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %20 = call i32 @_il_rd(%struct.il_priv* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @_il_wr(%struct.il_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 5
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CSR39_FH_INT_RX_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CSR39_FH_INT_TX_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = call i32 @il_disable_interrupts(%struct.il_priv* %53)
  %55 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %61 = call i32 @il_irq_handle_error(%struct.il_priv* %60)
  %62 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %230

65:                                               ; preds = %46
  %66 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %67 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %80 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %85 = call i32 @il_irq_handle_error(%struct.il_priv* %84)
  %86 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %76, %65
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %144

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %97 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 4
  %99 = call i32 @il_rx_queue_update_write_ptr(%struct.il_priv* %96, i32* %98)
  %100 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %101 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %100, i32* %104)
  %106 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %107 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %106, i32* %110)
  %112 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %113 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %114 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %112, i32* %116)
  %118 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %119 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %120 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %118, i32* %122)
  %124 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %125 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %126 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %124, i32* %128)
  %130 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %131 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %132 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5
  %135 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %130, i32* %134)
  %136 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %137 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %94, %89
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %147 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %153 = call i32 @il3945_rx_handle(%struct.il_priv* %152)
  %154 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %155 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %160 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %4, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %151, %144
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %164
  %170 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %172 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %177 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %178 = call i32 @_il_wr(%struct.il_priv* %176, i32 %177, i32 64)
  %179 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %180 = load i32, i32* @FH39_SRVC_CHNL, align 4
  %181 = call i32 @FH39_TCSR_CREDIT(i32 %180)
  %182 = call i32 @il_wr(%struct.il_priv* %179, i32 %181, i32 0)
  %183 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %169, %164
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %4, align 4
  %189 = xor i32 %188, -1
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* %4, align 4
  %195 = xor i32 %194, -1
  %196 = and i32 %193, %195
  %197 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  %198 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %199 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %192, %186
  %204 = load i32, i32* %3, align 4
  %205 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %206 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = xor i32 %207, -1
  %209 = and i32 %204, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %203
  %212 = load i32, i32* %3, align 4
  %213 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %214 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = xor i32 %215, -1
  %217 = and i32 %212, %216
  %218 = call i32 @IL_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @IL_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %211, %203
  %222 = load i32, i32* @S_INT_ENABLED, align 4
  %223 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %224 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %223, i32 0, i32 1
  %225 = call i64 @test_bit(i32 %222, i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %229 = call i32 @il_enable_interrupts(%struct.il_priv* %228)
  br label %230

230:                                              ; preds = %51, %227, %221
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @il_irq_handle_error(%struct.il_priv*) #1

declare dso_local i32 @D_ISR(i8*, ...) #1

declare dso_local i32 @il_rx_queue_update_write_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il_txq_update_write_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il3945_rx_handle(%struct.il_priv*) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH39_TCSR_CREDIT(i32) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_enable_interrupts(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
