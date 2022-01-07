; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_integrator-flash.c_armflash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_integrator-flash.c_armflash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flash_platform_data* }
%struct.flash_platform_data = type { i32 (...)* }
%struct.armflash_info = type { i64, i32, %struct.TYPE_4__*, %struct.armflash_info* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armflash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armflash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.armflash_info*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.armflash_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.armflash_info* %7, %struct.armflash_info** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.flash_platform_data*, %struct.flash_platform_data** %10, align 8
  store %struct.flash_platform_data* %11, %struct.flash_platform_data** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @platform_set_drvdata(%struct.platform_device* %12, i32* null)
  %14 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %15 = icmp ne %struct.armflash_info* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %1
  %17 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %18 = getelementptr inbounds %struct.armflash_info, %struct.armflash_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %23 = getelementptr inbounds %struct.armflash_info, %struct.armflash_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @del_mtd_partitions(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %28 = getelementptr inbounds %struct.armflash_info, %struct.armflash_info* %27, i32 0, i32 3
  %29 = load %struct.armflash_info*, %struct.armflash_info** %28, align 8
  %30 = call i32 @kfree(%struct.armflash_info* %29)
  %31 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %32 = getelementptr inbounds %struct.armflash_info, %struct.armflash_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %46, %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %40 = getelementptr inbounds %struct.armflash_info, %struct.armflash_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = call i32 @armflash_subdev_remove(%struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %51 = icmp ne %struct.flash_platform_data* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %53, i32 0, i32 0
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = icmp ne i32 (...)* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  br label %62

62:                                               ; preds = %57, %52, %49
  %63 = load %struct.armflash_info*, %struct.armflash_info** %3, align 8
  %64 = call i32 @kfree(%struct.armflash_info* %63)
  br label %65

65:                                               ; preds = %62, %1
  ret i32 0
}

declare dso_local %struct.armflash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @del_mtd_partitions(i64) #1

declare dso_local i32 @kfree(%struct.armflash_info*) #1

declare dso_local i32 @armflash_subdev_remove(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
