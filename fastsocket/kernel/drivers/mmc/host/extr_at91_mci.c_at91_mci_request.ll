; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32 }
%struct.at91mci_host = type { i32, i64, %struct.mmc_request* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @at91_mci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.at91mci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.at91mci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.at91mci_host* %7, %struct.at91mci_host** %5, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %10 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %9, i32 0, i32 2
  store %struct.mmc_request* %8, %struct.mmc_request** %10, align 8
  %11 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %12 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %14 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %13, i32 0, i32 0
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @mod_timer(i32* %14, i64 %17)
  %19 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %20 = call i32 @at91_mci_process_next(%struct.at91mci_host* %19)
  ret void
}

declare dso_local %struct.at91mci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @at91_mci_process_next(%struct.at91mci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
