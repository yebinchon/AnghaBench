; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_net_kern.c_net_device_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_net_kern.c_net_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.uml_net = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.uml_net_private = type { i32, i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @net_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.uml_net*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.uml_net_private*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.uml_net* @dev_get_drvdata(%struct.device* %6)
  store %struct.uml_net* %7, %struct.uml_net** %3, align 8
  %8 = load %struct.uml_net*, %struct.uml_net** %3, align 8
  %9 = getelementptr inbounds %struct.uml_net, %struct.uml_net* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.uml_net_private* @netdev_priv(%struct.net_device* %11)
  store %struct.uml_net_private* %12, %struct.uml_net_private** %5, align 8
  %13 = load %struct.uml_net_private*, %struct.uml_net_private** %5, align 8
  %14 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %13, i32 0, i32 1
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = icmp ne i32 (i32*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.uml_net_private*, %struct.uml_net_private** %5, align 8
  %19 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %18, i32 0, i32 1
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.uml_net_private*, %struct.uml_net_private** %5, align 8
  %22 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %21, i32 0, i32 0
  %23 = call i32 %20(i32* %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.uml_net*, %struct.uml_net** %3, align 8
  %26 = getelementptr inbounds %struct.uml_net, %struct.uml_net* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.uml_net*, %struct.uml_net** %3, align 8
  %29 = call i32 @kfree(%struct.uml_net* %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @free_netdev(%struct.net_device* %30)
  ret void
}

declare dso_local %struct.uml_net* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.uml_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.uml_net*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
