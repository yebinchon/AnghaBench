; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_wReg_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_wReg_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w9966_dev = type { i32 }

@W9966_I2C_W_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w9966_dev*, i32, i32)* @w9966_wReg_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w9966_wReg_i2c(%struct.w9966_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w9966_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w9966_dev* %0, %struct.w9966_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %9 = call i32 @w9966_i2c_setsda(%struct.w9966_dev* %8, i32 0)
  %10 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %11 = call i32 @w9966_i2c_setscl(%struct.w9966_dev* %10, i32 0)
  %12 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %13 = load i32, i32* @W9966_I2C_W_ID, align 4
  %14 = call i32 @w9966_i2c_wbyte(%struct.w9966_dev* %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @w9966_i2c_wbyte(%struct.w9966_dev* %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @w9966_i2c_wbyte(%struct.w9966_dev* %22, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %3
  store i32 -1, i32* %4, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %29 = call i32 @w9966_i2c_setsda(%struct.w9966_dev* %28, i32 0)
  %30 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %31 = call i32 @w9966_i2c_setscl(%struct.w9966_dev* %30, i32 1)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.w9966_dev*, %struct.w9966_dev** %5, align 8
  %36 = call i32 @w9966_i2c_setsda(%struct.w9966_dev* %35, i32 1)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %33, %26
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @w9966_i2c_setsda(%struct.w9966_dev*, i32) #1

declare dso_local i32 @w9966_i2c_setscl(%struct.w9966_dev*, i32) #1

declare dso_local i32 @w9966_i2c_wbyte(%struct.w9966_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
