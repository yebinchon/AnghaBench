; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-i2c.c_i2c_slave_did_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-i2c.c_i2c_slave_did_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx23885_i2c* }
%struct.cx23885_i2c = type { i32, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2c_slave_did_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_slave_did_ack(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.cx23885_i2c*, align 8
  %4 = alloca %struct.cx23885_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %6, align 8
  store %struct.cx23885_i2c* %7, %struct.cx23885_i2c** %3, align 8
  %8 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %3, align 8
  %9 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %8, i32 0, i32 1
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %4, align 8
  %11 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cx_read(i32 %13)
  %15 = and i32 %14, 1
  ret i32 %15
}

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
