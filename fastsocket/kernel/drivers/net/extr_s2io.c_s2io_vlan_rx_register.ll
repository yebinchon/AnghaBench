; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.s2io_nic = type { %struct.vlan_group*, %struct.mac_info, %struct.config_param }
%struct.mac_info = type { %struct.fifo_info* }
%struct.fifo_info = type { i32 }
%struct.config_param = type { i32 }

@MAX_TX_FIFOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @s2io_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2io_nic*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.config_param*, align 8
  %10 = alloca %struct.mac_info*, align 8
  %11 = alloca %struct.fifo_info*, align 8
  %12 = alloca %struct.fifo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %13)
  store %struct.s2io_nic* %14, %struct.s2io_nic** %6, align 8
  %15 = load i32, i32* @MAX_TX_FIFOS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %20 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %19, i32 0, i32 2
  store %struct.config_param* %20, %struct.config_param** %9, align 8
  %21 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %22 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %21, i32 0, i32 1
  store %struct.mac_info* %22, %struct.mac_info** %10, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %43, %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.config_param*, %struct.config_param** %9, align 8
  %26 = getelementptr inbounds %struct.config_param, %struct.config_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %31 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %30, i32 0, i32 0
  %32 = load %struct.fifo_info*, %struct.fifo_info** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %32, i64 %34
  store %struct.fifo_info* %35, %struct.fifo_info** %11, align 8
  %36 = load %struct.fifo_info*, %struct.fifo_info** %11, align 8
  %37 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %18, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %37, i64 %41)
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %48 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %49 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %48, i32 0, i32 0
  store %struct.vlan_group* %47, %struct.vlan_group** %49, align 8
  %50 = load %struct.config_param*, %struct.config_param** %9, align 8
  %51 = getelementptr inbounds %struct.config_param, %struct.config_param* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %71, %46
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %59 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %58, i32 0, i32 0
  %60 = load %struct.fifo_info*, %struct.fifo_info** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %60, i64 %62
  store %struct.fifo_info* %63, %struct.fifo_info** %12, align 8
  %64 = load %struct.fifo_info*, %struct.fifo_info** %12, align 8
  %65 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %18, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %69)
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %5, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
