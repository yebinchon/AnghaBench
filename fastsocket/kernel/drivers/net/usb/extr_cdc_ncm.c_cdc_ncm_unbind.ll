; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.usb_interface = type { i32 }
%struct.cdc_ncm_ctx = type { %struct.usb_interface*, %struct.usb_interface*, %struct.usb_interface*, i32, i32, i32 }
%struct.usb_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdc_ncm_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cdc_ncm_ctx*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %12, %struct.cdc_ncm_ctx** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %13)
  store %struct.usb_driver* %14, %struct.usb_driver** %6, align 8
  %15 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %16 = icmp eq %struct.cdc_ncm_ctx* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %19, i32 0, i32 5
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %22, i32 0, i32 4
  %24 = call i64 @hrtimer_active(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %27, i32 0, i32 4
  %29 = call i32 @hrtimer_cancel(i32* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %31, i32 0, i32 3
  %33 = call i32 @tasklet_kill(i32* %32)
  %34 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %34, i32 0, i32 1
  %36 = load %struct.usb_interface*, %struct.usb_interface** %35, align 8
  %37 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %37, i32 0, i32 2
  %39 = load %struct.usb_interface*, %struct.usb_interface** %38, align 8
  %40 = icmp eq %struct.usb_interface* %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %42, i32 0, i32 2
  store %struct.usb_interface* null, %struct.usb_interface** %43, align 8
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %46, i32 0, i32 1
  %48 = load %struct.usb_interface*, %struct.usb_interface** %47, align 8
  %49 = icmp eq %struct.usb_interface* %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %51, i32 0, i32 2
  %53 = load %struct.usb_interface*, %struct.usb_interface** %52, align 8
  %54 = icmp ne %struct.usb_interface* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %56, i32 0, i32 2
  %58 = load %struct.usb_interface*, %struct.usb_interface** %57, align 8
  %59 = call i32 @usb_set_intfdata(%struct.usb_interface* %58, i32* null)
  %60 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %61 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %61, i32 0, i32 2
  %63 = load %struct.usb_interface*, %struct.usb_interface** %62, align 8
  %64 = call i32 @usb_driver_release_interface(%struct.usb_driver* %60, %struct.usb_interface* %63)
  %65 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %65, i32 0, i32 2
  store %struct.usb_interface* null, %struct.usb_interface** %66, align 8
  br label %91

67:                                               ; preds = %50, %44
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %69, i32 0, i32 2
  %71 = load %struct.usb_interface*, %struct.usb_interface** %70, align 8
  %72 = icmp eq %struct.usb_interface* %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %74, i32 0, i32 1
  %76 = load %struct.usb_interface*, %struct.usb_interface** %75, align 8
  %77 = icmp ne %struct.usb_interface* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %79, i32 0, i32 1
  %81 = load %struct.usb_interface*, %struct.usb_interface** %80, align 8
  %82 = call i32 @usb_set_intfdata(%struct.usb_interface* %81, i32* null)
  %83 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %84 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %84, i32 0, i32 1
  %86 = load %struct.usb_interface*, %struct.usb_interface** %85, align 8
  %87 = call i32 @usb_driver_release_interface(%struct.usb_driver* %83, %struct.usb_interface* %86)
  %88 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %88, i32 0, i32 1
  store %struct.usb_interface* null, %struct.usb_interface** %89, align 8
  br label %90

90:                                               ; preds = %78, %73, %67
  br label %91

91:                                               ; preds = %90, %55
  %92 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %92, i32 0, i32 0
  %94 = load %struct.usb_interface*, %struct.usb_interface** %93, align 8
  %95 = call i32 @usb_set_intfdata(%struct.usb_interface* %94, i32* null)
  %96 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %97 = call i32 @cdc_ncm_free(%struct.cdc_ncm_ctx* %96)
  br label %98

98:                                               ; preds = %91, %17
  ret void
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @hrtimer_active(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @cdc_ncm_free(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
