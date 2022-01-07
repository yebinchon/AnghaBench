; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_disk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_disk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_host = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mg_drv_data* }
%struct.mg_drv_data = type { i64 }

@ATA_BUSY = common dso_local global i32 0, align 4
@MG_TMAX_RST_TO_BUSY = common dso_local global i32 0, align 4
@MG_STAT_READY = common dso_local global i32 0, align 4
@MG_TMAX_HDRST_TO_RDY = common dso_local global i32 0, align 4
@ATA_SRST = common dso_local global i32 0, align 4
@ATA_NIEN = common dso_local global i32 0, align 4
@MG_REG_DRV_CTRL = common dso_local global i64 0, align 8
@MG_TMAX_SWRST_TO_RDY = common dso_local global i32 0, align 4
@MG_REG_STATUS = common dso_local global i64 0, align 8
@MG_ERR_INIT_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_host*)* @mg_disk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_disk_init(%struct.mg_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mg_host*, align 8
  %4 = alloca %struct.mg_drv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mg_host* %0, %struct.mg_host** %3, align 8
  %7 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %8 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mg_drv_data*, %struct.mg_drv_data** %10, align 8
  store %struct.mg_drv_data* %11, %struct.mg_drv_data** %4, align 8
  %12 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %13 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @gpio_set_value(i32 %14, i32 0)
  %16 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %17 = load i32, i32* @ATA_BUSY, align 4
  %18 = load i32, i32* @MG_TMAX_RST_TO_BUSY, align 4
  %19 = call i32 @mg_wait(%struct.mg_host* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %101

24:                                               ; preds = %1
  %25 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %26 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gpio_set_value(i32 %27, i32 1)
  %29 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %30 = load i32, i32* @MG_STAT_READY, align 4
  %31 = load i32, i32* @MG_TMAX_HDRST_TO_RDY, align 4
  %32 = call i32 @mg_wait(%struct.mg_host* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %24
  %38 = load i32, i32* @ATA_SRST, align 4
  %39 = load %struct.mg_drv_data*, %struct.mg_drv_data** %4, align 8
  %40 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ATA_NIEN, align 4
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %38, %47
  %49 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %50 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MG_REG_DRV_CTRL, align 8
  %53 = add i64 %51, %52
  %54 = call i32 @outb(i32 %48, i64 %53)
  %55 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %56 = load i32, i32* @ATA_BUSY, align 4
  %57 = load i32, i32* @MG_TMAX_RST_TO_BUSY, align 4
  %58 = call i32 @mg_wait(%struct.mg_host* %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %101

63:                                               ; preds = %46
  %64 = load %struct.mg_drv_data*, %struct.mg_drv_data** %4, align 8
  %65 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ATA_NIEN, align 4
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %74 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MG_REG_DRV_CTRL, align 8
  %77 = add i64 %75, %76
  %78 = call i32 @outb(i32 %72, i64 %77)
  %79 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %80 = load i32, i32* @MG_STAT_READY, align 4
  %81 = load i32, i32* @MG_TMAX_SWRST_TO_RDY, align 4
  %82 = call i32 @mg_wait(%struct.mg_host* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %101

87:                                               ; preds = %71
  %88 = load %struct.mg_host*, %struct.mg_host** %3, align 8
  %89 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MG_REG_STATUS, align 8
  %92 = add i64 %90, %91
  %93 = call i32 @inb(i64 %92)
  %94 = and i32 %93, 15
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 15
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @MG_ERR_INIT_STAT, align 4
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %87
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %97, %85, %61, %35, %22
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mg_wait(%struct.mg_host*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
