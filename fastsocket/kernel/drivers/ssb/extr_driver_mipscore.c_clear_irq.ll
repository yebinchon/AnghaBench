; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_clear_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_clear_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ssb_device* }
%struct.ssb_device = type { i32 }

@SSB_INTVEC = common dso_local global i32 0, align 4
@SSB_IPSFLAG = common dso_local global i32 0, align 4
@ipsflag_irq_mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_bus*, i32)* @clear_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_irq(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %7 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ssb_device*, %struct.ssb_device** %8, align 8
  store %struct.ssb_device* %9, %struct.ssb_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %14 = load i32, i32* @SSB_INTVEC, align 4
  %15 = call i32 @ssb_write32(%struct.ssb_device* %13, i32 %14, i32 0)
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %18 = load i32, i32* @SSB_IPSFLAG, align 4
  %19 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %20 = load i32, i32* @SSB_IPSFLAG, align 4
  %21 = call i32 @ssb_read32(%struct.ssb_device* %19, i32 %20)
  %22 = load i32*, i32** @ipsflag_irq_mask, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %21, %26
  %28 = call i32 @ssb_write32(%struct.ssb_device* %17, i32 %18, i32 %27)
  br label %29

29:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
