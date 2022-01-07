; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_impd1.c_impd1_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_impd1.c_impd1_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.impd1_module = type { i32, i32* }

@impd1_remove_one = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm_device*)* @impd1_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @impd1_remove(%struct.lm_device* %0) #0 {
  %2 = alloca %struct.lm_device*, align 8
  %3 = alloca %struct.impd1_module*, align 8
  %4 = alloca i32, align 4
  store %struct.lm_device* %0, %struct.lm_device** %2, align 8
  %5 = load %struct.lm_device*, %struct.lm_device** %2, align 8
  %6 = call %struct.impd1_module* @lm_get_drvdata(%struct.lm_device* %5)
  store %struct.impd1_module* %6, %struct.impd1_module** %3, align 8
  %7 = load %struct.lm_device*, %struct.lm_device** %2, align 8
  %8 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %7, i32 0, i32 1
  %9 = load i32, i32* @impd1_remove_one, align 4
  %10 = call i32 @device_for_each_child(i32* %8, i32* null, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.impd1_module*, %struct.impd1_module** %3, align 8
  %14 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.impd1_module*, %struct.impd1_module** %3, align 8
  %20 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clkdev_drop(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.lm_device*, %struct.lm_device** %2, align 8
  %32 = call i32 @lm_set_drvdata(%struct.lm_device* %31, i32* null)
  %33 = load %struct.impd1_module*, %struct.impd1_module** %3, align 8
  %34 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iounmap(i32 %35)
  %37 = load %struct.impd1_module*, %struct.impd1_module** %3, align 8
  %38 = call i32 @kfree(%struct.impd1_module* %37)
  %39 = load %struct.lm_device*, %struct.lm_device** %2, align 8
  %40 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SZ_4K, align 4
  %44 = call i32 @release_mem_region(i32 %42, i32 %43)
  ret void
}

declare dso_local %struct.impd1_module* @lm_get_drvdata(%struct.lm_device*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clkdev_drop(i32) #1

declare dso_local i32 @lm_set_drvdata(%struct.lm_device*, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.impd1_module*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
