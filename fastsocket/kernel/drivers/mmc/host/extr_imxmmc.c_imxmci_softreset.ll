; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_softreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i64 }

@MMC_REG_STR_STP_CLK = common dso_local global i64 0, align 8
@MMC_REG_RES_TO = common dso_local global i64 0, align 8
@MMC_REG_BLK_LEN = common dso_local global i64 0, align 8
@MMC_REG_NOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxmci_host*)* @imxmci_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_softreset(%struct.imxmci_host* %0) #0 {
  %2 = alloca %struct.imxmci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.imxmci_host* %0, %struct.imxmci_host** %2, align 8
  %4 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %5 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writew(i32 8, i64 %8)
  %10 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %11 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writew(i32 13, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %26, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %21 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 5, i64 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %31 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MMC_REG_RES_TO, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 255, i64 %34)
  %36 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %37 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC_REG_BLK_LEN, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writew(i32 512, i64 %40)
  %42 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %43 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC_REG_NOB, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writew(i32 1, i64 %46)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
