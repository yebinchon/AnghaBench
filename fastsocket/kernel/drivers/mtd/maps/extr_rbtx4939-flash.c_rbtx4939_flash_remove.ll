; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_rbtx4939-flash.c_rbtx4939_flash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_rbtx4939-flash.c_rbtx4939_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rbtx4939_flash_data* }
%struct.rbtx4939_flash_data = type { i64 }
%struct.rbtx4939_flash_info = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rbtx4939_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtx4939_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rbtx4939_flash_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.rbtx4939_flash_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.rbtx4939_flash_info* %6, %struct.rbtx4939_flash_info** %4, align 8
  %7 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %4, align 8
  %8 = icmp ne %struct.rbtx4939_flash_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_set_drvdata(%struct.platform_device* %11, i32* null)
  %13 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %4, align 8
  %14 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %4, align 8
  %19 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @del_mtd_device(i64 %20)
  %22 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %4, align 8
  %23 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @map_destroy(i64 %24)
  br label %26

26:                                               ; preds = %17, %10
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.rbtx4939_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @del_mtd_device(i64) #1

declare dso_local i32 @map_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
