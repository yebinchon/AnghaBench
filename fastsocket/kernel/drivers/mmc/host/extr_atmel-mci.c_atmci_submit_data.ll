; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_submit_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_submit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i32, i64, i32*, i32*, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32*, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ATMCI_DATA_ERROR_FLAGS = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MCI_RXRDY = common dso_local global i32 0, align 4
@MCI_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_mci*, %struct.mmc_data*)* @atmci_submit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_submit_data(%struct.atmel_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.atmel_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.atmel_mci* %0, %struct.atmel_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load i32, i32* @EINPROGRESS, align 4
  %7 = sub nsw i32 0, %6
  %8 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %10, i32 0, i32 4
  %12 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %13 = call i32 @WARN_ON(%struct.mmc_data* %12)
  %14 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %17, i32 0, i32 4
  store %struct.mmc_data* %16, %struct.mmc_data** %18, align 8
  %19 = load i32, i32* @ATMCI_DATA_ERROR_FLAGS, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %21 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %22 = call i64 @atmci_submit_data_dma(%struct.atmel_mci* %20, %struct.mmc_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %2
  %25 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = icmp slt i32 %33, 12
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  %36 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35, %24
  %46 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %47 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %35
  %49 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MMC_DATA_READ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i32, i32* @MCI_RXRDY, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %48
  %67 = load i32, i32* @MCI_TXRDY, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @WARN_ON(%struct.mmc_data*) #1

declare dso_local i64 @atmci_submit_data_dma(%struct.atmel_mci*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
