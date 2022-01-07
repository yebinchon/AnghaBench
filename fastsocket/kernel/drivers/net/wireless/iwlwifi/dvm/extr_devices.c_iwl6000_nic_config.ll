; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_devices.c_iwl6000_nic_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_devices.c_iwl6000_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CSR_GP_DRIVER_REG = common dso_local global i32 0, align 4
@CSR_GP_DRIVER_REG_BIT_RADIO_SKU_2x2_IPA = common dso_local global i32 0, align 4
@CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6 = common dso_local global i32 0, align 4
@CSR_GP_DRIVER_REG_BIT_6050_1x2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl6000_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl6000_nic_config(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %52 [
    i32 131, label %8
    i32 130, label %8
    i32 133, label %8
    i32 132, label %9
    i32 129, label %16
    i32 128, label %31
  ]

8:                                                ; preds = %1, %1, %1
  br label %54

9:                                                ; preds = %1
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %14 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_RADIO_SKU_2x2_IPA, align 4
  %15 = call i32 @iwl_write32(i32 %12, i32 %13, i32 %14)
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 6
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %28 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6, align 4
  %29 = call i32 @iwl_set_bit(i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  br label %54

31:                                               ; preds = %1
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 6
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %43 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6, align 4
  %44 = call i32 @iwl_set_bit(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %50 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_6050_1x2, align 4
  %51 = call i32 @iwl_set_bit(i32 %48, i32 %49, i32 %50)
  br label %54

52:                                               ; preds = %1
  %53 = call i32 @WARN_ON(i32 1)
  br label %54

54:                                               ; preds = %52, %45, %30, %9, %8
  ret void
}

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i32 @iwl_set_bit(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
