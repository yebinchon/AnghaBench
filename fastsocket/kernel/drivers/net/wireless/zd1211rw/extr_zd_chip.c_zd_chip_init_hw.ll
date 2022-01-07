; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CR_AFTER_PNP = common dso_local global i32 0, align 4
@CR_GPI_EN = common dso_local global i32 0, align 4
@CWIN_SIZE = common dso_local global i32 0, align 4
@CR_CWMIN_CWMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_init_hw(%struct.zd_chip* %0) #0 {
  %2 = alloca %struct.zd_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %2, align 8
  %5 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %6 = call i32 @zd_chip_dev(%struct.zd_chip* %5)
  %7 = call i32 @dev_dbg_f(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %9 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %12 = load i32, i32* @CR_AFTER_PNP, align 4
  %13 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %11, i32 1, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %19 = call i32 @read_fw_regs_offset(%struct.zd_chip* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %85

23:                                               ; preds = %17
  %24 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %25 = load i32, i32* @CR_GPI_EN, align 4
  %26 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %24, i32 0, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %85

30:                                               ; preds = %23
  %31 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %32 = load i32, i32* @CWIN_SIZE, align 4
  %33 = load i32, i32* @CR_CWMIN_CWMAX, align 4
  %34 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %85

38:                                               ; preds = %30
  %39 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %40 = call i32 @set_mandatory_rates(%struct.zd_chip* %39, i32 1)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %85

44:                                               ; preds = %38
  %45 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %46 = call i32 @disable_hwint(%struct.zd_chip* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %85

50:                                               ; preds = %44
  %51 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %52 = call i32 @read_pod(%struct.zd_chip* %51, i32* %4)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %85

56:                                               ; preds = %50
  %57 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %58 = call i32 @hw_init(%struct.zd_chip* %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %85

62:                                               ; preds = %56
  %63 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %64 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %63, i32 0, i32 1
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @zd_rf_init_hw(i32* %64, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %85

70:                                               ; preds = %62
  %71 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %72 = call i32 @print_fw_version(%struct.zd_chip* %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %85

76:                                               ; preds = %70
  %77 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %78 = call i32 @read_cal_int_tables(%struct.zd_chip* %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %84 = call i32 @print_id(%struct.zd_chip* %83)
  br label %85

85:                                               ; preds = %82, %81, %75, %69, %61, %55, %49, %43, %37, %29, %22, %16
  %86 = load %struct.zd_chip*, %struct.zd_chip** %2, align 8
  %87 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @read_fw_regs_offset(%struct.zd_chip*) #1

declare dso_local i32 @set_mandatory_rates(%struct.zd_chip*, i32) #1

declare dso_local i32 @disable_hwint(%struct.zd_chip*) #1

declare dso_local i32 @read_pod(%struct.zd_chip*, i32*) #1

declare dso_local i32 @hw_init(%struct.zd_chip*) #1

declare dso_local i32 @zd_rf_init_hw(i32*, i32) #1

declare dso_local i32 @print_fw_version(%struct.zd_chip*) #1

declare dso_local i32 @read_cal_int_tables(%struct.zd_chip*) #1

declare dso_local i32 @print_id(%struct.zd_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
