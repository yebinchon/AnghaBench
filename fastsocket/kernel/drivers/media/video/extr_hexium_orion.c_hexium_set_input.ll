; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_orion.c_hexium_set_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_orion.c_hexium_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hexium = type { i32 }
%union.i2c_smbus_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@hexium_input_select = common dso_local global %struct.TYPE_4__* null, align 8
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%d: 0x%02x => 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hexium*, i32)* @hexium_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexium_set_input(%struct.hexium* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hexium*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.i2c_smbus_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hexium* %0, %struct.hexium** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 @DEB_D(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hexium_input_select, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hexium_input_select, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.i2c_smbus_data* %6 to i32*
  store i32 %35, i32* %36, align 4
  %37 = load %struct.hexium*, %struct.hexium** %4, align 8
  %38 = getelementptr inbounds %struct.hexium, %struct.hexium* %37, i32 0, i32 0
  %39 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %42 = call i64 @i2c_smbus_xfer(i32* %38, i32 78, i32 0, i32 %39, i32 %40, i32 %41, %union.i2c_smbus_data* %6)
  %43 = icmp ne i64 0, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %55

45:                                               ; preds = %13
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = bitcast %union.i2c_smbus_data* %6 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %10

54:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i64 @i2c_smbus_xfer(i32*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
