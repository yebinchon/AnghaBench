; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_release_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i32, i64, i64 }

@em28xx_devused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_release_resources(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %3 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %4 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %9 = call i32 @em28xx_deregister_snapshot_button(%struct.em28xx* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %17 = call i32 @em28xx_ir_fini(%struct.em28xx* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %20 = call i32 @em28xx_release_analog_resources(%struct.em28xx* %19)
  %21 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %22 = call i32 @em28xx_remove_from_devlist(%struct.em28xx* %21)
  %23 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %24 = call i32 @em28xx_i2c_unregister(%struct.em28xx* %23)
  %25 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 2
  %27 = call i32 @v4l2_device_unregister(i32* %26)
  %28 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_put_dev(i32 %30)
  %32 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @em28xx_devused, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @em28xx_devused, align 4
  ret void
}

declare dso_local i32 @em28xx_deregister_snapshot_button(%struct.em28xx*) #1

declare dso_local i32 @em28xx_ir_fini(%struct.em28xx*) #1

declare dso_local i32 @em28xx_release_analog_resources(%struct.em28xx*) #1

declare dso_local i32 @em28xx_remove_from_devlist(%struct.em28xx*) #1

declare dso_local i32 @em28xx_i2c_unregister(%struct.em28xx*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
