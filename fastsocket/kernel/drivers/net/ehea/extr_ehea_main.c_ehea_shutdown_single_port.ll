; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_shutdown_single_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_shutdown_single_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, i32, i32, %struct.ehea_adapter* }
%struct.ehea_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port*)* @ehea_shutdown_single_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_shutdown_single_port(%struct.ehea_port* %0) #0 {
  %2 = alloca %struct.ehea_port*, align 8
  %3 = alloca %struct.ehea_adapter*, align 8
  store %struct.ehea_port* %0, %struct.ehea_port** %2, align 8
  %4 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %5 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %4, i32 0, i32 4
  %6 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  store %struct.ehea_adapter* %6, %struct.ehea_adapter** %3, align 8
  %7 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %8 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %7, i32 0, i32 3
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %11 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %10, i32 0, i32 2
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %14 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @unregister_netdev(i32 %15)
  %17 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %18 = call i32 @ehea_unregister_port(%struct.ehea_port* %17)
  %19 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %20 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %24 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @free_netdev(i32 %25)
  %27 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @ehea_unregister_port(%struct.ehea_port*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
