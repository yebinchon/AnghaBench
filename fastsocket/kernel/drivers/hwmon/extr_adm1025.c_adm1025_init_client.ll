; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm1025_data = type { i32 }

@ADM1025_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm1025_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1025_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.adm1025_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.adm1025_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.adm1025_data* %7, %struct.adm1025_data** %4, align 8
  %8 = call i32 (...) @vid_which_vrm()
  %9 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %10 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ADM1025_REG_IN_MAX(i32 %16)
  %18 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %15, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ADM1025_REG_IN_MAX(i32 %23)
  %25 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %22, i32 %24, i32 255)
  br label %26

26:                                               ; preds = %21, %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ADM1025_REG_TEMP_HIGH(i32 %36)
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ADM1025_REG_TEMP_HIGH(i32 %43)
  %45 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %42, i32 %44, i32 127)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %52 = load i32, i32* @ADM1025_REG_CONFIG, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %59 = load i32, i32* @ADM1025_REG_CONFIG, align 4
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 126
  %62 = or i32 %61, 1
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  ret void
}

declare dso_local %struct.adm1025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1025_REG_IN_MAX(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM1025_REG_TEMP_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
