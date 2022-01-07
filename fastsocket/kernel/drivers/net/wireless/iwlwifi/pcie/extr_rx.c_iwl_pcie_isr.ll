; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32 }

@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"We got a masked interrupt (0x%08x)...Ack and ignore\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Ignore interrupt, inta == 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"HARDWARE GONE?? INTA == 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@IWL_DL_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iwl_pcie_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iwl_trans*
  store %struct.iwl_trans* %11, %struct.iwl_trans** %6, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %13 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %12)
  store %struct.iwl_trans_pcie* %13, %struct.iwl_trans_pcie** %7, align 8
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 2
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_iwlwifi_dev_irq(i32 %19)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %22 = load i32, i32* @CSR_INT_MASK, align 4
  %23 = call i32 @iwl_read32(%struct.iwl_trans* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %25 = load i32, i32* @CSR_INT_MASK, align 4
  %26 = call i32 @iwl_write32(%struct.iwl_trans* %24, i32 %25, i32 0)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %28 = load i32, i32* @CSR_INT, align 4
  %29 = call i32 @iwl_read32(%struct.iwl_trans* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %2
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %43 = load i32, i32* @CSR_INT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 @iwl_write32(%struct.iwl_trans* %42, i32 %43, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %35, %2
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %57 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %98

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, -16
  %64 = icmp eq i32 %63, -1515870816
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %58
  %66 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @IWL_WARN(%struct.iwl_trans* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %114

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %80, i32* %3, align 4
  br label %114

81:                                               ; preds = %70
  %82 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %83 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %84 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %89 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %94 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %93)
  br label %95

95:                                               ; preds = %92, %87, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %3, align 4
  br label %114

98:                                               ; preds = %55
  %99 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %100 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %100, i32 0, i32 1
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %106 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %111 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %110)
  br label %112

112:                                              ; preds = %109, %104, %98
  %113 = load i32, i32* @IRQ_NONE, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %96, %79, %65
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_iwlwifi_dev_irq(i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
