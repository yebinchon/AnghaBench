; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_i2c.c_saa7146_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_i2c.c_saa7146_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.saa7146_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @saa7146_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7146_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %10 = call %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter* %9)
  store %struct.v4l2_device* %10, %struct.v4l2_device** %7, align 8
  %11 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %12 = call %struct.saa7146_dev* @to_saa7146_dev(%struct.v4l2_device* %11)
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %8, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @saa7146_i2c_transfer(%struct.saa7146_dev* %13, %struct.i2c_msg* %14, i32 %15, i32 %18)
  ret i32 %19
}

declare dso_local %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.saa7146_dev* @to_saa7146_dev(%struct.v4l2_device*) #1

declare dso_local i32 @saa7146_i2c_transfer(%struct.saa7146_dev*, %struct.i2c_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
