; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%union.i2c_smbus_data = type { i32 }

@I2C_M_TEN = common dso_local global i16 0, align 2
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@jiffies = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.i2c_smbus_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %14, align 8
  %18 = load i16, i16* @I2C_M_TEN, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, %22
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %10, align 2
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)**
  %32 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %31, align 8
  %33 = icmp ne i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* %32, null
  br i1 %33, label %34, label %83

34:                                               ; preds = %7
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* @jiffies, align 8
  store i64 %38, i64* %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %76, %34
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)**
  %51 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %50, align 8
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i16, i16* %10, align 2
  %55 = load i8, i8* %11, align 1
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %59 = call i32 %51(%struct.i2c_adapter* %52, i32 %53, i16 zeroext %54, i8 signext %55, i32 %56, i32 %57, %union.i2c_smbus_data* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %79

65:                                               ; preds = %45
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %69 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = call i64 @time_after(i64 %66, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %39

79:                                               ; preds = %74, %64, %39
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %81 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %92

83:                                               ; preds = %7
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i16, i16* %10, align 2
  %87 = load i8, i8* %11, align 1
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %91 = call i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter* %84, i32 %85, i16 zeroext %86, i8 signext %87, i32 %88, i32 %89, %union.i2c_smbus_data* %90)
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %83, %79
  %93 = load i32, i32* %17, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_xfer_emulated(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32, %union.i2c_smbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
