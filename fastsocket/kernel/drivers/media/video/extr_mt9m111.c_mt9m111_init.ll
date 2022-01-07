; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32 }

@HIGHPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mt9m111 init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9m111_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_init(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.mt9m111*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %5)
  store %struct.mt9m111* %6, %struct.mt9m111** %3, align 8
  %7 = load i32, i32* @HIGHPOWER, align 4
  %8 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %9 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = call i32 @mt9m111_enable(%struct.i2c_client* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = call i32 @mt9m111_reset(%struct.i2c_client* %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %23 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mt9m111_set_context(%struct.i2c_client* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %32 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mt9m111_set_autoexposure(%struct.i2c_client* %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_enable(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_reset(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_set_context(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_set_autoexposure(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
