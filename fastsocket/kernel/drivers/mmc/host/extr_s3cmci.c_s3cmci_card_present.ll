; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_card_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_card_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.s3cmci_host = type { %struct.s3c24xx_mci_pdata* }
%struct.s3c24xx_mci_pdata = type { i64, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @s3cmci_card_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_card_present(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.s3cmci_host*, align 8
  %5 = alloca %struct.s3c24xx_mci_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.s3cmci_host* %8, %struct.s3cmci_host** %4, align 8
  %9 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %10 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %9, i32 0, i32 0
  %11 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %10, align 8
  store %struct.s3c24xx_mci_pdata* %11, %struct.s3c24xx_mci_pdata** %5, align 8
  %12 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %5, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_mci_pdata, %struct.s3c24xx_mci_pdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %5, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_mci_pdata, %struct.s3c24xx_mci_pdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @gpio_get_value(i64 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.s3c24xx_mci_pdata*, %struct.s3c24xx_mci_pdata** %5, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_mci_pdata, %struct.s3c24xx_mci_pdata* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %27, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @gpio_get_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
