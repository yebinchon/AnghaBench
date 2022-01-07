; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_read(%struct.cx231xx* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  %19 = add nsw i32 %18, 1
  %20 = call i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %22 = call i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx* %21)
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %46, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @cx231xx_gpio_i2c_read_byte(%struct.cx231xx* %32, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %44 = call i32 @cx231xx_gpio_i2c_write_ack(%struct.cx231xx* %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %51 = call i32 @cx231xx_gpio_i2c_write_nak(%struct.cx231xx* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %53 = call i32 @cx231xx_gpio_i2c_end(%struct.cx231xx* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_gpio_i2c_start(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_gpio_i2c_read_byte(%struct.cx231xx*, i32*) #1

declare dso_local i32 @cx231xx_gpio_i2c_write_ack(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_gpio_i2c_write_nak(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_gpio_i2c_end(%struct.cx231xx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
