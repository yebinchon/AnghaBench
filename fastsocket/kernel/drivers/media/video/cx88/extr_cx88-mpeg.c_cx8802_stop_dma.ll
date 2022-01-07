; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_stop_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"cx8802_stop_dma\0A\00", align 1
@MO_TS_DMACNTRL = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@PCI_INT_TSINT = common dso_local global i32 0, align 4
@MO_TS_INTMSK = common dso_local global i32 0, align 4
@TS_GEN_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*)* @cx8802_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_stop_dma(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %4 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %4, i32 0, i32 0
  %6 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  store %struct.cx88_core* %6, %struct.cx88_core** %3, align 8
  %7 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @MO_TS_DMACNTRL, align 4
  %9 = call i32 @cx_clear(i32 %8, i32 17)
  %10 = load i32, i32* @MO_PCI_INTMSK, align 4
  %11 = load i32, i32* @PCI_INT_TSINT, align 4
  %12 = call i32 @cx_clear(i32 %10, i32 %11)
  %13 = load i32, i32* @MO_TS_INTMSK, align 4
  %14 = call i32 @cx_clear(i32 %13, i32 2031633)
  %15 = load i32, i32* @TS_GEN_CNTRL, align 4
  %16 = call i32 @cx_write(i32 %15, i32 205)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
