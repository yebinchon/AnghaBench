; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_flash_cycle_init_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_flash_cycle_init_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%union.ich8_hws_flash_status = type { i8*, [16 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Flash descriptor invalid.  SW Sequencing must be used.\0A\00", align 1
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Flash controller busy, cannot get access\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_flash_cycle_init_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %union.ich8_hws_flash_status, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i64, i64* @E1000_ERR_NVM, align 8
  %8 = sub nsw i64 0, %7
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %10 = call i8* @er16flash(i32 %9)
  %11 = bitcast %union.ich8_hws_flash_status* %4 to i8**
  store i8* %10, i8** %11, align 8
  %12 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @e_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @E1000_ERR_NVM, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %2, align 8
  br label %74

20:                                               ; preds = %1
  %21 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %26 = bitcast %union.ich8_hws_flash_status* %4 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @ew16flash(i32 %25, i8* %27)
  %29 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %20
  %34 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %37 = bitcast %union.ich8_hws_flash_status* %4 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ew16flash(i32 %36, i8* %38)
  store i64 0, i64* %5, align 8
  br label %72

40:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %47 = call i8* @er16flash(i32 %46)
  %48 = bitcast %union.ich8_hws_flash_status* %4 to i8**
  store i8* %47, i8** %48, align 8
  %49 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %59

54:                                               ; preds = %45
  %55 = call i32 @udelay(i32 1)
  br label %56

56:                                               ; preds = %54
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %41

59:                                               ; preds = %53, %41
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %66 = bitcast %union.ich8_hws_flash_status* %4 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @ew16flash(i32 %65, i8* %67)
  br label %71

69:                                               ; preds = %59
  %70 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %72, %16
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew16flash(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
