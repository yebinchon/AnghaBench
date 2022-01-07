; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_get_tcp_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_get_tcp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.tp_tcp_stats = type { i32 }
%struct.adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_get_tcp_stats(%struct.pci_dev* %0, %struct.tp_tcp_stats* %1, %struct.tp_tcp_stats* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.tp_tcp_stats*, align 8
  %6 = alloca %struct.tp_tcp_stats*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.tp_tcp_stats* %1, %struct.tp_tcp_stats** %5, align 8
  store %struct.tp_tcp_stats* %2, %struct.tp_tcp_stats** %6, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.adapter* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.adapter* %9, %struct.adapter** %7, align 8
  %10 = load %struct.adapter*, %struct.adapter** %7, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = load %struct.tp_tcp_stats*, %struct.tp_tcp_stats** %5, align 8
  %15 = load %struct.tp_tcp_stats*, %struct.tp_tcp_stats** %6, align 8
  %16 = call i32 @t4_tp_get_tcp_stats(%struct.adapter* %13, %struct.tp_tcp_stats* %14, %struct.tp_tcp_stats* %15)
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  ret void
}

declare dso_local %struct.adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_tp_get_tcp_stats(%struct.adapter*, %struct.tp_tcp_stats*, %struct.tp_tcp_stats*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
