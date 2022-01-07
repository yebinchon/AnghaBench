; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_read_flash_mfg_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_read_flash_mfg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_ADDR = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_CONTROL = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_READ_CTRL = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_RDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_read_flash_mfg_id(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = load i32, i32* @QLC_83XX_FLASH_ADDR, align 4
  %15 = load i32, i32* @QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL, align 4
  %16 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %13, i32 %14, i32 %15)
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = load i32, i32* @QLC_83XX_FLASH_CONTROL, align 4
  %19 = load i32, i32* @QLC_83XX_FLASH_READ_CTRL, align 4
  %20 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %17, i32 %18, i32 %19)
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = call i32 @qlcnic_83xx_poll_flash_status_reg(%struct.qlcnic_adapter* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %12
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = load i32, i32* @QLC_83XX_FLASH_RDDATA, align 4
  %33 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 255
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %38, %25, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_poll_flash_status_reg(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
