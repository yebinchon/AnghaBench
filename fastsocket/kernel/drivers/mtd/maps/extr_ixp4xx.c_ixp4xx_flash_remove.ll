; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp4xx.c_ixp4xx_flash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp4xx.c_ixp4xx_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flash_platform_data* }
%struct.flash_platform_data = type { i32 (...)* }
%struct.ixp4xx_flash_info = type { i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp4xx_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca %struct.ixp4xx_flash_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.flash_platform_data*, %struct.flash_platform_data** %8, align 8
  store %struct.flash_platform_data* %9, %struct.flash_platform_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.ixp4xx_flash_info* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.ixp4xx_flash_info* %11, %struct.ixp4xx_flash_info** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @platform_set_drvdata(%struct.platform_device* %12, i32* null)
  %14 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %15 = icmp ne %struct.ixp4xx_flash_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %19 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %24 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @del_mtd_partitions(i64 %25)
  %27 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %28 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @map_destroy(i64 %29)
  br label %31

31:                                               ; preds = %22, %17
  %32 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %33 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %39 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @iounmap(i64 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %45 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @kfree(i64 %46)
  %48 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %49 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %54 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @release_resource(i64 %55)
  %57 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %58 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @kfree(i64 %59)
  br label %61

61:                                               ; preds = %52, %43
  %62 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %63 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %62, i32 0, i32 0
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = icmp ne i32 (...)* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %68 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %67, i32 0, i32 0
  %69 = load i32 (...)*, i32 (...)** %68, align 8
  %70 = call i32 (...) %69()
  br label %71

71:                                               ; preds = %66, %61
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ixp4xx_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @del_mtd_partitions(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @release_resource(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
