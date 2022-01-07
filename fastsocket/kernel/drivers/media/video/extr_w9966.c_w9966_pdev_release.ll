; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_pdev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_pdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32 }

@W9966_STATE_CLAIMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w9966_dev*)* @w9966_pdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9966_pdev_release(%struct.w9966_dev* %0) #0 {
  %2 = alloca %struct.w9966_dev*, align 8
  store %struct.w9966_dev* %0, %struct.w9966_dev** %2, align 8
  %3 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %4 = load i32, i32* @W9966_STATE_CLAIMED, align 4
  %5 = call i64 @w9966_getState(%struct.w9966_dev* %3, i32 %4, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %10 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @parport_release(i32 %11)
  %13 = load %struct.w9966_dev*, %struct.w9966_dev** %2, align 8
  %14 = load i32, i32* @W9966_STATE_CLAIMED, align 4
  %15 = call i32 @w9966_setState(%struct.w9966_dev* %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @w9966_getState(%struct.w9966_dev*, i32, i32) #1

declare dso_local i32 @parport_release(i32) #1

declare dso_local i32 @w9966_setState(%struct.w9966_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
