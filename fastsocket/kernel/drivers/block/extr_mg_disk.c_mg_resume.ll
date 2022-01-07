; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mg_drv_data* }
%struct.mg_drv_data = type { i32, %struct.mg_host* }
%struct.mg_host = type { i64 }

@MG_STAT_READY = common dso_local global i32 0, align 4
@MG_TMAX_CONF_TO_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MG_CMD_WAKEUP = common dso_local global i32 0, align 4
@MG_REG_COMMAND = common dso_local global i64 0, align 8
@MG_REG_DRV_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mg_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_resume(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mg_drv_data*, align 8
  %5 = alloca %struct.mg_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mg_drv_data*, %struct.mg_drv_data** %8, align 8
  store %struct.mg_drv_data* %9, %struct.mg_drv_data** %4, align 8
  %10 = load %struct.mg_drv_data*, %struct.mg_drv_data** %4, align 8
  %11 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %10, i32 0, i32 1
  %12 = load %struct.mg_host*, %struct.mg_host** %11, align 8
  store %struct.mg_host* %12, %struct.mg_host** %5, align 8
  %13 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %14 = load i32, i32* @MG_STAT_READY, align 4
  %15 = load i32, i32* @MG_TMAX_CONF_TO_CMD, align 4
  %16 = call i64 @mg_wait(%struct.mg_host* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32, i32* @MG_CMD_WAKEUP, align 4
  %23 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %24 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MG_REG_COMMAND, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @outb(i32 %22, i64 %27)
  %29 = call i32 @msleep(i32 1)
  %30 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %31 = load i32, i32* @MG_STAT_READY, align 4
  %32 = load i32, i32* @MG_TMAX_CONF_TO_CMD, align 4
  %33 = call i64 @mg_wait(%struct.mg_host* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %21
  %39 = load %struct.mg_drv_data*, %struct.mg_drv_data** %4, align 8
  %40 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %45 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MG_REG_DRV_CTRL, align 8
  %48 = add i64 %46, %47
  %49 = call i32 @outb(i32 0, i64 %48)
  br label %50

50:                                               ; preds = %43, %38
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %35, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @mg_wait(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
