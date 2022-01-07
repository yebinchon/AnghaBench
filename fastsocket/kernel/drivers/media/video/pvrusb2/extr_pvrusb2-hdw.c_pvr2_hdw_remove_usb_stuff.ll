; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_remove_usb_stuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_remove_usb_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32*, i32*, i32, i32*, i32*, i32*, i32* }

@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pvr2_hdw_remove_usb_stuff: hdw=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*)* @pvr2_hdw_remove_usb_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_remove_usb_stuff(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %3 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %79

8:                                                ; preds = %1
  %9 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = call i32 @pvr2_trace(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.pvr2_hdw* %10)
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @usb_kill_urb(i32* %19)
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @usb_free_urb(i32* %23)
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 7
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %16, %8
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @usb_kill_urb(i32* %35)
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @usb_free_urb(i32* %39)
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 6
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %45 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %50 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %57 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %62 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 4
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %71 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %70, i32 0, i32 3
  %72 = call i32 @v4l2_device_disconnect(i32* %71)
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %74 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %76 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %78 = call i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw* %77)
  br label %79

79:                                               ; preds = %67, %7
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_hdw*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
