; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_i2c.c_bbc_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_client = type { i32, i32, %struct.of_device*, %struct.bbc_i2c_bus* }
%struct.bbc_i2c_bus = type { i32 }
%struct.of_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bbc_i2c_client* @bbc_i2c_attach(%struct.bbc_i2c_bus* %0, %struct.of_device* %1) #0 {
  %3 = alloca %struct.bbc_i2c_client*, align 8
  %4 = alloca %struct.bbc_i2c_bus*, align 8
  %5 = alloca %struct.of_device*, align 8
  %6 = alloca %struct.bbc_i2c_client*, align 8
  %7 = alloca i32*, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %4, align 8
  store %struct.of_device* %1, %struct.of_device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bbc_i2c_client* @kzalloc(i32 24, i32 %8)
  store %struct.bbc_i2c_client* %9, %struct.bbc_i2c_client** %6, align 8
  %10 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  %11 = icmp ne %struct.bbc_i2c_client* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.bbc_i2c_client* null, %struct.bbc_i2c_client** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %15 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  %16 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %15, i32 0, i32 3
  store %struct.bbc_i2c_bus* %14, %struct.bbc_i2c_bus** %16, align 8
  %17 = load %struct.of_device*, %struct.of_device** %5, align 8
  %18 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  %19 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %18, i32 0, i32 2
  store %struct.of_device* %17, %struct.of_device** %19, align 8
  %20 = load %struct.of_device*, %struct.of_device** %5, align 8
  %21 = getelementptr inbounds %struct.of_device, %struct.of_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @of_get_property(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %13
  %27 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  %28 = call i32 @kfree(%struct.bbc_i2c_client* %27)
  store %struct.bbc_i2c_client* null, %struct.bbc_i2c_client** %3, align 8
  br label %44

29:                                               ; preds = %13
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  %34 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.bbc_i2c_client, %struct.bbc_i2c_client* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %41 = load %struct.of_device*, %struct.of_device** %5, align 8
  %42 = call i32 @claim_device(%struct.bbc_i2c_bus* %40, %struct.of_device* %41)
  %43 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %6, align 8
  store %struct.bbc_i2c_client* %43, %struct.bbc_i2c_client** %3, align 8
  br label %44

44:                                               ; preds = %29, %26, %12
  %45 = load %struct.bbc_i2c_client*, %struct.bbc_i2c_client** %3, align 8
  ret %struct.bbc_i2c_client* %45
}

declare dso_local %struct.bbc_i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.bbc_i2c_client*) #1

declare dso_local i32 @claim_device(%struct.bbc_i2c_bus*, %struct.of_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
