; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_adc_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_adc_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64 }

@PCAP_REG_ADC = common dso_local global i32 0, align 4
@PCAP_ADC_TS_M_MASK = common dso_local global i32 0, align 4
@PCAP_ADC_TS_REF_LOWPWR = common dso_local global i32 0, align 4
@PCAP_ADC_ADEN = common dso_local global i32 0, align 4
@PCAP_ADC_BANK_1 = common dso_local global i64 0, align 8
@PCAP_ADC_AD_SEL1 = common dso_local global i32 0, align 4
@PCAP_REG_ADR = common dso_local global i32 0, align 4
@PCAP_ADR_ASC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcap_chip*)* @pcap_adc_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_adc_trigger(%struct.pcap_chip* %0) #0 {
  %2 = alloca %struct.pcap_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pcap_chip* %0, %struct.pcap_chip** %2, align 8
  %5 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %6 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %9 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %12 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %20 = call i32 @pcap_disable_adc(%struct.pcap_chip* %19)
  %21 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %22 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  br label %71

24:                                               ; preds = %1
  %25 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %26 = load i32, i32* @PCAP_REG_ADC, align 4
  %27 = call i32 @ezx_pcap_read(%struct.pcap_chip* %25, i32 %26, i32* %3)
  %28 = load i32, i32* @PCAP_ADC_TS_M_MASK, align 4
  %29 = load i32, i32* @PCAP_ADC_TS_REF_LOWPWR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %34 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCAP_ADC_ADEN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %46 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCAP_ADC_BANK_1, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %24
  %56 = load i32, i32* @PCAP_ADC_AD_SEL1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %24
  %60 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %61 = load i32, i32* @PCAP_REG_ADC, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ezx_pcap_write(%struct.pcap_chip* %60, i32 %61, i32 %62)
  %64 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %65 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %68 = load i32, i32* @PCAP_REG_ADR, align 4
  %69 = load i32, i32* @PCAP_ADR_ASC, align 4
  %70 = call i32 @ezx_pcap_write(%struct.pcap_chip* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcap_disable_adc(%struct.pcap_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ezx_pcap_read(%struct.pcap_chip*, i32, i32*) #1

declare dso_local i32 @ezx_pcap_write(%struct.pcap_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
