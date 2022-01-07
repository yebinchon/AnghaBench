; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_register_clocksource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_register_clocksource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_priv = type { %struct.clocksource }
%struct.clocksource = type { i8*, i64, i32, i32, i32, i32, i32 }

@sh_tmu_clocksource_read = common dso_local global i32 0, align 4
@sh_tmu_clocksource_enable = common dso_local global i32 0, align 4
@sh_tmu_clocksource_disable = common dso_local global i32 0, align 4
@CLOCK_SOURCE_IS_CONTINUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sh_tmu: %s used as clock source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_priv*, i8*, i64)* @sh_tmu_register_clocksource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_register_clocksource(%struct.sh_tmu_priv* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sh_tmu_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clocksource*, align 8
  store %struct.sh_tmu_priv* %0, %struct.sh_tmu_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %9 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %8, i32 0, i32 0
  store %struct.clocksource* %9, %struct.clocksource** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %12 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %15 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @sh_tmu_clocksource_read, align 4
  %17 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %18 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @sh_tmu_clocksource_enable, align 4
  %20 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %21 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @sh_tmu_clocksource_disable, align 4
  %23 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %24 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = call i32 @CLOCKSOURCE_MASK(i32 32)
  %26 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %27 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @CLOCK_SOURCE_IS_CONTINUOUS, align 4
  %29 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %30 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %32 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.clocksource*, %struct.clocksource** %7, align 8
  %36 = call i32 @clocksource_register(%struct.clocksource* %35)
  ret i32 0
}

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @clocksource_register(%struct.clocksource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
