; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_mode(%struct.regulator* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regulator*, %struct.regulator** %3, align 8
  %8 = getelementptr inbounds %struct.regulator, %struct.regulator* %7, i32 0, i32 0
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  store %struct.regulator_dev* %9, %struct.regulator_dev** %5, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %11 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.regulator_dev*, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @regulator_check_mode(%struct.regulator_dev* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %37, align 8
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %38(%struct.regulator_dev* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %31, %30, %21
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_check_mode(%struct.regulator_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
