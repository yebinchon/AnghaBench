; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x30.c_ov6x30_mode_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x30.c_ov6x30_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ovcamchip_window = type { i64, i32, i64 }

@VIDEO_PALETTE_GREY = common dso_local global i64 0, align 8
@I2C_HW_SMBUS_OV518 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_window*)* @ov6x30_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6x30_mode_init(%struct.i2c_client* %0, %struct.ovcamchip_window* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ovcamchip_window*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.ovcamchip_window* %1, %struct.ovcamchip_window** %4, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %7 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 32, i32 0
  %12 = call i32 @ov_write_mask(%struct.i2c_client* %5, i32 20, i32 %11, i32 32)
  %13 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %14 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIDEO_PALETTE_GREY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I2C_HW_SMBUS_OV518, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = call i32 @ov_write_mask(%struct.i2c_client* %28, i32 19, i32 32, i32 32)
  br label %30

30:                                               ; preds = %27, %26
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @I2C_HW_SMBUS_OV518, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %43

40:                                               ; preds = %31
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = call i32 @ov_write_mask(%struct.i2c_client* %41, i32 19, i32 0, i32 32)
  br label %43

43:                                               ; preds = %40, %39
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %4, align 8
  %47 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ov_write(%struct.i2c_client* %45, i32 17, i32 %48)
  ret i32 0
}

declare dso_local i32 @ov_write_mask(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ov_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
