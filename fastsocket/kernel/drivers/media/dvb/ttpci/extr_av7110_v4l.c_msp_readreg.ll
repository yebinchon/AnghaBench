; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_msp_readreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_msp_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dvb-ttpci: failed @ card %d, %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*, i32, i32, i32*)* @msp_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_readreg(%struct.av7110* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.av7110* %0, %struct.av7110** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds i32, i32* %15, i64 1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i32 3, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  %33 = load i32, i32* @I2C_M_RD, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.av7110*, %struct.av7110** %6, align 8
  %35 = getelementptr inbounds %struct.av7110, %struct.av7110* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %47 [
    i32 129, label %37
    i32 128, label %42
  ]

37:                                               ; preds = %4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  store i32 64, i32* %39, align 16
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 2
  store i32 64, i32* %41, align 8
  br label %48

42:                                               ; preds = %4
  %43 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2
  store i32 66, i32* %44, align 16
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 2
  store i32 66, i32* %46, align 8
  br label %48

47:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

48:                                               ; preds = %42, %37
  %49 = load %struct.av7110*, %struct.av7110** %6, align 8
  %50 = getelementptr inbounds %struct.av7110, %struct.av7110* %49, i32 0, i32 2
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %52 = call i32 @i2c_transfer(i32* %50, %struct.i2c_msg* %51, i32 2)
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.av7110*, %struct.av7110** %6, align 8
  %56 = getelementptr inbounds %struct.av7110, %struct.av7110* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %71

63:                                               ; preds = %48
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %66, %68
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %63, %54, %47
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
