; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ks959_cb = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ks959_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks959_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ks959_cb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ks959_cb* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ks959_cb* %5, %struct.ks959_cb** %3, align 8
  %6 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %7 = icmp ne %struct.ks959_cb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %92

9:                                                ; preds = %1
  %10 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %11 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @unregister_netdev(i32 %12)
  %14 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %15 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %14, i32 0, i32 9
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %20 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @usb_kill_urb(i32* %21)
  %23 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %24 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %23, i32 0, i32 9
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @usb_free_urb(i32* %25)
  %27 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %28 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %27, i32 0, i32 9
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %18, %9
  %30 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %31 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %36 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @usb_kill_urb(i32* %37)
  %39 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %40 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @usb_free_urb(i32* %41)
  %43 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %44 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %43, i32 0, i32 8
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %47 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %52 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @usb_kill_urb(i32* %53)
  %55 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %56 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @usb_free_urb(i32* %57)
  %59 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %60 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %59, i32 0, i32 7
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %50, %45
  %62 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %63 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %67 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kfree(i32 %68)
  %70 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %71 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @kfree(i32 %72)
  %74 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %75 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kfree(i32 %76)
  %78 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %79 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @kfree(i32 %80)
  %82 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %83 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @kfree(i32 %84)
  %86 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %87 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @free_netdev(i32 %88)
  %90 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %91 = call i32 @usb_set_intfdata(%struct.usb_interface* %90, i32* null)
  br label %92

92:                                               ; preds = %61, %8
  ret void
}

declare dso_local %struct.ks959_cb* @usb_get_intfdata(%struct.usb_interface*) #1

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
