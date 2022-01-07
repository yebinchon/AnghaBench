; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s2io_nic = type { i64, %struct.mac_info, %struct.config_param }
%struct.mac_info = type { %struct.fifo_info* }
%struct.fifo_info = type { i32 }
%struct.config_param = type { i32 }

@MAX_TX_FIFOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @s2io_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_vlan_rx_kill_vid(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.s2io_nic*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.config_param*, align 8
  %10 = alloca %struct.mac_info*, align 8
  %11 = alloca %struct.fifo_info*, align 8
  %12 = alloca %struct.fifo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
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
  %47 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %48 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %53 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i16, i16* %4, align 2
  %56 = call i32 @vlan_group_set_device(i64 %54, i16 zeroext %55, i32* null)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.config_param*, %struct.config_param** %9, align 8
  %59 = getelementptr inbounds %struct.config_param, %struct.config_param* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %79, %57
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %67 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %66, i32 0, i32 0
  %68 = load %struct.fifo_info*, %struct.fifo_info** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %68, i64 %70
  store %struct.fifo_info* %71, %struct.fifo_info** %12, align 8
  %72 = load %struct.fifo_info*, %struct.fifo_info** %12, align 8
  %73 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %18, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %77)
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %5, align 4
  br label %62

82:                                               ; preds = %62
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vlan_group_set_device(i64, i16 zeroext, i32*) #1

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
