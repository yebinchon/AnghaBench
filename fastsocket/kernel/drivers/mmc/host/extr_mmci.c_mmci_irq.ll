; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32, %struct.mmc_command*, %struct.mmc_data*, i64 }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i32 }

@MMCISTATUS = common dso_local global i64 0, align 8
@MMCIMASK0 = common dso_local global i64 0, align 8
@MMCICLEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"irq0 %08x\0A\00", align 1
@MCI_DATACRCFAIL = common dso_local global i32 0, align 4
@MCI_DATATIMEOUT = common dso_local global i32 0, align 4
@MCI_TXUNDERRUN = common dso_local global i32 0, align 4
@MCI_RXOVERRUN = common dso_local global i32 0, align 4
@MCI_DATAEND = common dso_local global i32 0, align 4
@MCI_DATABLOCKEND = common dso_local global i32 0, align 4
@MCI_CMDCRCFAIL = common dso_local global i32 0, align 4
@MCI_CMDTIMEOUT = common dso_local global i32 0, align 4
@MCI_CMDSENT = common dso_local global i32 0, align 4
@MCI_CMDRESPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mmci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_command*, align 8
  %9 = alloca %struct.mmc_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mmci_host*
  store %struct.mmci_host* %11, %struct.mmci_host** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %13 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  br label %15

15:                                               ; preds = %88, %2
  %16 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MMCISTATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %23 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMCIMASK0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %32 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMCICLEAR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DBG(%struct.mmci_host* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %41 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %40, i32 0, i32 2
  %42 = load %struct.mmc_data*, %struct.mmc_data** %41, align 8
  store %struct.mmc_data* %42, %struct.mmc_data** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MCI_DATACRCFAIL, align 4
  %45 = load i32, i32* @MCI_DATATIMEOUT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MCI_TXUNDERRUN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MCI_RXOVERRUN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MCI_DATAEND, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MCI_DATABLOCKEND, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %43, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %15
  %58 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %59 = icmp ne %struct.mmc_data* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %62 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @mmci_data_irq(%struct.mmci_host* %61, %struct.mmc_data* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %57, %15
  %66 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %67 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %66, i32 0, i32 1
  %68 = load %struct.mmc_command*, %struct.mmc_command** %67, align 8
  store %struct.mmc_command* %68, %struct.mmc_command** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MCI_CMDCRCFAIL, align 4
  %71 = load i32, i32* @MCI_CMDTIMEOUT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MCI_CMDSENT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MCI_CMDRESPEND, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %69, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %81 = icmp ne %struct.mmc_command* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %84 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @mmci_cmd_irq(%struct.mmci_host* %83, %struct.mmc_command* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79, %65
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %15, label %91

91:                                               ; preds = %88
  %92 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %93 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @IRQ_RETVAL(i32 %95)
  ret i32 %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DBG(%struct.mmci_host*, i8*, i32) #1

declare dso_local i32 @mmci_data_irq(%struct.mmci_host*, %struct.mmc_data*, i32) #1

declare dso_local i32 @mmci_cmd_irq(%struct.mmci_host*, %struct.mmc_command*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
