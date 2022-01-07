; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_get_cd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_spi_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_spi_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_spi_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_spi_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = call %struct.mmc_spi_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.mmc_spi_host* %6, %struct.mmc_spi_host** %4, align 8
  %7 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = icmp ne i32 (i32)* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %23(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %11, %1
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.mmc_spi_host* @mmc_priv(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
