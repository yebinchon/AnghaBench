; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x10.c_ov7x10_mode_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x10.c_ov7x10_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_window = type { i32, i64, i32, i32, i32 }

@VIDEO_PALETTE_GREY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_window*)* @ov7x10_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7x10_mode_init(%struct.i2c_client* %0, %struct.ovcamchip_window* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ovcamchip_window*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.ovcamchip_window* %1, %struct.ovcamchip_window** %4, align 8
  %6 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %7 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 36, i32 4
  %14 = call i32 @ov_write(%struct.i2c_client* %9, i32 20, i32 %13)
  %15 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %16 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VIDEO_PALETTE_GREY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = call i32 @ov_write_mask(%struct.i2c_client* %21, i32 14, i32 64, i32 64)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = call i32 @ov_write_mask(%struct.i2c_client* %23, i32 19, i32 32, i32 32)
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = call i32 @ov_write_mask(%struct.i2c_client* %26, i32 14, i32 0, i32 64)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = call i32 @ov_write_mask(%struct.i2c_client* %28, i32 19, i32 0, i32 32)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %33 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ov_write(%struct.i2c_client* %31, i32 17, i32 %34)
  %36 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %37 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 640
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %42 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 480
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = call i32 @ov_write(%struct.i2c_client* %46, i32 53, i32 158)
  br label %51

48:                                               ; preds = %40, %30
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = call i32 @ov_write(%struct.i2c_client* %49, i32 53, i32 30)
  br label %51

51:                                               ; preds = %48, %45
  ret i32 0
}

declare dso_local i32 @ov_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ov_write_mask(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
