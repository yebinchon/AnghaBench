; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.typhoon = type { i32, %struct.vlan_group*, i32, i32 }
%struct.cmd_desc = type { i32, i32 }

@TYPHOON_OFFLOAD_VLAN = common dso_local global i32 0, align 4
@TYPHOON_CMD_SET_OFFLOAD_TASKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: vlan offload error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @typhoon_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.typhoon*, align 8
  %6 = alloca %struct.cmd_desc, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.typhoon* @netdev_priv(%struct.net_device* %8)
  store %struct.typhoon* %9, %struct.typhoon** %5, align 8
  %10 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %11 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %14 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %13, i32 0, i32 1
  %15 = load %struct.vlan_group*, %struct.vlan_group** %14, align 8
  %16 = icmp ne %struct.vlan_group* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %20 = icmp ne %struct.vlan_group* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %2
  %25 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %26 = icmp ne %struct.vlan_group* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @TYPHOON_OFFLOAD_VLAN, align 4
  %29 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %30 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %40

33:                                               ; preds = %24
  %34 = load i32, i32* @TYPHOON_OFFLOAD_VLAN, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %37 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @TYPHOON_CMD_SET_OFFLOAD_TASKS, align 4
  %42 = call i32 @INIT_COMMAND_WITH_RESPONSE(%struct.cmd_desc* %6, i32 %41)
  %43 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %44 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %6, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %48 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %6, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %52 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %55 = call i32 @typhoon_issue_command(%struct.typhoon* %54, i32 1, %struct.cmd_desc* %6, i32 0, i32* null)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %40
  %59 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %60 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %58, %40
  %66 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %67 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_bh(i32* %67)
  br label %69

69:                                               ; preds = %65, %2
  %70 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %71 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %72 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %71, i32 0, i32 1
  store %struct.vlan_group* %70, %struct.vlan_group** %72, align 8
  %73 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %74 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock_bh(i32* %74)
  ret void
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @INIT_COMMAND_WITH_RESPONSE(%struct.cmd_desc*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @typhoon_issue_command(%struct.typhoon*, i32, %struct.cmd_desc*, i32, i32*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
