; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-notif-wait.c_iwl_wait_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-notif-wait.c_iwl_wait_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32, i32 }
%struct.iwl_notification_wait = type { i64, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_wait_notification(%struct.iwl_notif_wait_data* %0, %struct.iwl_notification_wait* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_notif_wait_data*, align 8
  %6 = alloca %struct.iwl_notification_wait*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %5, align 8
  store %struct.iwl_notification_wait* %1, %struct.iwl_notification_wait** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @wait_event_timeout(i32 %11, i32 %23, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %29, i32 0, i32 1
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.iwl_notif_wait_data*, %struct.iwl_notif_wait_data** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_notif_wait_data, %struct.iwl_notif_wait_data* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.iwl_notification_wait*, %struct.iwl_notification_wait** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_notification_wait, %struct.iwl_notification_wait* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %21
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
