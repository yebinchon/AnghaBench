; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_write_flash_data_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_write_flash_data_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }

@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_WRITE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@ICH_FLASH_WRITE_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32)* @e1000_write_flash_data_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_flash_data_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ich8_hws_flash_status, align 8
  %11 = alloca %union.ich8_hws_flash_ctrl, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 255
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %21, %18, %4
  %31 = load i64, i64* @E1000_ERR_NVM, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %109

33:                                               ; preds = %26
  %34 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %101, %33
  %43 = call i32 @udelay(i32 1)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %45 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %107

49:                                               ; preds = %42
  %50 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %51 = call i8* @er16flash(i32 %50)
  %52 = bitcast %union.ich8_hws_flash_ctrl* %11 to i8**
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ICH_CYCLE_WRITE, align 4
  %58 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %61 = bitcast %union.ich8_hws_flash_ctrl* %11 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @ew16flash(i32 %60, i8* %62)
  %64 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @ew32flash(i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %13, align 4
  br label %74

72:                                               ; preds = %49
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @ew32flash(i32 %75, i32 %76)
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %79 = load i32, i32* @ICH_FLASH_WRITE_COMMAND_TIMEOUT, align 4
  %80 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %78, i32 %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %107

84:                                               ; preds = %74
  %85 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %86 = call i8* @er16flash(i32 %85)
  %87 = bitcast %union.ich8_hws_flash_status* %10 to i8**
  store i8* %86, i8** %87, align 8
  %88 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %101

93:                                               ; preds = %84
  %94 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %107

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  %104 = sext i32 %102 to i64
  %105 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %42, label %107

107:                                              ; preds = %101, %98, %83, %48
  %108 = load i64, i64* %14, align 8
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %107, %30
  %110 = load i64, i64* %5, align 8
  ret i64 %110
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @ew16flash(i32, i8*) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
