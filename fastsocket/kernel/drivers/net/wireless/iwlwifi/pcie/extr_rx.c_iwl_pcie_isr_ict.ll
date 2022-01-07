; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_isr_ict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_isr_ict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, i32, i32, i64*, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Ignore interrupt, inta == 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ICT index %d value 0x%08X\0A\00", align 1
@ICT_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ISR inta 0x%08x, enabled 0x%08x ict 0x%08x\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_isr_ict(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.iwl_trans*
  store %struct.iwl_trans* %15, %struct.iwl_trans** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %17 = icmp ne %struct.iwl_trans* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %205

20:                                               ; preds = %2
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %22 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %21)
  store %struct.iwl_trans_pcie* %22, %struct.iwl_trans_pcie** %7, align 8
  %23 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %23, i32 0, i32 3
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @iwl_pcie_isr(i32 %36, i8* %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 3
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %3, align 4
  br label %205

44:                                               ; preds = %20
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @trace_iwlwifi_dev_irq(i32 %47)
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %50 = load i32, i32* @CSR_INT_MASK, align 4
  %51 = call i32 @iwl_read32(%struct.iwl_trans* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %53 = load i32, i32* @CSR_INT_MASK, align 4
  %54 = call i32 @iwl_write32(%struct.iwl_trans* %52, i32 %53, i32 0)
  %55 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %55, i32 0, i32 5
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @le32_to_cpu(i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @trace_iwlwifi_dev_ict_read(i32 %66, i64 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %44
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %76 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %185

77:                                               ; preds = %44
  br label %78

78:                                               ; preds = %119, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %83 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %84 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %85, i32 %86)
  %88 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %89 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %88, i32 0, i32 5
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 0, i64* %94, align 8
  %95 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %96 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @ICT_COUNT, align 4
  %99 = call i64 @iwl_queue_inc_wrap(i64 %97, i32 %98)
  %100 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %103 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %102, i32 0, i32 5
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %106 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @le32_to_cpu(i64 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %112 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %115 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @trace_iwlwifi_dev_ict_read(i32 %113, i64 %116, i32 %117)
  br label %119

119:                                              ; preds = %78
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %78, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %125, %122
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, 786432
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, 32768
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32, i32* %10, align 4
  %135 = and i32 255, %134
  %136 = load i32, i32* %10, align 4
  %137 = and i32 65280, %136
  %138 = shl i32 %137, 16
  %139 = or i32 %135, %138
  store i32 %139, i32* %8, align 4
  %140 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %146 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %152 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %133
  %159 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %160 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %159, i32 0, i32 3
  %161 = load i64, i64* %12, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  %163 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %163, i32* %3, align 4
  br label %205

164:                                              ; preds = %133
  %165 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %166 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %167 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %166, i32 0, i32 4
  %168 = call i64 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %172 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %177 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %176)
  br label %178

178:                                              ; preds = %175, %170, %164
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %181 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %180, i32 0, i32 3
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %184, i32* %3, align 4
  br label %205

185:                                              ; preds = %74
  %186 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %187 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %188 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %187, i32 0, i32 4
  %189 = call i64 @test_bit(i32 %186, i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %193 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %198 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %197)
  br label %199

199:                                              ; preds = %196, %191, %185
  %200 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %201 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %200, i32 0, i32 3
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  %204 = load i32, i32* @IRQ_NONE, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %199, %179, %158, %35, %18
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_pcie_isr(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_iwlwifi_dev_irq(i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @trace_iwlwifi_dev_ict_read(i32, i64, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i64 @iwl_queue_inc_wrap(i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
