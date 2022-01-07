; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_check_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_check_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)* }
%struct.cx231xx_i2c_xfer_data = type { i32*, i64, i64, i64, i32, i32 }
%struct.i2c_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @cx231xx_i2c_check_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_i2c_check_for_device(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca %struct.cx231xx_i2c*, align 8
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %10, align 8
  store %struct.cx231xx_i2c* %11, %struct.cx231xx_i2c** %5, align 8
  %12 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %5, align 8
  %13 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %12, i32 0, i32 0
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %7, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %7, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %7, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %7, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %7, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %7, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %28, align 8
  %30 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %5, align 8
  %31 = call i32 %29(%struct.cx231xx_i2c* %30, %struct.cx231xx_i2c_xfer_data* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
