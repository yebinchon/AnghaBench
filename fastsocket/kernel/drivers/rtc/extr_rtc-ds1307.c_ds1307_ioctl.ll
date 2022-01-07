; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ds1307 = type { i32 }

@HAS_ALARM = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@DS1337_REG_CONTROL = common dso_local global i32 0, align 4
@DS1337_BIT_A1IE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @ds1307_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.ds1307*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %14 = call %struct.ds1307* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.ds1307* %14, %struct.ds1307** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %77 [
    i32 129, label %16
    i32 128, label %47
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @HAS_ALARM, align 4
  %18 = load %struct.ds1307*, %struct.ds1307** %9, align 8
  %19 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOTTY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = load i32, i32* @DS1337_REG_CONTROL, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %81

33:                                               ; preds = %25
  %34 = load i32, i32* @DS1337_BIT_A1IE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %39 = load i32, i32* @DS1337_REG_CONTROL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %81

46:                                               ; preds = %33
  br label %80

47:                                               ; preds = %3
  %48 = load i32, i32* @HAS_ALARM, align 4
  %49 = load %struct.ds1307*, %struct.ds1307** %9, align 8
  %50 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %49, i32 0, i32 0
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOTTY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %47
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = load i32, i32* @DS1337_REG_CONTROL, align 4
  %59 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %81

64:                                               ; preds = %56
  %65 = load i32, i32* @DS1337_BIT_A1IE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %69 = load i32, i32* @DS1337_REG_CONTROL, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %81

76:                                               ; preds = %64
  br label %80

77:                                               ; preds = %3
  %78 = load i32, i32* @ENOIOCTLCMD, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %76, %46
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %77, %74, %62, %53, %44, %31, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1307* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
