; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_ixp2000.c_ixp2000_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flash_platform_data* }
%struct.flash_platform_data = type { i32 (...)* }
%struct.ixp2000_flash_info = type { i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp2000_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp2000_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca %struct.ixp2000_flash_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.flash_platform_data*, %struct.flash_platform_data** %8, align 8
  store %struct.flash_platform_data* %9, %struct.flash_platform_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.ixp2000_flash_info* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.ixp2000_flash_info* %11, %struct.ixp2000_flash_info** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @platform_set_drvdata(%struct.platform_device* %12, i32* null)
  %14 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %15 = icmp ne %struct.ixp2000_flash_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %19 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %24 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @del_mtd_partitions(i64 %25)
  %27 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %28 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @map_destroy(i64 %29)
  br label %31

31:                                               ; preds = %22, %17
  %32 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %33 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %39 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @iounmap(i8* %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %46 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @kfree(i64 %47)
  %49 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %50 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %55 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @release_resource(i64 %56)
  %58 = load %struct.ixp2000_flash_info*, %struct.ixp2000_flash_info** %5, align 8
  %59 = getelementptr inbounds %struct.ixp2000_flash_info, %struct.ixp2000_flash_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @kfree(i64 %60)
  br label %62

62:                                               ; preds = %53, %44
  %63 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %63, i32 0, i32 0
  %65 = load i32 (...)*, i32 (...)** %64, align 8
  %66 = icmp ne i32 (...)* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %69 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %68, i32 0, i32 0
  %70 = load i32 (...)*, i32 (...)** %69, align 8
  %71 = call i32 (...) %70()
  br label %72

72:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ixp2000_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @del_mtd_partitions(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @release_resource(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
