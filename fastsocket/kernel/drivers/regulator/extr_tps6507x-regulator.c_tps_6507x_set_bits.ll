; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps_6507x_set_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_tps6507x-regulator.c_tps_6507x_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps_pmic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Read from reg 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Write for reg 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps_pmic*, i32, i32)* @tps_6507x_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps_6507x_set_bits(%struct.tps_pmic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tps_pmic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tps_pmic* %0, %struct.tps_pmic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %10 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @tps_6507x_read(%struct.tps_pmic* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %19 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %7, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @tps_6507x_write(%struct.tps_pmic* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %37 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %25
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.tps_pmic*, %struct.tps_pmic** %4, align 8
  %45 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tps_6507x_read(%struct.tps_pmic*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tps_6507x_write(%struct.tps_pmic*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
