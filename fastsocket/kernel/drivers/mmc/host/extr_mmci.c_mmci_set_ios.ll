; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i32, i32 }
%struct.mmci_host = type { i64, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@AMBA_VENDOR_ST = common dso_local global i64 0, align 8
@MCI_PWR_UP = common dso_local global i32 0, align 4
@MCI_PWR_ON = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@MCI_ROD = common dso_local global i32 0, align 4
@MCI_OD = common dso_local global i32 0, align 4
@MMCIPOWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mmci_host* %9, %struct.mmci_host** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %71 [
    i32 130, label %13
    i32 128, label %30
    i32 129, label %67
  ]

13:                                               ; preds = %2
  %14 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %15 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %20 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regulator_is_enabled(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %26 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regulator_disable(i32 %27)
  br label %29

29:                                               ; preds = %24, %18, %13
  br label %71

30:                                               ; preds = %2
  %31 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %32 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %30
  %36 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %37 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = icmp ne i32 (i32, i32)* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %44 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = call i32 @mmc_dev(%struct.mmc_host* %48)
  %50 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %47(i32 %49, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %42, %35, %30
  %57 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %58 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AMBA_VENDOR_ST, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @MCI_PWR_UP, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %2, %66
  %68 = load i32, i32* @MCI_PWR_ON, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %2, %67, %62, %29
  %72 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %79 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AMBA_VENDOR_ST, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @MCI_ROD, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @MCI_OD, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %94 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %93, i32 0, i32 1
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %98 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @mmci_set_clkreg(%struct.mmci_host* %97, i32 %100)
  %102 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %103 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %110 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %113 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MMCIPOWER, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  br label %118

118:                                              ; preds = %107, %92
  %119 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %120 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %119, i32 0, i32 1
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  ret void
}

declare dso_local %struct.mmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @regulator_is_enabled(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmci_set_clkreg(%struct.mmci_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
