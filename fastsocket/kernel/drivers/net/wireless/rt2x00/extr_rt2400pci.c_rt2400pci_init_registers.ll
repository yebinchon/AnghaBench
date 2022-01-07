; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_init_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.rt2x00_dev*, i32)* }
%struct.TYPE_4__ = type { i32 }

@PSCSR0 = common dso_local global i32 0, align 4
@PSCSR1 = common dso_local global i32 0, align 4
@PSCSR2 = common dso_local global i32 0, align 4
@PSCSR3 = common dso_local global i32 0, align 4
@TIMECSR = common dso_local global i32 0, align 4
@TIMECSR_US_COUNT = common dso_local global i32 0, align 4
@TIMECSR_US_64_COUNT = common dso_local global i32 0, align 4
@TIMECSR_BEACON_EXPECT = common dso_local global i32 0, align 4
@CSR9 = common dso_local global i32 0, align 4
@CSR9_MAX_FRAME_UNIT = common dso_local global i32 0, align 4
@CSR14 = common dso_local global i32 0, align 4
@CSR14_TSF_COUNT = common dso_local global i32 0, align 4
@CSR14_TSF_SYNC = common dso_local global i32 0, align 4
@CSR14_TBCN = common dso_local global i32 0, align 4
@CSR14_TCFP = common dso_local global i32 0, align 4
@CSR14_TATIMW = common dso_local global i32 0, align 4
@CSR14_BEACON_GEN = common dso_local global i32 0, align 4
@CSR14_CFP_COUNT_PRELOAD = common dso_local global i32 0, align 4
@CSR14_TBCM_PRELOAD = common dso_local global i32 0, align 4
@CNT3 = common dso_local global i32 0, align 4
@ARCSR0 = common dso_local global i32 0, align 4
@ARCSR0_AR_BBP_DATA0 = common dso_local global i32 0, align 4
@ARCSR0_AR_BBP_ID0 = common dso_local global i32 0, align 4
@ARCSR0_AR_BBP_DATA1 = common dso_local global i32 0, align 4
@ARCSR0_AR_BBP_ID1 = common dso_local global i32 0, align 4
@RXCSR3 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID0 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID0_VALID = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID1 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID1_VALID = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID2 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID2_VALID = common dso_local global i32 0, align 4
@PWRCSR0 = common dso_local global i32 0, align 4
@STATE_AWAKE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MACCSR0 = common dso_local global i32 0, align 4
@MACCSR1 = common dso_local global i32 0, align 4
@MACCSR2 = common dso_local global i32 0, align 4
@MACCSR2_DELAY = common dso_local global i32 0, align 4
@RALINKCSR = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_DATA0 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_ID0 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_DATA1 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_ID1 = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@CSR1_SOFT_RESET = common dso_local global i32 0, align 4
@CSR1_BBP_RESET = common dso_local global i32 0, align 4
@CSR1_HOST_READY = common dso_local global i32 0, align 4
@CNT0 = common dso_local global i32 0, align 4
@CNT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2400pci_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2400pci_init_registers(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = load i32, i32* @PSCSR0, align 4
  %7 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %5, i32 %6, i32 131074)
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = load i32, i32* @PSCSR1, align 4
  %10 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %8, i32 %9, i32 2)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @PSCSR2, align 4
  %13 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %11, i32 %12, i32 147232)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = load i32, i32* @PSCSR3, align 4
  %16 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %14, i32 %15, i32 2)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @TIMECSR, align 4
  %19 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %17, i32 %18, i32* %4)
  %20 = load i32, i32* @TIMECSR_US_COUNT, align 4
  %21 = call i32 @rt2x00_set_field32(i32* %4, i32 %20, i32 33)
  %22 = load i32, i32* @TIMECSR_US_64_COUNT, align 4
  %23 = call i32 @rt2x00_set_field32(i32* %4, i32 %22, i32 63)
  %24 = load i32, i32* @TIMECSR_BEACON_EXPECT, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %4, i32 %24, i32 0)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @TIMECSR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* @CSR9, align 4
  %32 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %30, i32 %31, i32* %4)
  %33 = load i32, i32* @CSR9_MAX_FRAME_UNIT, align 4
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 128
  %40 = call i32 @rt2x00_set_field32(i32* %4, i32 %33, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @CSR9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @CSR14, align 4
  %47 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %45, i32 %46, i32* %4)
  %48 = load i32, i32* @CSR14_TSF_COUNT, align 4
  %49 = call i32 @rt2x00_set_field32(i32* %4, i32 %48, i32 0)
  %50 = load i32, i32* @CSR14_TSF_SYNC, align 4
  %51 = call i32 @rt2x00_set_field32(i32* %4, i32 %50, i32 0)
  %52 = load i32, i32* @CSR14_TBCN, align 4
  %53 = call i32 @rt2x00_set_field32(i32* %4, i32 %52, i32 0)
  %54 = load i32, i32* @CSR14_TCFP, align 4
  %55 = call i32 @rt2x00_set_field32(i32* %4, i32 %54, i32 0)
  %56 = load i32, i32* @CSR14_TATIMW, align 4
  %57 = call i32 @rt2x00_set_field32(i32* %4, i32 %56, i32 0)
  %58 = load i32, i32* @CSR14_BEACON_GEN, align 4
  %59 = call i32 @rt2x00_set_field32(i32* %4, i32 %58, i32 0)
  %60 = load i32, i32* @CSR14_CFP_COUNT_PRELOAD, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %4, i32 %60, i32 0)
  %62 = load i32, i32* @CSR14_TBCM_PRELOAD, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %4, i32 %62, i32 0)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = load i32, i32* @CSR14, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %64, i32 %65, i32 %66)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %69 = load i32, i32* @CNT3, align 4
  %70 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %68, i32 %69, i32 1057488896)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @ARCSR0, align 4
  %73 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %71, i32 %72, i32* %4)
  %74 = load i32, i32* @ARCSR0_AR_BBP_DATA0, align 4
  %75 = call i32 @rt2x00_set_field32(i32* %4, i32 %74, i32 133)
  %76 = load i32, i32* @ARCSR0_AR_BBP_ID0, align 4
  %77 = call i32 @rt2x00_set_field32(i32* %4, i32 %76, i32 134)
  %78 = load i32, i32* @ARCSR0_AR_BBP_DATA1, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %4, i32 %78, i32 136)
  %80 = load i32, i32* @ARCSR0_AR_BBP_ID1, align 4
  %81 = call i32 @rt2x00_set_field32(i32* %4, i32 %80, i32 135)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = load i32, i32* @ARCSR0, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %82, i32 %83, i32 %84)
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %87 = load i32, i32* @RXCSR3, align 4
  %88 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %86, i32 %87, i32* %4)
  %89 = load i32, i32* @RXCSR3_BBP_ID0, align 4
  %90 = call i32 @rt2x00_set_field32(i32* %4, i32 %89, i32 3)
  %91 = load i32, i32* @RXCSR3_BBP_ID0_VALID, align 4
  %92 = call i32 @rt2x00_set_field32(i32* %4, i32 %91, i32 1)
  %93 = load i32, i32* @RXCSR3_BBP_ID1, align 4
  %94 = call i32 @rt2x00_set_field32(i32* %4, i32 %93, i32 32)
  %95 = load i32, i32* @RXCSR3_BBP_ID1_VALID, align 4
  %96 = call i32 @rt2x00_set_field32(i32* %4, i32 %95, i32 1)
  %97 = load i32, i32* @RXCSR3_BBP_ID2, align 4
  %98 = call i32 @rt2x00_set_field32(i32* %4, i32 %97, i32 36)
  %99 = load i32, i32* @RXCSR3_BBP_ID2_VALID, align 4
  %100 = call i32 @rt2x00_set_field32(i32* %4, i32 %99, i32 1)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %102 = load i32, i32* @RXCSR3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %101, i32 %102, i32 %103)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %106 = load i32, i32* @PWRCSR0, align 4
  %107 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %105, i32 %106, i32 1060843776)
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64 (%struct.rt2x00_dev*, i32)*, i64 (%struct.rt2x00_dev*, i32)** %113, align 8
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %116 = load i32, i32* @STATE_AWAKE, align 4
  %117 = call i64 %114(%struct.rt2x00_dev* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %1
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %183

122:                                              ; preds = %1
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = load i32, i32* @MACCSR0, align 4
  %125 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %123, i32 %124, i32 2191907)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %127 = load i32, i32* @MACCSR1, align 4
  %128 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %126, i32 %127, i32 2315544)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %130 = load i32, i32* @MACCSR2, align 4
  %131 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %129, i32 %130, i32* %4)
  %132 = load i32, i32* @MACCSR2_DELAY, align 4
  %133 = call i32 @rt2x00_set_field32(i32* %4, i32 %132, i32 64)
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %135 = load i32, i32* @MACCSR2, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %134, i32 %135, i32 %136)
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %139 = load i32, i32* @RALINKCSR, align 4
  %140 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %138, i32 %139, i32* %4)
  %141 = load i32, i32* @RALINKCSR_AR_BBP_DATA0, align 4
  %142 = call i32 @rt2x00_set_field32(i32* %4, i32 %141, i32 17)
  %143 = load i32, i32* @RALINKCSR_AR_BBP_ID0, align 4
  %144 = call i32 @rt2x00_set_field32(i32* %4, i32 %143, i32 154)
  %145 = load i32, i32* @RALINKCSR_AR_BBP_DATA1, align 4
  %146 = call i32 @rt2x00_set_field32(i32* %4, i32 %145, i32 0)
  %147 = load i32, i32* @RALINKCSR_AR_BBP_ID1, align 4
  %148 = call i32 @rt2x00_set_field32(i32* %4, i32 %147, i32 154)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %150 = load i32, i32* @RALINKCSR, align 4
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %149, i32 %150, i32 %151)
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %154 = load i32, i32* @CSR1, align 4
  %155 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %153, i32 %154, i32* %4)
  %156 = load i32, i32* @CSR1_SOFT_RESET, align 4
  %157 = call i32 @rt2x00_set_field32(i32* %4, i32 %156, i32 1)
  %158 = load i32, i32* @CSR1_BBP_RESET, align 4
  %159 = call i32 @rt2x00_set_field32(i32* %4, i32 %158, i32 0)
  %160 = load i32, i32* @CSR1_HOST_READY, align 4
  %161 = call i32 @rt2x00_set_field32(i32* %4, i32 %160, i32 0)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %163 = load i32, i32* @CSR1, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %162, i32 %163, i32 %164)
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %167 = load i32, i32* @CSR1, align 4
  %168 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %166, i32 %167, i32* %4)
  %169 = load i32, i32* @CSR1_SOFT_RESET, align 4
  %170 = call i32 @rt2x00_set_field32(i32* %4, i32 %169, i32 0)
  %171 = load i32, i32* @CSR1_HOST_READY, align 4
  %172 = call i32 @rt2x00_set_field32(i32* %4, i32 %171, i32 1)
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %174 = load i32, i32* @CSR1, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %173, i32 %174, i32 %175)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %178 = load i32, i32* @CNT0, align 4
  %179 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %177, i32 %178, i32* %4)
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %181 = load i32, i32* @CNT4, align 4
  %182 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %180, i32 %181, i32* %4)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %122, %119
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
