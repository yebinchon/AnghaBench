; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da903x_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_da903x.c_da903x_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da903x_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.da903x_regulator_info*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.da903x_regulator_info* %6, %struct.da903x_regulator_info** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %8 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %3, align 8
  %11 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %3, align 8
  %14 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = call i32 @da903x_clr_bits(%struct.device* %9, i32 %12, i32 %16)
  ret i32 %17
}

declare dso_local %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_da903x_dev(%struct.regulator_dev*) #1

declare dso_local i32 @da903x_clr_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
