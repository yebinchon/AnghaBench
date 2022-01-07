; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_hostap_remove_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_hostap_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.net_device*, %struct.net_device*, %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_remove_interface(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostap_interface*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %70

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %12)
  store %struct.hostap_interface* %13, %struct.hostap_interface** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %18 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %23 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = icmp eq %struct.net_device* %21, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %30 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store %struct.net_device* null, %struct.net_device** %32, align 8
  br label %61

33:                                               ; preds = %20
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %36 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.net_device*, %struct.net_device** %38, align 8
  %40 = icmp eq %struct.net_device* %34, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %43 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %45, align 8
  br label %60

46:                                               ; preds = %33
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %49 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.net_device*, %struct.net_device** %51, align 8
  %53 = icmp eq %struct.net_device* %47, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %56 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %58, align 8
  br label %59

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @unregister_netdevice(%struct.net_device* %65)
  br label %70

67:                                               ; preds = %61
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @unregister_netdev(%struct.net_device* %68)
  br label %70

70:                                               ; preds = %10, %67, %64
  ret void
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
