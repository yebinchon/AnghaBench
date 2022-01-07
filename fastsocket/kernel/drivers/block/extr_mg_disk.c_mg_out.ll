; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_host = type { i32, void (%struct.mg_host*)*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mg_drv_data* }
%struct.mg_drv_data = type { i32 }

@MG_STAT_READY = common dso_local global i32 0, align 4
@MG_TMAX_CONF_TO_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@MG_RES_SEC = common dso_local global i64 0, align 8
@MG_REG_SECT_CNT = common dso_local global i64 0, align 8
@MG_REG_SECT_NUM = common dso_local global i64 0, align 8
@MG_REG_CYL_LOW = common dso_local global i64 0, align 8
@MG_REG_CYL_HIGH = common dso_local global i64 0, align 8
@ATA_LBA = common dso_local global i32 0, align 4
@ATA_DEVICE_OBS = common dso_local global i32 0, align 4
@MG_REG_DRV_HEAD = common dso_local global i64 0, align 8
@MG_REG_COMMAND = common dso_local global i64 0, align 8
@MG_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_host*, i32, i32, i32, void (%struct.mg_host*)*)* @mg_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_out(%struct.mg_host* %0, i32 %1, i32 %2, i32 %3, void (%struct.mg_host*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.mg_host*)*, align 8
  %12 = alloca %struct.mg_drv_data*, align 8
  store %struct.mg_host* %0, %struct.mg_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store void (%struct.mg_host*)* %4, void (%struct.mg_host*)** %11, align 8
  %13 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %14 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mg_drv_data*, %struct.mg_drv_data** %16, align 8
  store %struct.mg_drv_data* %17, %struct.mg_drv_data** %12, align 8
  %18 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %19 = load i32, i32* @MG_STAT_READY, align 4
  %20 = load i32, i32* @MG_TMAX_CONF_TO_CMD, align 4
  %21 = call i64 @mg_wait(%struct.mg_host* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %25 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  br label %104

27:                                               ; preds = %5
  %28 = load %struct.mg_drv_data*, %struct.mg_drv_data** %12, align 8
  %29 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load void (%struct.mg_host*)*, void (%struct.mg_host*)** %11, align 8
  %34 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %35 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %34, i32 0, i32 1
  store void (%struct.mg_host*)* %33, void (%struct.mg_host*)** %35, align 8
  %36 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %37 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %36, i32 0, i32 3
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @mod_timer(i32* %37, i64 %42)
  br label %44

44:                                               ; preds = %32, %27
  %45 = load i64, i64* @MG_RES_SEC, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* @MG_RES_SEC, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %56 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MG_REG_SECT_CNT, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @outb(i32 %54, i64 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %63 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MG_REG_SECT_NUM, align 8
  %66 = add i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = lshr i32 %68, 8
  %70 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %71 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MG_REG_CYL_LOW, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @outb(i32 %69, i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = lshr i32 %76, 16
  %78 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %79 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MG_REG_CYL_HIGH, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @outb(i32 %77, i64 %82)
  %84 = load i32, i32* %8, align 4
  %85 = lshr i32 %84, 24
  %86 = load i32, i32* @ATA_LBA, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @ATA_DEVICE_OBS, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %91 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MG_REG_DRV_HEAD, align 8
  %94 = add i64 %92, %93
  %95 = call i32 @outb(i32 %89, i64 %94)
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.mg_host*, %struct.mg_host** %7, align 8
  %98 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MG_REG_COMMAND, align 8
  %101 = add i64 %99, %100
  %102 = call i32 @outb(i32 %96, i64 %101)
  %103 = load i32, i32* @MG_ERR_NONE, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %53, %23
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @mg_wait(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
