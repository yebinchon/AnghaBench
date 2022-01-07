; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_i2c_setscl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_i2c_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32 }

@W9966_I2C_W_CLOCK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9966_dev*, i32)* @w9966_i2c_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_i2c_setscl(%struct.w9966_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w9966_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.w9966_dev* %0, %struct.w9966_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @W9966_I2C_W_CLOCK, align 4
  %11 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %12 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @W9966_I2C_W_CLOCK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %19 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %24 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %25 = getelementptr inbounds %struct.w9966_dev, %struct.w9966_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @w9966_wReg(%struct.w9966_dev* %23, i32 24, i32 %26)
  %28 = call i32 @udelay(i32 5)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %22
  %32 = load i32, i32* @jiffies, align 4
  %33 = add nsw i32 %32, 100
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %46, %31
  %36 = load %struct.w9966_dev*, %struct.w9966_dev** %4, align 8
  %37 = call i32 @w9966_i2c_getscl(%struct.w9966_dev* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @jiffies, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @time_after(i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %49

46:                                               ; preds = %40
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %22
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @w9966_wReg(%struct.w9966_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @w9966_i2c_getscl(%struct.w9966_dev*) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
