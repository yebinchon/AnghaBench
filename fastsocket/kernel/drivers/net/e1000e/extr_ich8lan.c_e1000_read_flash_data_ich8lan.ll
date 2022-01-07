; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_read_flash_data_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_read_flash_data_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ich8_hws_flash_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%union.ich8_hws_flash_ctrl = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_LINEAR_ADDR_MASK = common dso_local global i32 0, align 4
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_READ = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ICH_FLASH_FDATA0 = common dso_local global i32 0, align 4
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Timeout error - flash cycle did not complete.\0A\00", align 1
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32*)* @e1000_read_flash_data_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_flash_data_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %union.ich8_hws_flash_status, align 8
  %11 = alloca %union.ich8_hws_flash_ctrl, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* @E1000_ERR_NVM, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20, %4
  %28 = load i64, i64* @E1000_ERR_NVM, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %114

30:                                               ; preds = %23
  %31 = load i32, i32* @ICH_FLASH_LINEAR_ADDR_MASK, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %106, %30
  %40 = call i32 @udelay(i32 1)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %42 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %112

46:                                               ; preds = %39
  %47 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %48 = call i8* @er16flash(i32 %47)
  %49 = bitcast %union.ich8_hws_flash_ctrl* %11 to i8**
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @ICH_CYCLE_READ, align 4
  %55 = bitcast %union.ich8_hws_flash_ctrl* %11 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %58 = bitcast %union.ich8_hws_flash_ctrl* %11 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @ew16flash(i32 %57, i8* %59)
  %61 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ew32flash(i32 %61, i32 %62)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %65 = load i32, i32* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 4
  %66 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %64, i32 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %46
  %70 = load i32, i32* @ICH_FLASH_FDATA0, align 4
  %71 = call i32 @er32flash(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %86

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 65535
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %74
  br label %112

87:                                               ; preds = %46
  %88 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %89 = call i8* @er16flash(i32 %88)
  %90 = bitcast %union.ich8_hws_flash_status* %10 to i8**
  store i8* %89, i8** %90, align 8
  %91 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_6__*
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %106

96:                                               ; preds = %87
  %97 = bitcast %union.ich8_hws_flash_status* %10 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %112

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %95
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  %109 = sext i32 %107 to i64
  %110 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %39, label %112

112:                                              ; preds = %106, %101, %86, %45
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %27
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i8* @er16flash(i32) #1

declare dso_local i32 @ew16flash(i32, i8*) #1

declare dso_local i32 @ew32flash(i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @er32flash(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
