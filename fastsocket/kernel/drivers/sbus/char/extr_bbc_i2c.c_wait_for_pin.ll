; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_wait_for_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_wait_for_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_bus = type { i32, i32, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@I2C_PCF_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bbc_i2c_bus*, i32*)* @wait_for_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_pin(%struct.bbc_i2c_bus* %0, i32* %1) #0 {
  %3 = alloca %struct.bbc_i2c_bus*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @DECLARE_WAITQUEUE(i32 %8, i32 %9)
  store i32 32, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %12 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %14 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %13, i32 0, i32 1
  %15 = call i32 @add_wait_queue(i32* %14, i32* @wait)
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %22 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %25 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 0
  %28 = call i32 @readb(i64 %27)
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @I2C_PCF_PIN, align 4
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @msecs_to_jiffies(i32 250)
  %35 = call i64 @wait_event_interruptible_timeout(i32 %23, i32 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %40

39:                                               ; preds = %20
  br label %16

40:                                               ; preds = %38, %16
  %41 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %42 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %41, i32 0, i32 1
  %43 = call i32 @remove_wait_queue(i32* %42, i32* @wait)
  %44 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %45 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
