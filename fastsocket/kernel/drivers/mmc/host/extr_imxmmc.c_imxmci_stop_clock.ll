; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_stop_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_stop_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i64 }

@MMC_REG_STR_STP_CLK = common dso_local global i64 0, align 8
@STR_STP_CLK_START_CLK = common dso_local global i32 0, align 4
@STR_STP_CLK_STOP_CLK = common dso_local global i32 0, align 4
@MMC_REG_STATUS = common dso_local global i64 0, align 8
@STATUS_CARD_BUS_CLK_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"imxmci_stop_clock blocked, no luck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxmci_host*)* @imxmci_stop_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_stop_clock(%struct.imxmci_host* %0) #0 {
  %2 = alloca %struct.imxmci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imxmci_host* %0, %struct.imxmci_host** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %6 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readw(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %16 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writew(i32 %14, i64 %19)
  br label %21

21:                                               ; preds = %68, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 4096
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 127
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %30 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @STR_STP_CLK_STOP_CLK, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %39 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %28, %24
  %45 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %46 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMC_REG_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readw(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @STATUS_CARD_BUS_CLK_RUN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %44
  %56 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %57 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MMC_REG_STATUS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readw(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @STATUS_CARD_BUS_CLK_RUN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %77

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %21

71:                                               ; preds = %21
  %72 = load %struct.imxmci_host*, %struct.imxmci_host** %2, align 8
  %73 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mmc_dev(i32 %74)
  %76 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %66
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
