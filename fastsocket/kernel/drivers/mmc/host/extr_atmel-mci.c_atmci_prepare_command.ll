; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_prepare_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_prepare_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_command = type { i32, %struct.mmc_data*, i32, i32 }
%struct.mmc_data = type { i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MCI_CMDR_RSPTYP_136BIT = common dso_local global i32 0, align 4
@MCI_CMDR_RSPTYP_48BIT = common dso_local global i32 0, align 4
@MCI_CMDR_MAXLAT_64CYC = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@MCI_CMDR_OPDCMD = common dso_local global i32 0, align 4
@MCI_CMDR_START_XFER = common dso_local global i32 0, align 4
@MMC_DATA_STREAM = common dso_local global i32 0, align 4
@MCI_CMDR_STREAM = common dso_local global i32 0, align 4
@MCI_CMDR_MULTI_BLOCK = common dso_local global i32 0, align 4
@MCI_CMDR_BLOCK = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MCI_CMDR_TRDIR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_command*)* @atmci_prepare_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_prepare_command(%struct.mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load i32, i32* @EINPROGRESS, align 4
  %8 = sub nsw i32 0, %7
  %9 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @MCI_CMDR_CMDNB(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MMC_RSP_136, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @MCI_CMDR_RSPTYP_136BIT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @MCI_CMDR_RSPTYP_48BIT, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* @MCI_CMDR_MAXLAT_64CYC, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @MCI_CMDR_OPDCMD, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %37
  %52 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %52, i32 0, i32 1
  %54 = load %struct.mmc_data*, %struct.mmc_data** %53, align 8
  store %struct.mmc_data* %54, %struct.mmc_data** %5, align 8
  %55 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %56 = icmp ne %struct.mmc_data* %55, null
  br i1 %56, label %57, label %97

57:                                               ; preds = %51
  %58 = load i32, i32* @MCI_CMDR_START_XFER, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MMC_DATA_STREAM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @MCI_CMDR_STREAM, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %85

71:                                               ; preds = %57
  %72 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @MCI_CMDR_MULTI_BLOCK, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @MCI_CMDR_BLOCK, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MMC_DATA_READ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @MCI_CMDR_TRDIR_READ, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %85
  br label %97

97:                                               ; preds = %96, %51
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @MCI_CMDR_CMDNB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
