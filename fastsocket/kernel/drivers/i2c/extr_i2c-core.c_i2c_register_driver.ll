; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.module = type { i32 }
%struct.i2c_driver = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.module* }

@i2c_bus_type = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"i2c-core: driver [%s] registered\0A\00", align 1
@core_lock = common dso_local global i32 0, align 4
@__attach_adapter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_register_driver(%struct.module* %0, %struct.i2c_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.i2c_driver* %1, %struct.i2c_driver** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i2c_bus_type, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.module*, %struct.module** %4, align 8
  %19 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store %struct.module* %18, %struct.module** %21, align 8
  %22 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store %struct.TYPE_4__* @i2c_bus_type, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %25, i32 0, i32 1
  %27 = call i32 @driver_register(%struct.TYPE_5__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %17
  %33 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = call i32 @mutex_lock(i32* @core_lock)
  %42 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %43 = load i32, i32* @__attach_adapter, align 4
  %44 = call i32 @bus_for_each_dev(%struct.TYPE_4__* @i2c_bus_type, i32* null, %struct.i2c_driver* %42, i32 %43)
  %45 = call i32 @mutex_unlock(i32* @core_lock)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %30, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @driver_register(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bus_for_each_dev(%struct.TYPE_4__*, i32*, %struct.i2c_driver*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
