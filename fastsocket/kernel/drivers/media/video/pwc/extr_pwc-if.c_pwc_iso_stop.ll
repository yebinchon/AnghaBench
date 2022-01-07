; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_iso_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_iso_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.urb* }
%struct.urb = type { i32 }

@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unlinking URB %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*)* @pwc_iso_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_iso_stop(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_ISO_BUFS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.urb*, %struct.urb** %16, align 8
  store %struct.urb* %17, %struct.urb** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = icmp ne %struct.urb* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.urb*, %struct.urb** %4, align 8
  %22 = call i32 @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.urb* %21)
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = call i32 @usb_kill_urb(%struct.urb* %23)
  br label %25

25:                                               ; preds = %20, %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @PWC_DEBUG_MEMORY(i8*, %struct.urb*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
