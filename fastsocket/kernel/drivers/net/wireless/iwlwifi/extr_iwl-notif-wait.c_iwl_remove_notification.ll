; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-notif-wait.c_iwl_remove_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-notif-wait.c_iwl_remove_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32 }
%struct.iwl_notification_wait = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_remove_notification(%struct.iwl_notif_wait_data* %0, %struct.iwl_notification_wait* %1) #0 {
  %3 = alloca %struct.iwl_notif_wait_data*, align 8
  %4 = alloca %struct.iwl_notification_wait*, align 8
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %3, align 8
  store %struct.iwl_notification_wait* %1, %struct.iwl_notification_wait** %4, align 8
  %5 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock_bh(i32* %12)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
