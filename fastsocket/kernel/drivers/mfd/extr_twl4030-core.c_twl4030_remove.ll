; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_twl4030_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_client = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@TWL4030_NUM_SLAVES = common dso_local global i32 0, align 4
@twl4030_modules = common dso_local global %struct.twl4030_client* null, align 8
@inuse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @twl4030_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.twl4030_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = call i32 (...) @twl_exit_irq()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TWL4030_NUM_SLAVES, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.twl4030_client*, %struct.twl4030_client** @twl4030_modules, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %18, i64 %20
  store %struct.twl4030_client* %21, %struct.twl4030_client** %6, align 8
  %22 = load %struct.twl4030_client*, %struct.twl4030_client** %6, align 8
  %23 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %22, i32 0, i32 0
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  %25 = icmp ne %struct.i2c_client* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.twl4030_client*, %struct.twl4030_client** %6, align 8
  %28 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %27, i32 0, i32 0
  %29 = load %struct.i2c_client*, %struct.i2c_client** %28, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = icmp ne %struct.i2c_client* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.twl4030_client*, %struct.twl4030_client** %6, align 8
  %34 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %33, i32 0, i32 0
  %35 = load %struct.i2c_client*, %struct.i2c_client** %34, align 8
  %36 = call i32 @i2c_unregister_device(%struct.i2c_client* %35)
  br label %37

37:                                               ; preds = %32, %26, %17
  %38 = load %struct.twl4030_client*, %struct.twl4030_client** @twl4030_modules, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %38, i64 %40
  %42 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %41, i32 0, i32 0
  store %struct.i2c_client* null, %struct.i2c_client** %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %13

46:                                               ; preds = %13
  store i32 0, i32* @inuse, align 4
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @twl_exit_irq(...) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
