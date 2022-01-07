; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_bus_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_bus_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_bus_unregister(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %3 = call i32 (...) @ssb_buses_lock()
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %5 = call i32 @ssb_devices_unregister(%struct.ssb_bus* %4)
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %7 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %6, i32 0, i32 0
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 (...) @ssb_buses_unlock()
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %11 = call i32 @ssb_pcmcia_exit(%struct.ssb_bus* %10)
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %13 = call i32 @ssb_pci_exit(%struct.ssb_bus* %12)
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %15 = call i32 @ssb_iounmap(%struct.ssb_bus* %14)
  ret void
}

declare dso_local i32 @ssb_buses_lock(...) #1

declare dso_local i32 @ssb_devices_unregister(%struct.ssb_bus*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ssb_buses_unlock(...) #1

declare dso_local i32 @ssb_pcmcia_exit(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_pci_exit(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_iounmap(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
