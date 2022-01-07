; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_erase_flash_bank_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_erase_flash_bank_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i32, i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%union.ich8_hws_flash_ctrl = type { i8* }
%struct.TYPE_3__ = type { i32 }

@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_SEG_SIZE_256 = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_4K = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_8K = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_64K = common dso_local global i64 0, align 8
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_ERASE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_ERASE_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @e1000_erase_flash_bank_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_nvm_info*, align 8
  %7 = alloca %union.ich8_hws_flash_status, align 8
  %8 = alloca %union.ich8_hws_flash_ctrl, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  store %struct.e1000_nvm_info* %17, %struct.e1000_nvm_info** %6, align 8
  %18 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %6, align 8
  %19 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %23 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %24 = call i8* @er16flash(i32 %23)
  %25 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %24, i8** %25, align 8
  %26 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %40 [
    i32 0, label %29
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
  ]

29:                                               ; preds = %2
  %30 = load i64, i64* @ICH_FLASH_SEG_SIZE_256, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ICH_FLASH_SEG_SIZE_256, align 8
  %33 = sdiv i64 %31, %32
  store i64 %33, i64* %14, align 8
  br label %43

34:                                               ; preds = %2
  %35 = load i64, i64* @ICH_FLASH_SEG_SIZE_4K, align 8
  store i64 %35, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %43

36:                                               ; preds = %2
  %37 = load i64, i64* @ICH_FLASH_SEG_SIZE_8K, align 8
  store i64 %37, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %43

38:                                               ; preds = %2
  %39 = load i64, i64* @ICH_FLASH_SEG_SIZE_64K, align 8
  store i64 %39, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %43

40:                                               ; preds = %2
  %41 = load i64, i64* @E1000_ERR_NVM, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %3, align 8
  br label %122

43:                                               ; preds = %38, %36, %34, %29
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %10, align 8
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i64 [ %51, %50 ], [ 0, %52 ]
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %118, %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %121

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %112, %61
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %3, align 8
  br label %122

69:                                               ; preds = %62
  %70 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %71 = call i8* @er16flash(i32 %70)
  %72 = bitcast %union.ich8_hws_flash_ctrl* %8 to i8**
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @ICH_CYCLE_ERASE, align 4
  %74 = bitcast %union.ich8_hws_flash_ctrl* %8 to %struct.TYPE_3__*
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %77 = bitcast %union.ich8_hws_flash_ctrl* %8 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @ew16flash(i32 %76, i8* %78)
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %15, align 8
  %82 = mul nsw i64 %80, %81
  %83 = load i64, i64* %9, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %9, align 8
  %85 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @ew32flash(i32 %85, i64 %86)
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %89 = load i32, i32* @ICH_FLASH_ERASE_COMMAND_TIMEOUT, align 4
  %90 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %88, i32 %89)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %69
  br label %117

94:                                               ; preds = %69
  %95 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %96 = call i8* @er16flash(i32 %95)
  %97 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %96, i8** %97, align 8
  %98 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %112

103:                                              ; preds = %94
  %104 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_4__*
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %11, align 8
  store i64 %109, i64* %3, align 8
  br label %122

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %62, label %117

117:                                              ; preds = %112, %93
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %13, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %13, align 8
  br label %57

121:                                              ; preds = %57
  store i64 0, i64* %3, align 8
  br label %122

122:                                              ; preds = %121, %108, %67, %40
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i8* @er16flash(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @ew16flash(i32, i8*) #1

declare dso_local i32 @ew32flash(i32, i64) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
