; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mg_drv_data* }
%struct.mg_drv_data = type { i64, i32, %struct.mg_host* }
%struct.mg_host = type { i64, i64, i64, i32, i32, i64, i64, i32 }

@MG_DISK_NAME = common dso_local global i32 0, align 4
@MG_BOOT_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mg_drv_data*, align 8
  %4 = alloca %struct.mg_host*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mg_drv_data*, %struct.mg_drv_data** %8, align 8
  store %struct.mg_drv_data* %9, %struct.mg_drv_data** %3, align 8
  %10 = load %struct.mg_drv_data*, %struct.mg_drv_data** %3, align 8
  %11 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %10, i32 0, i32 2
  %12 = load %struct.mg_host*, %struct.mg_host** %11, align 8
  store %struct.mg_host* %12, %struct.mg_host** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %14 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %13, i32 0, i32 7
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %17 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %22 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @del_gendisk(i64 %23)
  %25 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %26 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @put_disk(i64 %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %31 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %36 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @blk_cleanup_queue(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %41 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MG_DISK_NAME, align 4
  %44 = call i32 @unregister_blkdev(i32 %42, i32 %43)
  %45 = load %struct.mg_drv_data*, %struct.mg_drv_data** %3, align 8
  %46 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %51 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.mg_host* %53)
  br label %55

55:                                               ; preds = %49, %39
  %56 = load %struct.mg_drv_data*, %struct.mg_drv_data** %3, align 8
  %57 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MG_BOOT_DEV, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %63 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @gpio_free(i64 %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %68 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %73 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @gpio_free(i64 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %78 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %83 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @iounmap(i64 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.mg_host*, %struct.mg_host** %4, align 8
  %88 = call i32 @kfree(%struct.mg_host* %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @del_gendisk(i64) #1

declare dso_local i32 @put_disk(i64) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @unregister_blkdev(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.mg_host*) #1

declare dso_local i32 @gpio_free(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.mg_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
