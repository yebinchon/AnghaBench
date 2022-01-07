; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_caldac_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_caldac_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@CALDAC0_I2C_ADDR = common dso_local global i32 0, align 4
@CALDAC1_I2C_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid caldac channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @caldac_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caldac_i2c_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %35 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
    i32 5, label %26
    i32 6, label %29
    i32 7, label %32
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @CALDAC0_I2C_ADDR, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %13, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load i32, i32* @CALDAC0_I2C_ADDR, align 4
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 4, i32* %16, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* @CALDAC1_I2C_ADDR, align 4
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %19, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i32, i32* @CALDAC1_I2C_ADDR, align 4
  store i32 %21, i32* %9, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 4, i32* %22, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load i32, i32* @CALDAC0_I2C_ADDR, align 4
  store i32 %24, i32* %9, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %25, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* @CALDAC0_I2C_ADDR, align 4
  store i32 %27, i32* %9, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 8, i32* %28, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32, i32* @CALDAC1_I2C_ADDR, align 4
  store i32 %30, i32* %9, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %31, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @CALDAC1_I2C_ADDR, align 4
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 8, i32* %34, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = call i32 @comedi_error(%struct.comedi_device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %51

38:                                               ; preds = %32, %29, %26, %23, %20, %17, %14, %11
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 8
  %41 = and i32 %40, 15
  %42 = or i32 32, %41
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %50 = call i32 @i2c_write(%struct.comedi_device* %47, i32 %48, i32* %49, i32 3)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %38, %35
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @i2c_write(%struct.comedi_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
