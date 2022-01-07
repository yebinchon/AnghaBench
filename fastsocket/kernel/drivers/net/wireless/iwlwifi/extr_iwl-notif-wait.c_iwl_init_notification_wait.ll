; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-notif-wait.c_iwl_init_notification_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-notif-wait.c_iwl_init_notification_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32, i32 }
%struct.iwl_notification_wait = type { i32 (%struct.iwl_notif_wait_data.0*, %struct.iwl_rx_packet*, i8*)*, i32, i32, i32, i32, i32, i8* }
%struct.iwl_notif_wait_data.0 = type opaque
%struct.iwl_rx_packet = type opaque
%struct.iwl_rx_packet.1 = type opaque

@MAX_NOTIF_CMDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_init_notification_wait(%struct.iwl_notif_wait_data* %0, %struct.iwl_notification_wait* %1, i32* %2, i32 %3, i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.iwl_notif_wait_data*, align 8
  %8 = alloca %struct.iwl_notification_wait*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)*, align 8
  %12 = alloca i8*, align 8
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %7, align 8
  store %struct.iwl_notification_wait* %1, %struct.iwl_notification_wait** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)* %4, i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @MAX_NOTIF_CMDS, align 4
  %15 = icmp sgt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @MAX_NOTIF_CMDS, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)*, i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)** %11, align 8
  %23 = bitcast i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet.1*, i8*)* %22 to i32 (%struct.iwl_notif_wait_data.0*, %struct.iwl_rx_packet*, i8*)*
  %24 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %24, i32 0, i32 0
  store i32 (%struct.iwl_notif_wait_data.0*, %struct.iwl_rx_packet*, i8*)* %23, i32 (%struct.iwl_notif_wait_data.0*, %struct.iwl_rx_packet*, i8*)** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %41 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %40, i32 0, i32 3
  store i32 0, i32* %41, align 8
  %42 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %45, i32 0, i32 4
  %47 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %7, align 8
  %48 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %47, i32 0, i32 1
  %49 = call i32 @list_add(i32* %46, i32* %48)
  %50 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
