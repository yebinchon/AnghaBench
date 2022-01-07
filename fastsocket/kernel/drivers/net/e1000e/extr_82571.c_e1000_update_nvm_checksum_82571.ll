; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_update_nvm_checksum_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_update_nvm_checksum_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@E1000_FLASH_UPDATES = common dso_local global i64 0, align 8
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_FLUPD = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@FLOP = common dso_local global i32 0, align 4
@E1000_STM_OPCODE = common dso_local global i32 0, align 4
@HICR = common dso_local global i32 0, align 4
@E1000_HICR_FW_RESET_ENABLE = common dso_local global i32 0, align 4
@E1000_HICR_FW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = call i64 @e1000e_update_nvm_checksum_generic(%struct.e1000_hw* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %2, align 8
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i64 0, i64* %2, align 8
  br label %91

21:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = call i32 @usleep_range(i32 1000, i32 2000)
  %28 = load i32, i32* @EECD, align 4
  %29 = call i32 @er32(i32 %28)
  %30 = load i32, i32* @E1000_EECD_FLUPD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %22

38:                                               ; preds = %33, %22
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* @E1000_ERR_NVM, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %2, align 8
  br label %91

45:                                               ; preds = %38
  %46 = load i32, i32* @FLOP, align 4
  %47 = call i32 @er32(i32 %46)
  %48 = and i32 %47, 65280
  %49 = load i32, i32* @E1000_STM_OPCODE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @HICR, align 4
  %53 = load i32, i32* @E1000_HICR_FW_RESET_ENABLE, align 4
  %54 = call i32 @ew32(i32 %52, i32 %53)
  %55 = call i32 (...) @e1e_flush()
  %56 = load i32, i32* @HICR, align 4
  %57 = load i32, i32* @E1000_HICR_FW_RESET, align 4
  %58 = call i32 @ew32(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i32, i32* @EECD, align 4
  %61 = call i32 @er32(i32 %60)
  %62 = load i32, i32* @E1000_EECD_FLUPD, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @EECD, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ew32(i32 %64, i32 %65)
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %80, %59
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = call i32 @usleep_range(i32 1000, i32 2000)
  %73 = load i32, i32* @EECD, align 4
  %74 = call i32 @er32(i32 %73)
  %75 = load i32, i32* @E1000_EECD_FLUPD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %83

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %67

83:                                               ; preds = %78, %67
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, i64* @E1000_ERR_NVM, align 8
  %89 = sub nsw i64 0, %88
  store i64 %89, i64* %2, align 8
  br label %91

90:                                               ; preds = %83
  store i64 0, i64* %2, align 8
  br label %91

91:                                               ; preds = %90, %87, %42, %20, %11
  %92 = load i64, i64* %2, align 8
  ret i64 %92
}

declare dso_local i64 @e1000e_update_nvm_checksum_generic(%struct.e1000_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
