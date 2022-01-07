; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_dev-hsmmc.c_s3c_sdhci0_set_platdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_dev-hsmmc.c_s3c_sdhci0_set_platdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_sdhci_platdata = type { i64, i64, i32 }

@s3c_hsmmc0_def_platdata = common dso_local global %struct.s3c_sdhci_platdata zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_sdhci0_set_platdata(%struct.s3c_sdhci_platdata* %0) #0 {
  %2 = alloca %struct.s3c_sdhci_platdata*, align 8
  %3 = alloca %struct.s3c_sdhci_platdata*, align 8
  store %struct.s3c_sdhci_platdata* %0, %struct.s3c_sdhci_platdata** %2, align 8
  store %struct.s3c_sdhci_platdata* @s3c_hsmmc0_def_platdata, %struct.s3c_sdhci_platdata** %3, align 8
  %4 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %2, align 8
  %5 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %3, align 8
  %8 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %2, align 8
  %10 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %2, align 8
  %15 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %3, align 8
  %18 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %2, align 8
  %21 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %2, align 8
  %26 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %3, align 8
  %29 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
