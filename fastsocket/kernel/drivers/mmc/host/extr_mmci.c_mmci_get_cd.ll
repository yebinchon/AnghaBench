; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_get_cd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmci.c_mmci_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmci_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmci_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmci_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = call %struct.mmci_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.mmci_host* %6, %struct.mmci_host** %3, align 8
  %7 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ENOSYS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %15 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mmc_dev(i32 %21)
  %23 = call i32 %18(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gpio_get_value(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local %struct.mmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
