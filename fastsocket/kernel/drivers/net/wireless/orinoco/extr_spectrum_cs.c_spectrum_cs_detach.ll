; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_spectrum_cs.c_spectrum_cs_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_spectrum_cs.c_spectrum_cs_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.orinoco_private* }
%struct.orinoco_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @spectrum_cs_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spectrum_cs_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  store %struct.orinoco_private* %6, %struct.orinoco_private** %3, align 8
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %8 = call i32 @orinoco_if_del(%struct.orinoco_private* %7)
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %10 = call i32 @spectrum_cs_release(%struct.pcmcia_device* %9)
  %11 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %12 = call i32 @free_orinocodev(%struct.orinoco_private* %11)
  ret void
}

declare dso_local i32 @orinoco_if_del(%struct.orinoco_private*) #1

declare dso_local i32 @spectrum_cs_release(%struct.pcmcia_device*) #1

declare dso_local i32 @free_orinocodev(%struct.orinoco_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
