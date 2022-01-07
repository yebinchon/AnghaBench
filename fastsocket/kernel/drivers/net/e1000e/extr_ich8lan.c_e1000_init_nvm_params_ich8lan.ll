; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_init_nvm_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_init_nvm_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_3__, %struct.e1000_nvm_info }
%struct.TYPE_3__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.e1000_nvm_info = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ERROR: Flash registers not mapped\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@e1000_nvm_flash_sw = common dso_local global i32 0, align 4
@ICH_FLASH_GFPREG = common dso_local global i32 0, align 4
@FLASH_GFPREG_BASE_MASK = common dso_local global i32 0, align 4
@FLASH_SECTOR_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_ICH8_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 2
  store %struct.e1000_nvm_info* %11, %struct.e1000_nvm_info** %4, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %14, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %85

23:                                               ; preds = %1
  %24 = load i32, i32* @e1000_nvm_flash_sw, align 4
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @ICH_FLASH_GFPREG, align 4
  %28 = call i32 @er32flash(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 16
  %34 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FLASH_SECTOR_ADDR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* @FLASH_SECTOR_ADDR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %50, align 4
  %53 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i64, i64* @E1000_ICH8_SHADOW_RAM_WORDS, align 8
  %60 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %81, %23
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %70 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %76 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 65535, i32* %80, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %62

84:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32flash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
