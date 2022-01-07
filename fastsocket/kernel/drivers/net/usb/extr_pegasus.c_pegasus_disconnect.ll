; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_pegasus_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_pegasus_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.pegasus = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unregistering non-bound device?\0A\00", align 1
@PEGASUS_UNPLUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @pegasus_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pegasus_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.pegasus*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.pegasus* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.pegasus* %5, %struct.pegasus** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %9 = icmp ne %struct.pegasus* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %53

14:                                               ; preds = %1
  %15 = load i32, i32* @PEGASUS_UNPLUG, align 4
  %16 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %17 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %21 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %20, i32 0, i32 2
  %22 = call i32 @cancel_delayed_work(i32* %21)
  %23 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %24 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @unregister_netdev(i32 %25)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %28 = call i32 @interface_to_usbdev(%struct.usb_interface* %27)
  %29 = call i32 @usb_put_dev(i32 %28)
  %30 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %31 = call i32 @unlink_all_urbs(%struct.pegasus* %30)
  %32 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %33 = call i32 @free_all_urbs(%struct.pegasus* %32)
  %34 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %35 = call i32 @free_skb_pool(%struct.pegasus* %34)
  %36 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %37 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %14
  %41 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %42 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dev_kfree_skb(i32* %43)
  %45 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %46 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %14
  %48 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %49 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @free_netdev(i32 %50)
  %52 = call i32 (...) @pegasus_dec_workqueue()
  br label %53

53:                                               ; preds = %47, %10
  ret void
}

declare dso_local %struct.pegasus* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @unlink_all_urbs(%struct.pegasus*) #1

declare dso_local i32 @free_all_urbs(%struct.pegasus*) #1

declare dso_local i32 @free_skb_pool(%struct.pegasus*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @pegasus_dec_workqueue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
