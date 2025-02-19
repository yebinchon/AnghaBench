; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_check_eeprom_exist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_check_eeprom_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@REG_TWSI_DEBUG = common dso_local global i32 0, align 4
@TWSI_DEBUG_DEV_EXIST = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_OTP_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_check_eeprom_exist(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  %5 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %6 = load i32, i32* @REG_TWSI_DEBUG, align 4
  %7 = call i32 @AT_READ_REG(%struct.atl1c_hw* %5, i32 %6, i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TWSI_DEBUG_DEV_EXIST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %15 = load i32, i32* @REG_MASTER_CTRL, align 4
  %16 = call i32 @AT_READ_REG(%struct.atl1c_hw* %14, i32 %15, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MASTER_CTRL_OTP_SEL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
