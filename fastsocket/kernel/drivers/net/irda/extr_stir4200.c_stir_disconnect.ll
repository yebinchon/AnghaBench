; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.stir_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @stir_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stir_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.stir_cb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.stir_cb* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.stir_cb* %5, %struct.stir_cb** %3, align 8
  %6 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %7 = icmp ne %struct.stir_cb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %11 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @unregister_netdev(i32 %12)
  %14 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %15 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @free_netdev(i32 %16)
  %18 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %19 = call i32 @usb_set_intfdata(%struct.usb_interface* %18, i32* null)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.stir_cb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
