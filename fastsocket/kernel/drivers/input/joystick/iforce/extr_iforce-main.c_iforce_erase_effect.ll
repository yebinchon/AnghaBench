; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_erase_effect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_erase_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.iforce = type { %struct.iforce_core_effect* }
%struct.iforce_core_effect = type { i64*, i32, i32 }

@FF_MOD1_IS_USED = common dso_local global i32 0, align 4
@FF_MOD2_IS_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32)* @iforce_erase_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_erase_effect(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iforce*, align 8
  %6 = alloca %struct.iforce_core_effect*, align 8
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %9 = call %struct.iforce* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.iforce* %9, %struct.iforce** %5, align 8
  %10 = load %struct.iforce*, %struct.iforce** %5, align 8
  %11 = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 0
  %12 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %12, i64 %14
  store %struct.iforce_core_effect* %15, %struct.iforce_core_effect** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @FF_MOD1_IS_USED, align 4
  %17 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %6, align 8
  %18 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = call i64 @test_bit(i32 %16, i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %6, align 8
  %24 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %23, i32 0, i32 2
  %25 = call i32 @release_resource(i32* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @FF_MOD2_IS_USED, align 4
  %31 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %6, align 8
  %32 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @test_bit(i32 %30, i64* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %6, align 8
  %38 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %37, i32 0, i32 1
  %39 = call i32 @release_resource(i32* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %29, %26
  %41 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %6, align 8
  %42 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.iforce* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @release_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
