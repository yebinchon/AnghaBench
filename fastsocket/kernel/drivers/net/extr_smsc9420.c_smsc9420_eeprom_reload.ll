; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_eeprom_reload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_eeprom_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"smsc9420_eeprom_reload: Eeprom busy\00", align 1
@EIO = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_RELOAD_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"smsc9420_eeprom_reload: Eeprom timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*)* @smsc9420_eeprom_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_eeprom_reload(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %3, align 8
  store i32 100000, i32* %4, align 4
  %5 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %6 = icmp ne %struct.smsc9420_pdata* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %11 = load i32, i32* @E2P_CMD, align 4
  %12 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %10, i32 %11)
  %13 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @DRV, align 4
  %18 = call i32 @smsc_dbg(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %23 = load i32, i32* @E2P_CMD, align 4
  %24 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %25 = load i32, i32* @E2P_CMD_EPC_CMD_RELOAD_, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %38, %21
  %29 = call i32 @udelay(i32 10)
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %31 = load i32, i32* @E2P_CMD, align 4
  %32 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %30, i32 %31)
  %33 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %47

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %28, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @DRV, align 4
  %44 = call i32 @smsc_warn(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %36, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc_dbg(i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
