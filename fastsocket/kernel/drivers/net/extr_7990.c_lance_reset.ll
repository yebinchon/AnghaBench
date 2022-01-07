; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lance_private = type { i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.lance_private* @netdev_priv(%struct.net_device* %5)
  store %struct.lance_private* %6, %struct.lance_private** %3, align 8
  %7 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %8 = load i32, i32* @LE_CSR0, align 4
  %9 = call i32 @WRITERAP(%struct.lance_private* %7, i32 %8)
  %10 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %11 = load i32, i32* @LE_C0_STOP, align 4
  %12 = call i32 @WRITERDP(%struct.lance_private* %10, i32 %11)
  %13 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %14 = call i32 @load_csrs(%struct.lance_private* %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @lance_init_ring(%struct.net_device* %15)
  %17 = load i32, i32* @jiffies, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %21 = call i32 @init_restart_lance(%struct.lance_private* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WRITERAP(%struct.lance_private*, i32) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
