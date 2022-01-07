; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"pcf50633_irq\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcf50633_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcf50633*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pcf50633*
  store %struct.pcf50633* %7, %struct.pcf50633** %5, align 8
  %8 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %9 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %13 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @get_device(i32 %14)
  %16 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %17 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @disable_irq_nosync(i32 %18)
  %20 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %21 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %24 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %23, i32 0, i32 0
  %25 = call i32 @queue_work(i32 %22, i32* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @get_device(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
