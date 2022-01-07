; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_write_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32, %struct.i2c_client** }

@ASB100_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @asb100_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asb100_write_value(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.asb100_data*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.asb100_data* %11, %struct.asb100_data** %7, align 8
  %12 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %13 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @ASB100_REG_BANK, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 255
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 255
  %37 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %32, i32 %34, i32 %36)
  br label %65

38:                                               ; preds = %28
  %39 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %40 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %39, i32 0, i32 1
  %41 = load %struct.i2c_client**, %struct.i2c_client*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %41, i64 %44
  %46 = load %struct.i2c_client*, %struct.i2c_client** %45, align 8
  store %struct.i2c_client* %46, %struct.i2c_client** %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 255
  switch i32 %48, label %64 [
    i32 82, label %49
    i32 83, label %54
    i32 85, label %59
  ]

49:                                               ; preds = %38
  %50 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 255
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %50, i32 1, i32 %52)
  br label %64

54:                                               ; preds = %38
  %55 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @swab16(i32 %56)
  %58 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %55, i32 2, i32 %57)
  br label %64

59:                                               ; preds = %38
  %60 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @swab16(i32 %61)
  %63 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %60, i32 3, i32 %62)
  br label %64

64:                                               ; preds = %38, %59, %54, %49
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @ASB100_REG_BANK, align 4
  %71 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %74 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  ret void
}

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
