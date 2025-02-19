; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_cs.c_orinoco_cs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_cs.c_orinoco_cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.orinoco_private*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.orinoco_private = type { %struct.orinoco_pccard* }
%struct.orinoco_pccard = type { %struct.pcmcia_device* }

@orinoco_cs_hard_reset = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@orinoco_interrupt = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @orinoco_cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_cs_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.orinoco_private*, align 8
  %5 = alloca %struct.orinoco_pccard*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 3
  %8 = load i32, i32* @orinoco_cs_hard_reset, align 4
  %9 = call %struct.orinoco_private* @alloc_orinocodev(i32 8, i32* %7, i32 %8, i32* null)
  store %struct.orinoco_private* %9, %struct.orinoco_private** %4, align 8
  %10 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %11 = icmp ne %struct.orinoco_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %17 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %16, i32 0, i32 0
  %18 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %17, align 8
  store %struct.orinoco_pccard* %18, %struct.orinoco_pccard** %5, align 8
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %5, align 8
  %21 = getelementptr inbounds %struct.orinoco_pccard, %struct.orinoco_pccard* %20, i32 0, i32 0
  store %struct.pcmcia_device* %19, %struct.pcmcia_device** %21, align 8
  %22 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 2
  store %struct.orinoco_private* %22, %struct.orinoco_private** %24, align 8
  %25 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @orinoco_interrupt, align 4
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = call i32 @orinoco_cs_config(%struct.pcmcia_device* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %15, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.orinoco_private* @alloc_orinocodev(i32, i32*, i32, i32*) #1

declare dso_local i32 @orinoco_cs_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
