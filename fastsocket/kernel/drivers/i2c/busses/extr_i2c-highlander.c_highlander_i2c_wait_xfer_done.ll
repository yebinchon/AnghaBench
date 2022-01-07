; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_wait_xfer_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_wait_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i64 }

@iic_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.highlander_i2c_dev*)* @highlander_i2c_wait_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_wait_xfer_done(%struct.highlander_i2c_dev* %0) #0 {
  %2 = alloca %struct.highlander_i2c_dev*, align 8
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %2, align 8
  %3 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %2, align 8
  %4 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @iic_timeout, align 4
  %11 = call i32 @msecs_to_jiffies(i32 %10)
  %12 = call i32 @wait_for_completion_timeout(i32* %9, i32 %11)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %2, align 8
  %15 = call i32 @highlander_i2c_poll(%struct.highlander_i2c_dev* %14)
  br label %16

16:                                               ; preds = %13, %7
  %17 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %2, align 8
  %18 = call i32 @highlander_i2c_wait_for_ack(%struct.highlander_i2c_dev* %17)
  ret i32 %18
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @highlander_i2c_poll(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_wait_for_ack(%struct.highlander_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
