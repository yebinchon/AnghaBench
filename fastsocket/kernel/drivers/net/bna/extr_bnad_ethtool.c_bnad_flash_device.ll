; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_flash_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_flash_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_flash = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnad_iocmd_comp = type { i32, i32, %struct.bnad* }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"BNA: Can't locate firmware %s\0A\00", align 1
@BFA_FLASH_PART_FWIMG = common dso_local global i32 0, align 4
@bnad_cb_completion = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"BNA: Flash update failed with err: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"BNA: Firmware image update to flash failed with: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_flash*)* @bnad_flash_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_flash_device(%struct.net_device* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_flash*, align 8
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bnad_iocmd_comp, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnad* @netdev_priv(%struct.net_device* %9)
  store %struct.bnad* %10, %struct.bnad** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_flash*, %struct.ethtool_flash** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnad*, %struct.bnad** %5, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %7, i32 %13, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.ethtool_flash*, %struct.ethtool_flash** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %79

26:                                               ; preds = %2
  %27 = load %struct.bnad*, %struct.bnad** %5, align 8
  %28 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 2
  store %struct.bnad* %27, %struct.bnad** %28, align 8
  %29 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 1
  %31 = call i32 @init_completion(i32* %30)
  %32 = load %struct.bnad*, %struct.bnad** %5, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.bnad*, %struct.bnad** %5, align 8
  %36 = getelementptr inbounds %struct.bnad, %struct.bnad* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* @BFA_FLASH_PART_FWIMG, align 4
  %39 = load %struct.bnad*, %struct.bnad** %5, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.firmware*, %struct.firmware** %7, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.firmware*, %struct.firmware** %7, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @bnad_cb_completion, align 4
  %50 = call i32 @bfa_nw_flash_update_part(i32* %37, i32 %38, i32 %41, i32* %45, i32 %48, i32 0, i32 %49, %struct.bnad_iocmd_comp* %6)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BFA_STATUS_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %26
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.bnad*, %struct.bnad** %5, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_irq(i32* %60)
  br label %79

62:                                               ; preds = %26
  %63 = load %struct.bnad*, %struct.bnad** %5, align 8
  %64 = getelementptr inbounds %struct.bnad, %struct.bnad* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 1
  %67 = call i32 @wait_for_completion(i32* %66)
  %68 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BFA_STATUS_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  %75 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %62
  br label %79

79:                                               ; preds = %78, %54, %21
  %80 = load %struct.firmware*, %struct.firmware** %7, align 8
  %81 = call i32 @release_firmware(%struct.firmware* %80)
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bfa_nw_flash_update_part(i32*, i32, i32, i32*, i32, i32, i32, %struct.bnad_iocmd_comp*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
