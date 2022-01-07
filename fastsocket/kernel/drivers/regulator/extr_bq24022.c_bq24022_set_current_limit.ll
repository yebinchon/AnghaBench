; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_bq24022.c_bq24022_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_bq24022.c_bq24022_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.bq24022_mach_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"setting current limit to %s mA\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"500\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @bq24022_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24022_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bq24022_mach_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.bq24022_mach_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.bq24022_mach_info* %9, %struct.bq24022_mach_info** %7, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call i32 @rdev_get_dev(%struct.regulator_dev* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 500000
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.bq24022_mach_info*, %struct.bq24022_mach_info** %7, align 8
  %18 = getelementptr inbounds %struct.bq24022_mach_info, %struct.bq24022_mach_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 500000
  %22 = zext i1 %21 to i32
  %23 = call i32 @gpio_set_value(i32 %19, i32 %22)
  ret i32 0
}

declare dso_local %struct.bq24022_mach_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
