; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_chip = type { i32 }

@save_alt_dbdma = common dso_local global i32 0, align 4
@save_fcr = common dso_local global i8** null, align 8
@save_dbdma = common dso_local global i32 0, align 4
@save_mbcr = common dso_local global i8* null, align 8
@HEATHROW_FCR = common dso_local global i32 0, align 4
@HRW_SOUND_POWER_N = common dso_local global i32 0, align 4
@HRW_SOUND_CLK_ENABLE = common dso_local global i32 0, align 4
@HRW_IOBUS_ENABLE = common dso_local global i32 0, align 4
@HRW_IDE0_RESET_N = common dso_local global i32 0, align 4
@HRW_BMAC_IO_ENABLE = common dso_local global i32 0, align 4
@HRW_BMAC_RESET = common dso_local global i32 0, align 4
@HRW_GPIO_MODEM_RESET = common dso_local global i32 0, align 4
@HRW_SCC_TRANS_EN_N = common dso_local global i32 0, align 4
@OH_SCCA_IO = common dso_local global i32 0, align 4
@OH_SCCB_IO = common dso_local global i32 0, align 4
@HRW_SCC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macio_chip*, i32)* @heathrow_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heathrow_sleep(%struct.macio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.macio_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.macio_chip* %0, %struct.macio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.macio_chip*, %struct.macio_chip** %3, align 8
  %9 = load i32, i32* @save_alt_dbdma, align 4
  %10 = call i32 @dbdma_save(%struct.macio_chip* %8, i32 %9)
  %11 = call i8* @MACIO_IN32(i32 56)
  %12 = load i8**, i8*** @save_fcr, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 2
  store i8* %11, i8** %13, align 8
  %14 = call i8* @MACIO_IN32(i32 60)
  %15 = load i8**, i8*** @save_fcr, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 3
  store i8* %14, i8** %16, align 8
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.macio_chip*, %struct.macio_chip** %3, align 8
  %19 = load i32, i32* @save_dbdma, align 4
  %20 = call i32 @dbdma_save(%struct.macio_chip* %18, i32 %19)
  %21 = call i8* @MACIO_IN32(i32 56)
  %22 = load i8**, i8*** @save_fcr, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %21, i8** %23, align 8
  %24 = call i8* @MACIO_IN32(i32 60)
  %25 = load i8**, i8*** @save_fcr, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @MACIO_IN32(i32 52)
  store i8* %27, i8** @save_mbcr, align 8
  %28 = load i32, i32* @HEATHROW_FCR, align 4
  %29 = load i32, i32* @HRW_SOUND_POWER_N, align 4
  %30 = call i32 @MACIO_BIS(i32 %28, i32 %29)
  %31 = load i32, i32* @HEATHROW_FCR, align 4
  %32 = load i32, i32* @HRW_SOUND_CLK_ENABLE, align 4
  %33 = call i32 @MACIO_BIC(i32 %31, i32 %32)
  %34 = load i32, i32* @HEATHROW_FCR, align 4
  %35 = load i32, i32* @HRW_IOBUS_ENABLE, align 4
  %36 = call i32 @MACIO_BIC(i32 %34, i32 %35)
  %37 = load i32, i32* @HEATHROW_FCR, align 4
  %38 = load i32, i32* @HRW_IDE0_RESET_N, align 4
  %39 = call i32 @MACIO_BIC(i32 %37, i32 %38)
  %40 = load i32, i32* @HEATHROW_FCR, align 4
  %41 = load i32, i32* @HRW_BMAC_IO_ENABLE, align 4
  %42 = load i32, i32* @HRW_BMAC_RESET, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @MACIO_BIC(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %17, %7
  %46 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %47 = load i32, i32* @HRW_GPIO_MODEM_RESET, align 4
  %48 = call i32 @MACIO_IN8(i32 %47)
  %49 = and i32 %48, -2
  %50 = call i32 @MACIO_OUT8(i32 %46, i32 %49)
  %51 = load i32, i32* @HEATHROW_FCR, align 4
  %52 = load i32, i32* @HRW_SCC_TRANS_EN_N, align 4
  %53 = call i32 @MACIO_BIS(i32 %51, i32 %52)
  %54 = load i32, i32* @HEATHROW_FCR, align 4
  %55 = load i32, i32* @OH_SCCA_IO, align 4
  %56 = load i32, i32* @OH_SCCB_IO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @HRW_SCC_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @MACIO_BIC(i32 %54, i32 %59)
  %61 = load i32, i32* @HEATHROW_FCR, align 4
  %62 = call i8* @MACIO_IN32(i32 %61)
  ret void
}

declare dso_local i32 @dbdma_save(%struct.macio_chip*, i32) #1

declare dso_local i8* @MACIO_IN32(i32) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
