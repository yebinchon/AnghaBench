; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_debugfs.c_b43legacy_debugfs_log_txstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_debugfs.c_b43legacy_debugfs_log_txstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_dfsentry* }
%struct.b43legacy_dfsentry = type { %struct.b43legacy_txstatus_log }
%struct.b43legacy_txstatus_log = type { i32, i32, %struct.b43legacy_txstatus* }
%struct.b43legacy_txstatus = type { i32 }

@B43legacy_NR_LOGGED_TXSTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_debugfs_log_txstat(%struct.b43legacy_wldev* %0, %struct.b43legacy_txstatus* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_txstatus*, align 8
  %5 = alloca %struct.b43legacy_dfsentry*, align 8
  %6 = alloca %struct.b43legacy_txstatus_log*, align 8
  %7 = alloca %struct.b43legacy_txstatus*, align 8
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store %struct.b43legacy_txstatus* %1, %struct.b43legacy_txstatus** %4, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  %11 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %10, align 8
  store %struct.b43legacy_dfsentry* %11, %struct.b43legacy_dfsentry** %5, align 8
  %12 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %5, align 8
  %13 = icmp ne %struct.b43legacy_dfsentry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %5, align 8
  %17 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %16, i32 0, i32 0
  store %struct.b43legacy_txstatus_log* %17, %struct.b43legacy_txstatus_log** %6, align 8
  %18 = call i32 (...) @irqs_disabled()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @B43legacy_WARN_ON(i32 %21)
  %23 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %6, align 8
  %24 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %6, align 8
  %27 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @B43legacy_NR_LOGGED_TXSTATUS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %6, align 8
  %37 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %6, align 8
  %39 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %38, i32 0, i32 2
  %40 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %40, i64 %42
  store %struct.b43legacy_txstatus* %43, %struct.b43legacy_txstatus** %7, align 8
  %44 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %7, align 8
  %45 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %46 = call i32 @memcpy(%struct.b43legacy_txstatus* %44, %struct.b43legacy_txstatus* %45, i32 4)
  %47 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %6, align 8
  %48 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.b43legacy_txstatus*, %struct.b43legacy_txstatus*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
