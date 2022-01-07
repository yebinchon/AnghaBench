; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_pmic_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_pmic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.regulator_dev = type { i32 }

@MAX1586_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max1586_pmic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_pmic_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.regulator_dev**, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.regulator_dev** @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.regulator_dev** %6, %struct.regulator_dev*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX1586_V6, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.regulator_dev**, %struct.regulator_dev*** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %12, i64 %14
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  %17 = icmp ne %struct.regulator_dev* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.regulator_dev**, %struct.regulator_dev*** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %19, i64 %21
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %22, align 8
  %24 = call i32 @regulator_unregister(%struct.regulator_dev* %23)
  br label %25

25:                                               ; preds = %18, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.regulator_dev**, %struct.regulator_dev*** %3, align 8
  %31 = call i32 @kfree(%struct.regulator_dev** %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, i32* null)
  ret i32 0
}

declare dso_local %struct.regulator_dev** @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regulator_unregister(%struct.regulator_dev*) #1

declare dso_local i32 @kfree(%struct.regulator_dev**) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
