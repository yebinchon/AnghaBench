; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ds1374 = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@DS1374_REG_CR = common dso_local global i32 0, align 4
@DS1374_REG_CR_WACE = common dso_local global i32 0, align 4
@DS1374_REG_CR_AIE = common dso_local global i32 0, align 4
@DS1374_REG_CR_WDALM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @ds1374_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1374_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.ds1374*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %13 = call %struct.ds1374* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.ds1374* %13, %struct.ds1374** %8, align 8
  %14 = load i32, i32* @ENOIOCTLCMD, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ds1374*, %struct.ds1374** %8, align 8
  %17 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %65 [
    i32 129, label %20
    i32 128, label %40
  ]

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %22 = load i32, i32* @DS1374_REG_CR, align 4
  %23 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %66

27:                                               ; preds = %20
  %28 = load i32, i32* @DS1374_REG_CR_WACE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %33 = load i32, i32* @DS1374_REG_CR, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %66

39:                                               ; preds = %27
  br label %65

40:                                               ; preds = %3
  %41 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %42 = load i32, i32* @DS1374_REG_CR, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %66

47:                                               ; preds = %40
  %48 = load i32, i32* @DS1374_REG_CR_WACE, align 4
  %49 = load i32, i32* @DS1374_REG_CR_AIE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @DS1374_REG_CR_WDALM, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %58 = load i32, i32* @DS1374_REG_CR, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %57, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %66

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %3, %64, %39
  br label %66

66:                                               ; preds = %65, %63, %46, %38, %26
  %67 = load %struct.ds1374*, %struct.ds1374** %8, align 8
  %68 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1374* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
