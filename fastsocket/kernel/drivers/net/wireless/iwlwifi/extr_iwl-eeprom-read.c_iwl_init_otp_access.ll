; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-read.c_iwl_init_otp_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-read.c_iwl_init_otp_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Time out access OTP\0A\00", align 1
@APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@APMG_PS_CTRL_VAL_RESET_REQ = common dso_local global i32 0, align 4
@CSR_DBG_LINK_PWR_MGMT_REG = common dso_local global i32 0, align 4
@CSR_RESET_LINK_PWR_MGMT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_init_otp_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_init_otp_access(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = load i32, i32* @CSR_GP_CNTRL, align 4
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = load i32, i32* @CSR_GP_CNTRL, align 4
  %8 = call i32 @iwl_read32(%struct.iwl_trans* %6, i32 %7)
  %9 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @iwl_write32(%struct.iwl_trans* %4, i32 %5, i32 %10)
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %13 = load i32, i32* @CSR_GP_CNTRL, align 4
  %14 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %15 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %16 = call i32 @iwl_poll_bit(%struct.iwl_trans* %12, i32 %13, i32 %14, i32 %15, i32 25000)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %21 = call i32 @IWL_ERR(%struct.iwl_trans* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %25 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %26 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %23, i32 %24, i32 %25)
  %27 = call i32 @udelay(i32 5)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %29 = load i32, i32* @APMG_PS_CTRL_REG, align 4
  %30 = load i32, i32* @APMG_PS_CTRL_VAL_RESET_REQ, align 4
  %31 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %28, i32 %29, i32 %30)
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %42 = load i32, i32* @CSR_DBG_LINK_PWR_MGMT_REG, align 4
  %43 = load i32, i32* @CSR_RESET_LINK_PWR_MGMT_DISABLED, align 4
  %44 = call i32 @iwl_set_bit(%struct.iwl_trans* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %22
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
