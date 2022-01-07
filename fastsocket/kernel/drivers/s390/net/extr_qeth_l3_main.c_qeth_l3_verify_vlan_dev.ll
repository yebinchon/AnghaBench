; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_verify_vlan_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_verify_vlan_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qeth_card = type { %struct.vlan_group* }
%struct.vlan_group = type { i32 }
%struct.TYPE_2__ = type { i8* }

@VLAN_GROUP_ARRAY_LEN = common dso_local global i32 0, align 4
@QETH_VLAN_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.qeth_card*)* @qeth_l3_verify_vlan_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_verify_vlan_dev(%struct.net_device* %0, %struct.qeth_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlan_group*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.qeth_card* %1, %struct.qeth_card** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  store %struct.vlan_group* %11, %struct.vlan_group** %7, align 8
  %12 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %13 = icmp ne %struct.vlan_group* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %22, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = icmp eq %struct.net_device* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @QETH_VLAN_CARD, align 4
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %17

33:                                               ; preds = %27, %17
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call %struct.TYPE_2__* @vlan_dev_real_dev(%struct.net_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %42 = bitcast %struct.qeth_card* %41 to i8*
  %43 = icmp eq i8* %40, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %44, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.net_device* @vlan_group_get_device(%struct.vlan_group*, i32) #1

declare dso_local %struct.TYPE_2__* @vlan_dev_real_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
