; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32, i32, i32 }

@W9966_STATE_VDEV = common dso_local global i32 0, align 4
@W9966_STATE_PDEV = common dso_local global i32 0, align 4
@IEEE1284_MODE_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w9966_dev*)* @w9966_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9966_term(%struct.w9966_dev* %0) #0 {
  %2 = alloca %struct.w9966_dev*, align 8
  store %struct.w9966_dev* %0, %struct.w9966_dev** %2, align 8
  %3 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %4 = load i32, i32* @W9966_STATE_VDEV, align 4
  %5 = load i32, i32* @W9966_STATE_VDEV, align 4
  %6 = call i64 @w9966_getState(%struct.w9966_dev* %3, i32 %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %10 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %9, i32 0, i32 2
  %11 = call i32 @video_unregister_device(i32* %10)
  %12 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %13 = load i32, i32* @W9966_STATE_VDEV, align 4
  %14 = call i32 @w9966_setState(%struct.w9966_dev* %12, i32 %13, i32 0)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %17 = load i32, i32* @W9966_STATE_PDEV, align 4
  %18 = load i32, i32* @W9966_STATE_PDEV, align 4
  %19 = call i64 @w9966_getState(%struct.w9966_dev* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %23 = call i32 @w9966_pdev_claim(%struct.w9966_dev* %22)
  %24 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %25 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE1284_MODE_COMPAT, align 4
  %28 = call i32 @parport_negotiate(i32 %26, i32 %27)
  %29 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %30 = call i32 @w9966_pdev_release(%struct.w9966_dev* %29)
  br label %31

31:                                               ; preds = %21, %15
  %32 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %33 = load i32, i32* @W9966_STATE_PDEV, align 4
  %34 = load i32, i32* @W9966_STATE_PDEV, align 4
  %35 = call i64 @w9966_getState(%struct.w9966_dev* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %39 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @parport_unregister_device(i32 %40)
  %42 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %43 = load i32, i32* @W9966_STATE_PDEV, align 4
  %44 = call i32 @w9966_setState(%struct.w9966_dev* %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %37, %31
  ret void
}

declare dso_local i64 @w9966_getState(%struct.w9966_dev*, i32, i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @w9966_setState(%struct.w9966_dev*, i32, i32) #1

declare dso_local i32 @w9966_pdev_claim(%struct.w9966_dev*) #1

declare dso_local i32 @parport_negotiate(i32, i32) #1

declare dso_local i32 @w9966_pdev_release(%struct.w9966_dev*) #1

declare dso_local i32 @parport_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
