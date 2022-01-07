; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ksdazzle_cb = type { i32, i32, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ksdazzle_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksdazzle_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ksdazzle_cb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ksdazzle_cb* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ksdazzle_cb* %5, %struct.ksdazzle_cb** %3, align 8
  %6 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %7 = icmp ne %struct.ksdazzle_cb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %11 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @unregister_netdev(i32 %12)
  %14 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %15 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @usb_kill_urb(i32* %16)
  %18 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %19 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @usb_free_urb(i32* %20)
  %22 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %23 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  %24 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %25 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @usb_kill_urb(i32* %26)
  %28 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %29 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_free_urb(i32* %30)
  %32 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %33 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %32, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %35 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @usb_kill_urb(i32* %36)
  %38 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %39 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @usb_free_urb(i32* %40)
  %42 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %43 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %45 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %49 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @kfree(i32 %50)
  %52 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %53 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kfree(i32 %54)
  %56 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %3, align 8
  %57 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @free_netdev(i32 %58)
  %60 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %61 = call i32 @usb_set_intfdata(%struct.usb_interface* %60, i32* null)
  br label %62

62:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.ksdazzle_cb* @usb_get_intfdata(%struct.usb_interface*) #1

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
