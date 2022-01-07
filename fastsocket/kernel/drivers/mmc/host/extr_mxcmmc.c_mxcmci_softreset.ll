; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_softreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i64 }

@STR_STP_CLK_RESET = common dso_local global i32 0, align 4
@MMC_REG_STR_STP_CLK = common dso_local global i64 0, align 8
@STR_STP_CLK_START_CLK = common dso_local global i32 0, align 4
@MMC_REG_RES_TO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*)* @mxcmci_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_softreset(%struct.mxcmci_host* %0) #0 {
  %2 = alloca %struct.mxcmci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %2, align 8
  %4 = load i32, i32* @STR_STP_CLK_RESET, align 4
  %5 = load %struct.mxcmci_host*, %struct.mxcmci_host** %2, align 8
  %6 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writew(i32 %4, i64 %9)
  %11 = load i32, i32* @STR_STP_CLK_RESET, align 4
  %12 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.mxcmci_host*, %struct.mxcmci_host** %2, align 8
  %15 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writew(i32 %13, i64 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %25 = load %struct.mxcmci_host*, %struct.mxcmci_host** %2, align 8
  %26 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writew(i32 %24, i64 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.mxcmci_host*, %struct.mxcmci_host** %2, align 8
  %36 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MMC_REG_RES_TO, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i32 255, i64 %39)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
