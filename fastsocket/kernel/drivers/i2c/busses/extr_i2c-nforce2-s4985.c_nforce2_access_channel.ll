; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-nforce2-s4985.c_nforce2_access_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-nforce2-s4985.c_nforce2_access_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@nforce2_lock = common dso_local global i32 0, align 4
@last_channels = common dso_local global i64 0, align 8
@nforce2_smbus = common dso_local global %struct.TYPE_4__* null, align 8
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i64, i32, %union.i2c_smbus_data*, i64)* @nforce2_access_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_access_channel(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i64 %4, i32 %5, %union.i2c_smbus_data* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.i2c_smbus_data*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.i2c_smbus_data, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i16 %2, i16* %12, align 2
  store i8 %3, i8* %13, align 1
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %16, align 8
  store i64 %7, i64* %17, align 8
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, 252
  %22 = icmp ne i32 %21, 80
  br i1 %22, label %23, label %30

23:                                               ; preds = %8
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 252
  %26 = icmp ne i32 %25, 48
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %70

30:                                               ; preds = %23, %8
  %31 = call i32 @mutex_lock(i32* @nforce2_lock)
  %32 = load i64, i64* @last_channels, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i64, i64* %17, align 8
  %37 = bitcast %union.i2c_smbus_data* %19 to i64*
  store i64 %36, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nforce2_smbus, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %41, align 8
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %44 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %45 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %46 = call i32 %42(%struct.i2c_adapter* %43, i32 24, i16 zeroext 0, i8 signext %44, i32 1, i32 %45, %union.i2c_smbus_data* %19)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %67

50:                                               ; preds = %35
  %51 = load i64, i64* %17, align 8
  store i64 %51, i64* @last_channels, align 8
  br label %52

52:                                               ; preds = %50, %30
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nforce2_smbus, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %56, align 8
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i16, i16* %12, align 2
  %61 = load i8, i8* %13, align 1
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %15, align 4
  %65 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %16, align 8
  %66 = call i32 %57(%struct.i2c_adapter* %58, i32 %59, i16 zeroext %60, i8 signext %61, i32 %63, i32 %64, %union.i2c_smbus_data* %65)
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %52, %49
  %68 = call i32 @mutex_unlock(i32* @nforce2_lock)
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %27
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
