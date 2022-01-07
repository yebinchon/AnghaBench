; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_eeprom_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_eeprom_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"op 0x%08x\00", align 1
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Busy at start\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"TIMED OUT\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@E2P_CMD_EPC_TIMEOUT_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Error occured during eeprom operation\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*, i32)* @smsc9420_eeprom_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 100, i32* %6, align 4
  %8 = load i32, i32* @HW, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @smsc_dbg(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %12 = load i32, i32* @E2P_CMD, align 4
  %13 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %11, i32 %12)
  %14 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @HW, align 4
  %19 = call i32 @smsc_warn(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %27 = load i32, i32* @E2P_CMD, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %44, %22
  %31 = call i32 @msleep(i32 1)
  %32 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %33 = load i32, i32* @E2P_CMD, align 4
  %34 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i1 [ false, %35 ], [ %43, %40 ]
  br i1 %45, label %30, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @HW, align 4
  %51 = call i32 @smsc_info(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @HW, align 4
  %61 = call i32 @smsc_info(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %49, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @smsc_dbg(i32, i8*, i32) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smsc_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
