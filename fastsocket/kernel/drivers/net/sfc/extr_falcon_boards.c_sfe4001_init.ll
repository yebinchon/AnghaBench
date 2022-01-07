; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4001_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4001_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.efx_nic = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.falcon_board = type { i8*, i8*, i32 }

@sfe4001_hwmon_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EIO = common dso_local global i32 0, align 4
@MAX664X_REG_WLHO = common dso_local global i32 0, align 4
@PCA9539 = common dso_local global i32 0, align 4
@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@dev_attr_phy_flash_cfg = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PHY is powered on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @sfe4001_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe4001_init(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.falcon_board*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = call %struct.falcon_board* @falcon_board(%struct.efx_nic* %6)
  store %struct.falcon_board* %7, %struct.falcon_board** %4, align 8
  %8 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %9 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %8, i32 0, i32 2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sfe4001_hwmon_info, i32 0, i32 0), align 4
  %11 = call i8* @i2c_new_dummy(i32* %9, i32 %10)
  %12 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %13 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %15 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %23 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @MAX664X_REG_WLHO, align 4
  %26 = call i32 @i2c_smbus_write_byte_data(i8* %24, i32 %25, i32 90)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %84

30:                                               ; preds = %21
  %31 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %32 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %31, i32 0, i32 2
  %33 = load i32, i32* @PCA9539, align 4
  %34 = call i8* @i2c_new_dummy(i32* %32, i32 %33)
  %35 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %36 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %38 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %84

44:                                               ; preds = %30
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = call i32 @falcon_stop_nic_stats(%struct.efx_nic* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = call i32 @sfe4001_poweron(%struct.efx_nic* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %79

60:                                               ; preds = %54
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @device_create_file(i32* %64, i32* @dev_attr_phy_flash_cfg)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %76

69:                                               ; preds = %60
  %70 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %71 = load i32, i32* @hw, align 4
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @netif_info(%struct.efx_nic* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %90

76:                                               ; preds = %68
  %77 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %78 = call i32 @sfe4001_poweroff(%struct.efx_nic* %77)
  br label %79

79:                                               ; preds = %76, %59
  %80 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %81 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @i2c_unregister_device(i8* %82)
  br label %84

84:                                               ; preds = %79, %41, %29
  %85 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %86 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @i2c_unregister_device(i8* %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %69, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.efx_nic*) #1

declare dso_local i8* @i2c_new_dummy(i32*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i8*, i32, i32) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @sfe4001_poweron(%struct.efx_nic*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @sfe4001_poweroff(%struct.efx_nic*) #1

declare dso_local i32 @i2c_unregister_device(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
