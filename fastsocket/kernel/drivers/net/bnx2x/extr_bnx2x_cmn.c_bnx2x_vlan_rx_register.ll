; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.bnx2x = type { i64, %struct.vlan_group* }

@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to %s HW VLAN stripping\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %17 = icmp ne %struct.vlan_group* %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bnx2x_set_vlan_stripping(%struct.bnx2x* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %35 = call i32 @bnx2x_set_vlan_stripping(%struct.bnx2x* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %44

42:                                               ; preds = %38
  %43 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi %struct.vlan_group* [ null, %41 ], [ %43, %42 ]
  %46 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 1
  store %struct.vlan_group* %45, %struct.vlan_group** %47, align 8
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_set_vlan_stripping(%struct.bnx2x*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
