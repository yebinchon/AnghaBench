; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_probe_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@qeth_qdio_start_poll = common dso_local global i32 0, align 4
@qeth_qdio_input_handler = common dso_local global i64 0, align 8
@qeth_qdio_output_handler = common dso_local global i64 0, align 8
@qeth_l2_recover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l2_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_probe_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 0
  %6 = call %struct.qeth_card* @dev_get_drvdata(i32* %5)
  store %struct.qeth_card* %6, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 4
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 3
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @qeth_qdio_start_poll, align 4
  %20 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load i64, i64* @qeth_qdio_input_handler, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32* %24, i32** %27, align 8
  %28 = load i64, i64* @qeth_qdio_output_handler, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32* %29, i32** %32, align 8
  %33 = load i32, i32* @qeth_l2_recover, align 4
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  ret i32 0
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
