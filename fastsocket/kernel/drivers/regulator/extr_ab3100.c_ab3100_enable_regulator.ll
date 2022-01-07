; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_enable_regulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_ab3100.c_ab3100_enable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.ab3100_regulator* }
%struct.ab3100_regulator = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to get regid %d value\0A\00", align 1
@AB3100_REG_ON_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set regid %d value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab3100_enable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_enable_regulator(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab3100_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 1
  %9 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %8, align 8
  store %struct.ab3100_regulator* %9, %struct.ab3100_regulator** %4, align 8
  %10 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %14 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ab3100_get_register_interruptible(i32 %12, i32 %15, i32* %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 0
  %22 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %23 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %69

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @AB3100_REG_ON_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %69

33:                                               ; preds = %27
  %34 = load i32, i32* @AB3100_REG_ON_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %38 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %41 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ab3100_set_register_interruptible(i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %33
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 0
  %50 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %51 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %69

55:                                               ; preds = %33
  %56 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %4, align 8
  %57 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %67 [
    i32 135, label %59
    i32 134, label %59
    i32 133, label %59
    i32 132, label %59
    i32 129, label %59
    i32 128, label %59
    i32 131, label %61
    i32 130, label %63
    i32 136, label %65
  ]

59:                                               ; preds = %55, %55, %55, %55, %55, %55
  %60 = call i32 @udelay(i32 200)
  br label %68

61:                                               ; preds = %55
  %62 = call i32 @udelay(i32 600)
  br label %68

63:                                               ; preds = %55
  %64 = call i32 @udelay(i32 400)
  br label %68

65:                                               ; preds = %55
  %66 = call i32 @mdelay(i32 1)
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %65, %63, %61, %59
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %47, %32, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ab3100_get_register_interruptible(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ab3100_set_register_interruptible(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
