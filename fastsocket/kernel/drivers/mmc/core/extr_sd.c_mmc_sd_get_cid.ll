; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_sd_get_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd.c_mmc_sd_get_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }

@SD_OCR_CCS = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@SD_OCR_S18R = common dso_local global i32 0, align 4
@MMC_CAP_SET_XPC_330 = common dso_local global i32 0, align 4
@MMC_CAP_SET_XPC_300 = common dso_local global i32 0, align 4
@MMC_CAP_SET_XPC_180 = common dso_local global i32 0, align 4
@SD_OCR_XPC = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_sd_get_cid(%struct.mmc_host* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %12 = call i32 @mmc_go_idle(%struct.mmc_host* %11)
  %13 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mmc_send_if_cond(%struct.mmc_host* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @SD_OCR_CCS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %27 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %25, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @SD_OCR_S18R, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MMC_CAP_SET_XPC_330, align 4
  %46 = load i32, i32* @MMC_CAP_SET_XPC_300, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MMC_CAP_SET_XPC_180, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @SD_OCR_XPC, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %41
  br label %57

57:                                               ; preds = %84, %56
  %58 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @mmc_send_app_op_cond(%struct.mmc_host* %58, i32 %59, i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %104

66:                                               ; preds = %57
  %67 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %68 = call i64 @mmc_host_is_spi(%struct.mmc_host* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 1090519040
  %77 = icmp eq i32 %76, 1090519040
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %80 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %81 = call i32 @mmc_set_signal_voltage(%struct.mmc_host* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @SD_OCR_S18R, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %57

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %73, %70, %66
  %91 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %92 = call i64 @mmc_host_is_spi(%struct.mmc_host* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @mmc_send_cid(%struct.mmc_host* %95, i32* %96)
  store i32 %97, i32* %10, align 4
  br label %102

98:                                               ; preds = %90
  %99 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @mmc_all_send_cid(%struct.mmc_host* %99, i32* %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %64
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #1

declare dso_local i32 @mmc_send_if_cond(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_send_app_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_signal_voltage(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_send_cid(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_all_send_cid(%struct.mmc_host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
