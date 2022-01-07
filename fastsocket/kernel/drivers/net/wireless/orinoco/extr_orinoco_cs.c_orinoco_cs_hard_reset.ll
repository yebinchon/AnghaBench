; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_cs.c_orinoco_cs_hard_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_cs.c_orinoco_cs_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.orinoco_pccard* }
%struct.orinoco_pccard = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*)* @orinoco_cs_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_cs_hard_reset(%struct.orinoco_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca %struct.orinoco_pccard*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %3, align 8
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %8 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %7, i32 0, i32 0
  %9 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %8, align 8
  store %struct.orinoco_pccard* %9, %struct.orinoco_pccard** %4, align 8
  %10 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %4, align 8
  %11 = getelementptr inbounds %struct.orinoco_pccard, %struct.orinoco_pccard* %10, i32 0, i32 1
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %11, align 8
  store %struct.pcmcia_device* %12, %struct.pcmcia_device** %5, align 8
  %13 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %4, align 8
  %14 = getelementptr inbounds %struct.orinoco_pccard, %struct.orinoco_pccard* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 0, i32* %14)
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pcmcia_reset_card(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = call i32 @msleep(i32 100)
  %26 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %4, align 8
  %27 = getelementptr inbounds %struct.orinoco_pccard, %struct.orinoco_pccard* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 0, i32* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pcmcia_reset_card(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
