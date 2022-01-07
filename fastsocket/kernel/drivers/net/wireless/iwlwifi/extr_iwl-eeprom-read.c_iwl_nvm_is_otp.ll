; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-read.c_iwl_nvm_is_otp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-read.c_iwl_nvm_is_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_HW_REV_TYPE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown hardware type\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG_DEVICE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_nvm_is_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_nvm_is_otp(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CSR_HW_REV_TYPE_MSK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %16 [
    i32 128, label %10
    i32 130, label %15
    i32 129, label %15
    i32 132, label %15
    i32 131, label %15
  ]

10:                                               ; preds = %1
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = call i32 @IWL_ERR(%struct.iwl_trans* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %18 = load i32, i32* @CSR_OTP_GP_REG, align 4
  %19 = call i32 @iwl_read32(%struct.iwl_trans* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CSR_OTP_GP_REG_DEVICE_SELECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %15, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
