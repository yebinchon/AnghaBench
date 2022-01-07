; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_finish_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { %struct.mmc_data*, i32, i32, i32, i32, i32, i32 }
%struct.mmc_data = type { i32, i32, i32 }

@IMXMCI_PEND_DMA_DATA_b = common dso_local global i32 0, align 4
@STATUS_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"request failed. status: 0x%08x\0A\00", align 1
@STATUS_CRC_READ_ERR = common dso_local global i32 0, align 4
@STATUS_CRC_WRITE_ERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@STATUS_TIME_OUT_READ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxmci_host*, i32)* @imxmci_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxmci_finish_data(%struct.imxmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.imxmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.imxmci_host* %0, %struct.imxmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %8 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %7, i32 0, i32 0
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %5, align 8
  %10 = load i32, i32* @IMXMCI_PEND_DMA_DATA_b, align 4
  %11 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %12 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %11, i32 0, i32 6
  %13 = call i64 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %17 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @imx_dma_disable(i32 %18)
  %20 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %21 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mmc_dev(i32 %22)
  %24 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %28 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %31 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_unmap_sg(i32 %23, i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %15, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @STATUS_ERR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %41 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mmc_dev(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @STATUS_CRC_READ_ERR, align 4
  %48 = load i32, i32* @STATUS_CRC_WRITE_ERR, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load i32, i32* @EILSEQ, align 4
  %54 = sub nsw i32 0, %53
  %55 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %73

57:                                               ; preds = %39
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @STATUS_TIME_OUT_READ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  %65 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %66 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %72

67:                                               ; preds = %57
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %52
  br label %80

74:                                               ; preds = %34
  %75 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %76 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %73
  %81 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %82 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %85 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %84, i32 0, i32 0
  store %struct.mmc_data* null, %struct.mmc_data** %85, align 8
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @imx_dma_disable(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
