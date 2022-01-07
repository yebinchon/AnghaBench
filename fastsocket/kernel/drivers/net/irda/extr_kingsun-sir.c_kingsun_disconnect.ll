; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_kingsun-sir.c_kingsun_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_kingsun-sir.c_kingsun_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.kingsun_cb = type { i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @kingsun_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kingsun_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.kingsun_cb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.kingsun_cb* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.kingsun_cb* %5, %struct.kingsun_cb** %3, align 8
  %6 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %7 = icmp ne %struct.kingsun_cb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  %10 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %11 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @unregister_netdev(i32 %12)
  %14 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %15 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %20 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @usb_kill_urb(i32* %21)
  %23 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %24 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @usb_free_urb(i32* %25)
  %27 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %28 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %18, %9
  %30 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %31 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %36 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @usb_kill_urb(i32* %37)
  %39 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %40 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @usb_free_urb(i32* %41)
  %43 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %44 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %47 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kfree(i32 %48)
  %50 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %51 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kfree(i32 %52)
  %54 = load %struct.kingsun_cb*, %struct.kingsun_cb** %3, align 8
  %55 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @free_netdev(i32 %56)
  %58 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %59 = call i32 @usb_set_intfdata(%struct.usb_interface* %58, i32* null)
  br label %60

60:                                               ; preds = %45, %8
  ret void
}

declare dso_local %struct.kingsun_cb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
