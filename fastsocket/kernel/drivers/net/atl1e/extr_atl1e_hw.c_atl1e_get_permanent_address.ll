; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_get_permanent_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_hw.c_atl1e_get_permanent_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@REG_TWSI_CTRL = common dso_local global i64 0, align 8
@TWSI_CTRL_SW_LDSTART = common dso_local global i64 0, align 8
@AT_TWSI_EEPROM_TIMEOUT = common dso_local global i64 0, align 8
@AT_ERR_TIMEOUT = common dso_local global i32 0, align 4
@REG_MAC_STA_ADDR = common dso_local global i64 0, align 8
@AT_ERR_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_hw*)* @atl1e_get_permanent_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_get_permanent_address(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca [2 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @is_valid_ether_addr(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

20:                                               ; preds = %1
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %22, align 16
  %23 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %24 = call i32 @atl1e_check_eeprom_exist(%struct.atl1e_hw* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %20
  %27 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %28 = load i64, i64* @REG_TWSI_CTRL, align 8
  %29 = call i64 @AT_READ_REG(%struct.atl1e_hw* %27, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @TWSI_CTRL_SW_LDSTART, align 8
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %34 = load i64, i64* @REG_TWSI_CTRL, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %33, i64 %34, i64 %35)
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %52, %26
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @AT_TWSI_EEPROM_TIMEOUT, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = call i32 @msleep(i32 10)
  %43 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %44 = load i64, i64* @REG_TWSI_CTRL, align 8
  %45 = call i64 @AT_READ_REG(%struct.atl1e_hw* %43, i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @TWSI_CTRL_SW_LDSTART, align 8
  %48 = and i64 %46, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %37

55:                                               ; preds = %50, %37
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @AT_TWSI_EEPROM_TIMEOUT, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @AT_ERR_TIMEOUT, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %64 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %65 = call i64 @AT_READ_REG(%struct.atl1e_hw* %63, i64 %64)
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 %65, i64* %66, align 16
  %67 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %68 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %69 = add nsw i64 %68, 4
  %70 = call i64 @AT_READ_REG(%struct.atl1e_hw* %67, i64 %69)
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = call i64 @swab32(i64 %73)
  %75 = getelementptr inbounds i32, i32* %13, i64 2
  %76 = bitcast i32* %75 to i64*
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %78 = bitcast i64* %77 to i32*
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @swab16(i32 %79)
  %81 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %80, i32* %81, align 16
  %82 = call i64 @is_valid_ether_addr(i32* %13)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %62
  %85 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %86 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32* %87, i32* %13, i32 %88)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

90:                                               ; preds = %62
  %91 = load i32, i32* @AT_ERR_EEPROM, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %84, %59, %19
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_valid_ether_addr(i32*) #2

declare dso_local i32 @atl1e_check_eeprom_exist(%struct.atl1e_hw*) #2

declare dso_local i64 @AT_READ_REG(%struct.atl1e_hw*, i64) #2

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i64, i64) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @swab32(i64) #2

declare dso_local i32 @swab16(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
