; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_isl29003.c_isl29003_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_isl29003.c_isl29003_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.isl29003_data = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @isl29003_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29003_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.isl29003_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.isl29003_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.isl29003_data* %8, %struct.isl29003_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.isl29003_data*, %struct.isl29003_data** %4, align 8
  %12 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.isl29003_data*, %struct.isl29003_data** %4, align 8
  %28 = getelementptr inbounds %struct.isl29003_data, %struct.isl29003_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = call i32 @isl29003_set_range(%struct.i2c_client* %37, i32 0)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = call i32 @isl29003_set_resolution(%struct.i2c_client* %39, i32 0)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = call i32 @isl29003_set_mode(%struct.i2c_client* %41, i32 0)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = call i32 @isl29003_set_power_state(%struct.i2c_client* %43, i32 0)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %22
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.isl29003_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @isl29003_set_range(%struct.i2c_client*, i32) #1

declare dso_local i32 @isl29003_set_resolution(%struct.i2c_client*, i32) #1

declare dso_local i32 @isl29003_set_mode(%struct.i2c_client*, i32) #1

declare dso_local i32 @isl29003_set_power_state(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
