; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_write_value_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_write_value_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83781d_data = type { %struct.i2c_client**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@W83781D_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83781d_data*, i32, i32)* @w83781d_write_value_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_write_value_i2c(%struct.w83781d_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.w83781d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.w83781d_data* %0, %struct.w83781d_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.w83781d_data*, %struct.w83781d_data** %4, align 8
  %11 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 15
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = load i32, i32* @W83781D_REG_BANK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 255
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %30, i32 %32, i32 %34)
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.w83781d_data*, %struct.w83781d_data** %4, align 8
  %38 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %37, i32 0, i32 0
  %39 = load %struct.i2c_client**, %struct.i2c_client*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %39, i64 %42
  %44 = load %struct.i2c_client*, %struct.i2c_client** %43, align 8
  store %struct.i2c_client* %44, %struct.i2c_client** %9, align 8
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 255
  switch i32 %46, label %62 [
    i32 82, label %47
    i32 83, label %52
    i32 85, label %57
  ]

47:                                               ; preds = %36
  %48 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %48, i32 1, i32 %50)
  br label %62

52:                                               ; preds = %36
  %53 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @swab16(i32 %54)
  %56 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %53, i32 2, i32 %55)
  br label %62

57:                                               ; preds = %36
  %58 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @swab16(i32 %59)
  %61 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %58, i32 3, i32 %60)
  br label %62

62:                                               ; preds = %36, %57, %52, %47
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %68 = load i32, i32* @W83781D_REG_BANK, align 4
  %69 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %63
  ret i32 0
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
