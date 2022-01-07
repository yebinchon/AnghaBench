; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_do_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_do_write_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_write_eeprom\00", align 1
@e1000_ce4100 = common dso_local global i64 0, align 8
@GBE_CONFIG_BASE_VIRT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"\22words\22 parameter out of bounds\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i64 0, align 8
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_do_write_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_do_write_eeprom(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_eeprom_info* %13, %struct.e1000_eeprom_info** %10, align 8
  store i64 0, i64* %11, align 8
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_ce4100, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @GBE_CONFIG_BASE_VIRT, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @GBE_CONFIG_FLASH_WRITE(i32 %21, i64 %22, i64 %23, i64* %24)
  %26 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %26, i64* %5, align 8
  br label %87

27:                                               ; preds = %4
  %28 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %29 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %34 = call i32 @e1000_init_eeprom_params(%struct.e1000_hw* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %38 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %44 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %41, %35
  %53 = call i32 @e_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %87

56:                                               ; preds = %49
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = call i64 @e1000_acquire_eeprom(%struct.e1000_hw* %57)
  %59 = load i64, i64* @E1000_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %87

64:                                               ; preds = %56
  %65 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %66 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @e1000_eeprom_microwire, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = call i64 @e1000_write_eeprom_microwire(%struct.e1000_hw* %71, i64 %72, i64 %73, i64* %74)
  store i64 %75, i64* %11, align 8
  br label %83

76:                                               ; preds = %64
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = call i64 @e1000_write_eeprom_spi(%struct.e1000_hw* %77, i64 %78, i64 %79, i64* %80)
  store i64 %81, i64* %11, align 8
  %82 = call i32 @msleep(i32 10)
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %85 = call i32 @e1000_release_eeprom(%struct.e1000_hw* %84)
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %83, %61, %52, %20
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @GBE_CONFIG_FLASH_WRITE(i32, i64, i64, i64*) #1

declare dso_local i32 @e1000_init_eeprom_params(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_acquire_eeprom(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_eeprom_microwire(%struct.e1000_hw*, i64, i64, i64*) #1

declare dso_local i64 @e1000_write_eeprom_spi(%struct.e1000_hw*, i64, i64, i64*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_release_eeprom(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
