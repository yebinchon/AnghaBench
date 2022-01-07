; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_restart_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_restart_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_IDC_CTRL = common dso_local global i32 0, align 4
@QLC_83XX_IDC_GRACEFULL_RESET = common dso_local global i32 0, align 4
@qlcnic_load_fw_file = common dso_local global i64 0, align 8
@QLCNIC_FW_IMG_VALID = common dso_local global i32 0, align 4
@QLC_83XX_BOOT_FROM_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_restart_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_restart_hw(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = call i32 @qlcnic_83xx_stop_hw(%struct.qlcnic_adapter* %8)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @QLC_83XX_IDC_CTRL, align 4
  %14 = call i32 @QLCRDX(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @QLC_83XX_IDC_GRACEFULL_RESET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = call i32 @qlcnic_dump_fw(%struct.qlcnic_adapter* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = call i32 @qlcnic_83xx_init_hw(%struct.qlcnic_adapter* %23)
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = call i64 @qlcnic_83xx_copy_bootloader(%struct.qlcnic_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %22
  %31 = load i64, i64* @qlcnic_load_fw_file, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = call i64 @qlcnic_83xx_load_fw_image_from_host(%struct.qlcnic_adapter* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %33
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = load i32, i32* @QLCNIC_FW_IMG_VALID, align 4
  %43 = load i32, i32* @QLC_83XX_BOOT_FROM_FLASH, align 4
  %44 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = call i32 @qlcnic_83xx_start_hw(%struct.qlcnic_adapter* %46)
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = call i64 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51, %37, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @qlcnic_83xx_stop_hw(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCRDX(i32, i32) #1

declare dso_local i32 @qlcnic_dump_fw(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_init_hw(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_copy_bootloader(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_load_fw_image_from_host(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_start_hw(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
