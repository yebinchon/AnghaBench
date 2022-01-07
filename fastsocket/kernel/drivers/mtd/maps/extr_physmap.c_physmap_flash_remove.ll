; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_physmap.c_physmap_flash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_physmap.c_physmap_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.physmap_flash_data* }
%struct.physmap_flash_data = type { i64 }
%struct.physmap_flash_info = type { i32**, i32*, i32, i64 }

@MAX_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @physmap_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physmap_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.physmap_flash_info*, align 8
  %5 = alloca %struct.physmap_flash_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.physmap_flash_info* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.physmap_flash_info* %8, %struct.physmap_flash_info** %4, align 8
  %9 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %10 = icmp eq %struct.physmap_flash_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_set_drvdata(%struct.platform_device* %13, i32* null)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %17, align 8
  store %struct.physmap_flash_data* %18, %struct.physmap_flash_data** %5, align 8
  %19 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %20 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %25 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @del_mtd_device(i32* %26)
  br label %28

28:                                               ; preds = %23, %12
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_RESOURCES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %35 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %44 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @map_destroy(i32* %49)
  br label %51

51:                                               ; preds = %42, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.physmap_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @del_mtd_device(i32*) #1

declare dso_local i32 @map_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
