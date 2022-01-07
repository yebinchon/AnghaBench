; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-read.c_iwl_read_otp_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-read.c_iwl_read_otp_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_EEPROM_REG = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_MSK_ADDR = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_READ_VALID_MSK = common dso_local global i32 0, align 4
@IWL_EEPROM_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Time out reading OTP[%d]\0A\00", align 1
@CSR_OTP_GP_REG = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Uncorrectable OTP ECC error, abort OTP read\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Correctable OTP ECC error, continue read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i32*)* @iwl_read_otp_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_read_otp_word(%struct.iwl_trans* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %12 = load i32, i32* @CSR_EEPROM_REG, align 4
  %13 = load i32, i32* @CSR_EEPROM_REG_MSK_ADDR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 1
  %16 = and i32 %13, %15
  %17 = call i32 @iwl_write32(%struct.iwl_trans* %11, i32 %12, i32 %16)
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %19 = load i32, i32* @CSR_EEPROM_REG, align 4
  %20 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %21 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %22 = load i32, i32* @IWL_EEPROM_ACCESS_TIMEOUT, align 4
  %23 = call i32 @iwl_poll_bit(%struct.iwl_trans* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %3
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %33 = load i32, i32* @CSR_EEPROM_REG, align 4
  %34 = call i32 @iwl_read32(%struct.iwl_trans* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %36 = load i32, i32* @CSR_OTP_GP_REG, align 4
  %37 = call i32 @iwl_read32(%struct.iwl_trans* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %44 = load i32, i32* @CSR_OTP_GP_REG, align 4
  %45 = load i32, i32* @CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK, align 4
  %46 = call i32 @iwl_set_bit(%struct.iwl_trans* %43, i32 %44, i32 %45)
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %48 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %31
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %58 = load i32, i32* @CSR_OTP_GP_REG, align 4
  %59 = load i32, i32* @CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK, align 4
  %60 = call i32 @iwl_set_bit(%struct.iwl_trans* %57, i32 %58, i32 %59)
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %62 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 16
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %42, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
