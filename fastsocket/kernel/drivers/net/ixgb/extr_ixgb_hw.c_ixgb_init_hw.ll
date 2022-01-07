; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ixgb_init_hw\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Issuing an EE reset to MAC\0A\00", align 1
@CTRL1 = common dso_local global i32 0, align 4
@IXGB_CTRL1_EE_RST = common dso_local global i32 0, align 4
@IXGB_DELAY_AFTER_EE_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"MAC address invalid after ixgb_init_rx_addrs\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@IXGB_MC_TBL_SIZE = common dso_local global i64 0, align 8
@MTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_init_hw(%struct.ixgb_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %10 = call i64 @ixgb_mac_reset(%struct.ixgb_hw* %9)
  store i64 %10, i64* %5, align 8
  %11 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %12 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %13 = load i32, i32* @CTRL1, align 4
  %14 = load i32, i32* @IXGB_CTRL1_EE_RST, align 4
  %15 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @IXGB_DELAY_AFTER_EE_RESET, align 4
  %17 = call i32 @msleep(i32 %16)
  %18 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %19 = call i32 @ixgb_get_eeprom_data(%struct.ixgb_hw* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

22:                                               ; preds = %1
  %23 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %24 = call i32 @ixgb_get_ee_device_id(%struct.ixgb_hw* %23)
  %25 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %28 = call i32 @ixgb_identify_phy(%struct.ixgb_hw* %27)
  %29 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %32 = call i32 @ixgb_init_rx_addrs(%struct.ixgb_hw* %31)
  %33 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mac_addr_valid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

40:                                               ; preds = %22
  %41 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %44 = call i32 @ixgb_get_bus_info(%struct.ixgb_hw* %43)
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %55, %40
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @IXGB_MC_TBL_SIZE, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %52 = load i32, i32* @MTA, align 4
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %51, i32 %52, i64 %53, i32 0)
  br label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %4, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %46

58:                                               ; preds = %46
  %59 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %60 = call i32 @ixgb_clear_vfta(%struct.ixgb_hw* %59)
  %61 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %62 = call i32 @ixgb_clear_hw_cntrs(%struct.ixgb_hw* %61)
  %63 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %64 = call i32 @ixgb_setup_fc(%struct.ixgb_hw* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %66 = call i32 @ixgb_check_for_link(%struct.ixgb_hw* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %58, %38, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @ixgb_mac_reset(%struct.ixgb_hw*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ixgb_get_eeprom_data(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_get_ee_device_id(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_identify_phy(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_init_rx_addrs(%struct.ixgb_hw*) #1

declare dso_local i32 @mac_addr_valid(i32) #1

declare dso_local i32 @ixgb_get_bus_info(%struct.ixgb_hw*) #1

declare dso_local i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw*, i32, i64, i32) #1

declare dso_local i32 @ixgb_clear_vfta(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_clear_hw_cntrs(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_setup_fc(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_check_for_link(%struct.ixgb_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
