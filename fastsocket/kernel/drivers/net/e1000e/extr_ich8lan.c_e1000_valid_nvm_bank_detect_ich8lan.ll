; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_valid_nvm_bank_detect_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_valid_nvm_bank_detect_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_nvm_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_nvm_info = type { i32 }

@E1000_ICH_NVM_SIG_WORD = common dso_local global i32 0, align 4
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_SEC1VAL_VALID_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SEC1VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Unable to determine valid NVM bank via EEC - reading flash signature\0A\00", align 1
@E1000_ICH_NVM_VALID_SIG_MASK = common dso_local global i32 0, align 4
@E1000_ICH_NVM_SIG_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: No valid NVM bank present\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32*)* @e1000_valid_nvm_bank_detect_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_nvm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_nvm_info* %13, %struct.e1000_nvm_info** %7, align 8
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %47 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %2, %2
  %28 = load i32, i32* @EECD, align 4
  %29 = call i32 @er32(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @E1000_EECD_SEC1VAL_VALID_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @E1000_EECD_SEC1VAL_VALID_MASK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @E1000_EECD_SEC1VAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  store i32 1, i32* %41, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %40
  store i32 0, i32* %3, align 4
  br label %86

45:                                               ; preds = %27
  %46 = call i32 @e_dbg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %2, %45
  %48 = load i32*, i32** %5, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @e1000_read_flash_byte_ich8lan(%struct.e1000_hw* %49, i32 %50, i32* %10)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %86

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @E1000_ICH_NVM_VALID_SIG_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @E1000_ICH_NVM_SIG_VALUE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  store i32 0, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %86

64:                                               ; preds = %56
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @e1000_read_flash_byte_ich8lan(%struct.e1000_hw* %65, i32 %68, i32* %10)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %86

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @E1000_ICH_NVM_VALID_SIG_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @E1000_ICH_NVM_SIG_VALUE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  store i32 1, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %86

82:                                               ; preds = %74
  %83 = call i32 @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @E1000_ERR_NVM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %80, %72, %62, %54, %44
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_read_flash_byte_ich8lan(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
