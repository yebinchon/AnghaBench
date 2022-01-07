; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme1737_data = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"Read from register 0x%02x failed! Please report to the driver maintainer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dme1737_data*, i64)* @dme1737_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dme1737_read(%struct.dme1737_data* %0, i64 %1) #0 {
  %3 = alloca %struct.dme1737_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i64, align 8
  store %struct.dme1737_data* %0, %struct.dme1737_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %8 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %7, i32 0, i32 1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = icmp ne %struct.i2c_client* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %13, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %18, %12
  br label %35

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %27 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @outb(i64 %25, i64 %28)
  %30 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %31 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i64 @inb(i64 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %24, %23
  %36 = load i64, i64* %6, align 8
  ret i64 %36
}

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i64 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
