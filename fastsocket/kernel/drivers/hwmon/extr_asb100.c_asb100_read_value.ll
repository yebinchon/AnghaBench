; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_read_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32, %struct.i2c_client** }

@ASB100_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @asb100_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asb100_read_value(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asb100_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.asb100_data* %10, %struct.asb100_data** %5, align 8
  %11 = load %struct.asb100_data*, %struct.asb100_data** %5, align 8
  %12 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load i32, i32* @ASB100_REG_BANK, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 255
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %63

35:                                               ; preds = %27
  %36 = load %struct.asb100_data*, %struct.asb100_data** %5, align 8
  %37 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %36, i32 0, i32 1
  %38 = load %struct.i2c_client**, %struct.i2c_client*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %38, i64 %41
  %43 = load %struct.i2c_client*, %struct.i2c_client** %42, align 8
  store %struct.i2c_client* %43, %struct.i2c_client** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 255
  switch i32 %45, label %58 [
    i32 80, label %46
    i32 82, label %50
    i32 83, label %53
    i32 85, label %57
  ]

46:                                               ; preds = %35
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %47, i32 0)
  %49 = call i32 @swab16(i32 %48)
  store i32 %49, i32* %7, align 4
  br label %62

50:                                               ; preds = %35
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 1)
  store i32 %52, i32* %7, align 4
  br label %62

53:                                               ; preds = %35
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %54, i32 2)
  %56 = call i32 @swab16(i32 %55)
  store i32 %56, i32* %7, align 4
  br label %62

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %35, %57
  %59 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %60 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %59, i32 3)
  %61 = call i32 @swab16(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %53, %50, %46
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i32, i32* @ASB100_REG_BANK, align 4
  %69 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.asb100_data*, %struct.asb100_data** %5, align 8
  %72 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
