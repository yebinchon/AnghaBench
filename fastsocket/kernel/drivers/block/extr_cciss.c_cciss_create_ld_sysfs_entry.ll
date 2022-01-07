; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_create_ld_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_create_ld_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32*, i32*, i32* }

@cciss_dev_type = common dso_local global i32 0, align 4
@cciss_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"c%dd%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ctlr_info*, i32)* @cciss_create_ld_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cciss_create_ld_sysfs_entry(%struct.ctlr_info* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %8 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.device* %26, %struct.device** %6, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @device_initialize(%struct.device* %27)
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 2
  store i32* @cciss_dev_type, i32** %30, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 1
  store i32* @cciss_bus_type, i32** %32, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %35 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_set_name(%struct.device* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %40 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %39, i32 0, i32 1
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %44 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i64 @device_add(%struct.device* %51)
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %18, %17
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @device_add(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
