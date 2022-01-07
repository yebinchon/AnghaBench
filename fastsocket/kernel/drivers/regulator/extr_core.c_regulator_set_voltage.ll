; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, i32, %struct.regulator_dev* }
%struct.regulator_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_EVENT_VOLTAGE_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_voltage(%struct.regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.regulator*, %struct.regulator** %4, align 8
  %10 = getelementptr inbounds %struct.regulator, %struct.regulator* %9, i32 0, i32 2
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  store %struct.regulator_dev* %11, %struct.regulator_dev** %7, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.regulator_dev*, i32, i32)*, i32 (%struct.regulator_dev*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.regulator_dev*, i32, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %28 = call i32 @regulator_check_voltage(%struct.regulator_dev* %27, i32* %5, i32* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %50

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.regulator*, %struct.regulator** %4, align 8
  %35 = getelementptr inbounds %struct.regulator, %struct.regulator* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.regulator*, %struct.regulator** %4, align 8
  %38 = getelementptr inbounds %struct.regulator, %struct.regulator* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %40 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.regulator_dev*, i32, i32)*, i32 (%struct.regulator_dev*, i32, i32)** %44, align 8
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 %45(%struct.regulator_dev* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %32, %31, %23
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %52 = load i32, i32* @REGULATOR_EVENT_VOLTAGE_CHANGE, align 4
  %53 = call i32 @_notifier_call_chain(%struct.regulator_dev* %51, i32 %52, i32* null)
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_check_voltage(%struct.regulator_dev*, i32*, i32*) #1

declare dso_local i32 @_notifier_call_chain(%struct.regulator_dev*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
