; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_vlan_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_vlan_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.vlan_group* }
%struct.vlan_group = type { i32 }
%struct.in_device = type { i32 }
%struct.net_device = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"addmcvl\00", align 1
@IPA_FULL_VLAN = common dso_local global i32 0, align 4
@VLAN_GROUP_ARRAY_LEN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_add_vlan_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_add_vlan_mc(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.in_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %10 = load i32, i32* @IPA_FULL_VLAN, align 4
  %11 = call i32 @qeth_is_supported(%struct.qeth_card* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = load %struct.vlan_group*, %struct.vlan_group** %15, align 8
  %17 = icmp eq %struct.vlan_group* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %62

19:                                               ; preds = %13
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = load %struct.vlan_group*, %struct.vlan_group** %21, align 8
  store %struct.vlan_group* %22, %struct.vlan_group** %4, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %59, %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %28, i32 %29)
  store %struct.net_device* %30, %struct.net_device** %6, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = icmp eq %struct.net_device* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_UP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %27
  br label %59

41:                                               ; preds = %33
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call %struct.in_device* @in_dev_get(%struct.net_device* %42)
  store %struct.in_device* %43, %struct.in_device** %3, align 8
  %44 = load %struct.in_device*, %struct.in_device** %3, align 8
  %45 = icmp ne %struct.in_device* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41
  %48 = load %struct.in_device*, %struct.in_device** %3, align 8
  %49 = getelementptr inbounds %struct.in_device, %struct.in_device* %48, i32 0, i32 0
  %50 = call i32 @read_lock(i32* %49)
  %51 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %52 = load %struct.in_device*, %struct.in_device** %3, align 8
  %53 = call i32 @qeth_l3_add_mc(%struct.qeth_card* %51, %struct.in_device* %52)
  %54 = load %struct.in_device*, %struct.in_device** %3, align 8
  %55 = getelementptr inbounds %struct.in_device, %struct.in_device* %54, i32 0, i32 0
  %56 = call i32 @read_unlock(i32* %55)
  %57 = load %struct.in_device*, %struct.in_device** %3, align 8
  %58 = call i32 @in_dev_put(%struct.in_device* %57)
  br label %59

59:                                               ; preds = %47, %46, %40
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %23

62:                                               ; preds = %18, %23
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local %struct.net_device* @vlan_group_get_device(%struct.vlan_group*, i32) #1

declare dso_local %struct.in_device* @in_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @qeth_l3_add_mc(%struct.qeth_card*, %struct.in_device*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
