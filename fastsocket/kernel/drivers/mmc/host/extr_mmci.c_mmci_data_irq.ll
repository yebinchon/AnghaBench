; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_data_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, i64, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i64 }

@MCI_DATABLOCKEND = common dso_local global i32 0, align 4
@MCI_DATACRCFAIL = common dso_local global i32 0, align 4
@MCI_DATATIMEOUT = common dso_local global i32 0, align 4
@MCI_TXUNDERRUN = common dso_local global i32 0, align 4
@MCI_RXOVERRUN = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MCI_DATAEND = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, %struct.mmc_data*, i32)* @mmci_data_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_data_irq(%struct.mmci_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mmci_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MCI_DATABLOCKEND, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %16 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  br label %21

21:                                               ; preds = %11, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MCI_DATACRCFAIL, align 4
  %24 = load i32, i32* @MCI_DATATIMEOUT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MCI_TXUNDERRUN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MCI_RXOVERRUN, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %22, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MCI_DATACRCFAIL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @EILSEQ, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %66

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MCI_DATATIMEOUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %65

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MCI_TXUNDERRUN, align 4
  %55 = load i32, i32* @MCI_RXOVERRUN, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %52
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* @MCI_DATAEND, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %71 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MMC_DATA_READ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %83 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sg_page(i32 %84)
  %86 = call i32 @flush_dcache_page(i32 %85)
  br label %87

87:                                               ; preds = %81, %74, %66
  br label %88

88:                                               ; preds = %87, %21
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MCI_DATAEND, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %95 = call i32 @mmci_stop_data(%struct.mmci_host* %94)
  %96 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %102 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %103 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mmci_request_end(%struct.mmci_host* %101, i32 %104)
  br label %112

106:                                              ; preds = %93
  %107 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %108 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %109 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mmci_start_command(%struct.mmci_host* %107, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %88
  ret void
}

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @mmci_stop_data(%struct.mmci_host*) #1

declare dso_local i32 @mmci_request_end(%struct.mmci_host*, i32) #1

declare dso_local i32 @mmci_start_command(%struct.mmci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
