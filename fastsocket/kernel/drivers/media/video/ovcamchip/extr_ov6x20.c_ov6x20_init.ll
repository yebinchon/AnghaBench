; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x20.c_ov6x20_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov6x20.c_ov6x20_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ovcamchip = type { %struct.ov6x20* }
%struct.ov6x20 = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@regvals_init_6x20_511 = common dso_local global i32 0, align 4
@regvals_init_6x20_518 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ov6x20: Unsupported adapter\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov6x20_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6x20_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ovcamchip*, align 8
  %5 = alloca %struct.ov6x20*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.ovcamchip* %8, %struct.ovcamchip** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i32 @DDEBUG(i32 4, i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 129, label %17
    i32 128, label %21
  ]

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load i32, i32* @regvals_init_6x20_511, align 4
  %20 = call i32 @ov_write_regvals(%struct.i2c_client* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load i32, i32* @regvals_init_6x20_518, align 4
  %24 = call i32 @ov_write_regvals(%struct.i2c_client* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %21, %17
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %31
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.ov6x20* @kzalloc(i32 8, i32 %37)
  store %struct.ov6x20* %38, %struct.ov6x20** %5, align 8
  %39 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %40 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %39, i32 0, i32 0
  store %struct.ov6x20* %38, %struct.ov6x20** %40, align 8
  %41 = load %struct.ov6x20*, %struct.ov6x20** %5, align 8
  %42 = icmp ne %struct.ov6x20* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %36
  %47 = load %struct.ov6x20*, %struct.ov6x20** %5, align 8
  %48 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.ov6x20*, %struct.ov6x20** %5, align 8
  %50 = getelementptr inbounds %struct.ov6x20, %struct.ov6x20* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %43, %34
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @DDEBUG(i32, i32*, i8*) #1

declare dso_local i32 @ov_write_regvals(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ov6x20* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
