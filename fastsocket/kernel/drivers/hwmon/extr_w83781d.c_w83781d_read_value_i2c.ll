; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_read_value_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_read_value_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83781d_data = type { %struct.i2c_client**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@W83781D_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83781d_data*, i32)* @w83781d_read_value_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_read_value_i2c(%struct.w83781d_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83781d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.w83781d_data* %0, %struct.w83781d_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %10 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 15
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* @W83781D_REG_BANK, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %22
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %61

33:                                               ; preds = %25
  %34 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %35 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %34, i32 0, i32 0
  %36 = load %struct.i2c_client**, %struct.i2c_client*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %36, i64 %39
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  store %struct.i2c_client* %41, %struct.i2c_client** %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 255
  switch i32 %43, label %56 [
    i32 80, label %44
    i32 82, label %48
    i32 83, label %51
    i32 85, label %55
  ]

44:                                               ; preds = %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %46 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %45, i32 0)
  %47 = call i32 @swab16(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %60

48:                                               ; preds = %33
  %49 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i32 1)
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %33
  %52 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %53 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %52, i32 2)
  %54 = call i32 @swab16(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %33, %55
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %57, i32 3)
  %59 = call i32 @swab16(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %51, %48, %44
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %66 = load i32, i32* @W83781D_REG_BANK, align 4
  %67 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
