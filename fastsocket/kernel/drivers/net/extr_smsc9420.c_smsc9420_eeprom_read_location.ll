; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_eeprom_read_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_eeprom_read_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@E2P_CMD_EPC_CMD_READ_ = common dso_local global i64 0, align 8
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"address 0x%x\00", align 1
@E2P_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*, i64, i64*)* @smsc9420_eeprom_read_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_eeprom_read_location(%struct.smsc9420_pdata* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @E2P_CMD_EPC_CMD_READ_, align 8
  %10 = load i64, i64* %5, align 8
  %11 = or i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @HW, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @smsc_dbg(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata* %15, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %22 = load i32, i32* @E2P_DATA, align 4
  %23 = call i64 @smsc9420_reg_read(%struct.smsc9420_pdata* %21, i32 %22)
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %20, %3
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local i32 @smsc_dbg(i32, i8*, i64) #1

declare dso_local i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata*, i64) #1

declare dso_local i64 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
