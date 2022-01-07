; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_create_hba_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_create_hba_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@cciss_host_type = common dso_local global i32 0, align 4
@cciss_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @cciss_create_hba_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cciss_create_hba_sysfs_entry(%struct.ctlr_info* %0) #0 {
  %2 = alloca %struct.ctlr_info*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %2, align 8
  %3 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %4 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %3, i32 0, i32 0
  %5 = call i32 @device_initialize(%struct.TYPE_6__* %4)
  %6 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %7 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32* @cciss_host_type, i32** %8, align 8
  %9 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %10 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32* @cciss_bus_type, i32** %11, align 8
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %13 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %12, i32 0, i32 0
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_set_name(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32* %21, i32** %24, align 8
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %26 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %25, i32 0, i32 0
  %27 = call i32 @device_add(%struct.TYPE_6__* %26)
  ret i32 %27
}

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
