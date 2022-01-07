; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_write(%struct.cx231xx* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %12 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %15 = call i32 @cx231xx_gpio_i2c_start(%struct.cx231xx* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 1
  %19 = call i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx* %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %21 = call i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx* %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %36, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx* %27, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %35 = call i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %41 = call i32 @cx231xx_gpio_i2c_end(%struct.cx231xx* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_gpio_i2c_start(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_gpio_i2c_end(%struct.cx231xx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
