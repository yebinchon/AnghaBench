; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_start_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_start_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i64, i32 }

@MMC_REG_STR_STP_CLK = common dso_local global i64 0, align 8
@STR_STP_CLK_STOP_CLK = common dso_local global i32 0, align 4
@IMXMCI_PEND_STARTED_b = common dso_local global i32 0, align 4
@STR_STP_CLK_START_CLK = common dso_local global i32 0, align 4
@MMC_REG_STATUS = common dso_local global i64 0, align 8
@STATUS_CARD_BUS_CLK_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"imxmci_start_clock blocked, no luck\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxmci_host*)* @imxmci_start_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxmci_start_clock(%struct.imxmci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imxmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imxmci_host* %0, %struct.imxmci_host** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 128, i32* %5, align 4
  %9 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %10 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readw(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @STR_STP_CLK_STOP_CLK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %20 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writew(i32 %18, i64 %23)
  %25 = load i32, i32* @IMXMCI_PEND_STARTED_b, align 4
  %26 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %26, i32 0, i32 2
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %30 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %39 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %109, %1
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %81, %44
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %52 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMC_REG_STATUS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readw(i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @STATUS_CARD_BUS_CLK_RUN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %63 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MMC_REG_STATUS, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readw(i64 %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %61, %50
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @STATUS_CARD_BUS_CLK_RUN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %119

74:                                               ; preds = %68
  %75 = load i32, i32* @IMXMCI_PEND_STARTED_b, align 4
  %76 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %77 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %76, i32 0, i32 2
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %119

81:                                               ; preds = %74
  br label %46

82:                                               ; preds = %46
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @local_irq_save(i64 %83)
  %85 = load i32, i32* @IMXMCI_PEND_STARTED_b, align 4
  %86 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %87 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %86, i32 0, i32 2
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %92 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @readw(i64 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %101 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writew(i32 %99, i64 %104)
  br label %106

106:                                              ; preds = %90, %82
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @local_irq_restore(i64 %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %4, align 4
  %112 = icmp ult i32 %111, 256
  br i1 %112, label %44, label %113

113:                                              ; preds = %109
  %114 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %115 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mmc_dev(i32 %116)
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %80, %73
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
