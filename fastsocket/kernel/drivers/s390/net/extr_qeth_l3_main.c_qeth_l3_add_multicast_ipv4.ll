; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_multicast_ipv4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_multicast_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.in_device = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chkmcv4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_add_multicast_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_add_multicast_ipv4(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.in_device*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load i32, i32* @TRACE, align 4
  %5 = call i32 @QETH_DBF_TEXT(i32 %4, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.in_device* @in_dev_get(i32 %8)
  store %struct.in_device* %9, %struct.in_device** %3, align 8
  %10 = load %struct.in_device*, %struct.in_device** %3, align 8
  %11 = icmp eq %struct.in_device* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.in_device*, %struct.in_device** %3, align 8
  %15 = getelementptr inbounds %struct.in_device, %struct.in_device* %14, i32 0, i32 0
  %16 = call i32 @read_lock(i32* %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %18 = load %struct.in_device*, %struct.in_device** %3, align 8
  %19 = call i32 @qeth_l3_add_mc(%struct.qeth_card* %17, %struct.in_device* %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = call i32 @qeth_l3_add_vlan_mc(%struct.qeth_card* %20)
  %22 = load %struct.in_device*, %struct.in_device** %3, align 8
  %23 = getelementptr inbounds %struct.in_device, %struct.in_device* %22, i32 0, i32 0
  %24 = call i32 @read_unlock(i32* %23)
  %25 = load %struct.in_device*, %struct.in_device** %3, align 8
  %26 = call i32 @in_dev_put(%struct.in_device* %25)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.in_device* @in_dev_get(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @qeth_l3_add_mc(%struct.qeth_card*, %struct.in_device*) #1

declare dso_local i32 @qeth_l3_add_vlan_mc(%struct.qeth_card*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
