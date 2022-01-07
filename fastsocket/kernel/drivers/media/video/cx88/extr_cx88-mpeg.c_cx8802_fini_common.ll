; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_fini_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-mpeg.c_cx8802_fini_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cx8802_fini_common\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8802_dev*)* @cx8802_fini_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx8802_fini_common(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %3 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %5 = call i32 @cx8802_stop_dma(%struct.cx8802_dev* %4)
  %6 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call i32 @pci_disable_device(%struct.TYPE_6__* %8)
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.cx8802_dev* %15)
  %17 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @pci_set_drvdata(%struct.TYPE_6__* %19, i32* null)
  %21 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %22 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @btcx_riscmem_free(%struct.TYPE_6__* %23, i32* %26)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx8802_stop_dma(%struct.cx8802_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @free_irq(i32, %struct.cx8802_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @btcx_riscmem_free(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
