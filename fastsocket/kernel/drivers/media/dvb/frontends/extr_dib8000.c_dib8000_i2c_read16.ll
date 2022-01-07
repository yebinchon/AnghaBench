; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_i2c_read16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_i2c_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i2c read error on %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, i32)* @dib8000_i2c_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_i2c_read16(%struct.i2c_device* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_device* %0, %struct.i2c_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %15, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 1
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %25, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  store i32 2, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 3
  %34 = load i32, i32* @I2C_M_RD, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %39 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 2)
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %2
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %47, %49
  ret i32 %50
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
