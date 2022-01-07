; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_plat-ram.c_platram_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_plat-ram.c_platram_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platram_info = type { %struct.TYPE_2__, %struct.platram_info*, i64, %struct.platram_info*, i64 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"removing device\0A\00", align 1
@PLATRAM_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @platram_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platram_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platram_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.platram_info* @to_platram_info(%struct.platform_device* %5)
  store %struct.platram_info* %6, %struct.platram_info** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call i32 @platform_set_drvdata(%struct.platform_device* %7, i32* null)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %13 = icmp eq %struct.platram_info* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %17 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %22 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @del_mtd_device(i64 %23)
  %25 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %26 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @map_destroy(i64 %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %31 = load i32, i32* @PLATRAM_RO, align 4
  %32 = call i32 @platram_setrw(%struct.platram_info* %30, i32 %31)
  %33 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %34 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %33, i32 0, i32 1
  %35 = load %struct.platram_info*, %struct.platram_info** %34, align 8
  %36 = icmp ne %struct.platram_info* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %39 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %38, i32 0, i32 1
  %40 = load %struct.platram_info*, %struct.platram_info** %39, align 8
  %41 = call i32 @release_resource(%struct.platram_info* %40)
  %42 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %43 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %42, i32 0, i32 1
  %44 = load %struct.platram_info*, %struct.platram_info** %43, align 8
  %45 = call i32 @kfree(%struct.platram_info* %44)
  br label %46

46:                                               ; preds = %37, %29
  %47 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %48 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %54 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @iounmap(i32* %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %60 = call i32 @kfree(%struct.platram_info* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.platram_info* @to_platram_info(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @del_mtd_device(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @platram_setrw(%struct.platram_info*, i32) #1

declare dso_local i32 @release_resource(%struct.platram_info*) #1

declare dso_local i32 @kfree(%struct.platram_info*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
