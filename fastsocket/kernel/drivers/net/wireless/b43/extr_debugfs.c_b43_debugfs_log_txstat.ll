; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_b43_debugfs_log_txstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_debugfs.c_b43_debugfs_log_txstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_dfsentry* }
%struct.b43_dfsentry = type { %struct.b43_txstatus_log }
%struct.b43_txstatus_log = type { i32, %struct.b43_txstatus* }
%struct.b43_txstatus = type { i32 }

@B43_NR_LOGGED_TXSTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_debugfs_log_txstat(%struct.b43_wldev* %0, %struct.b43_txstatus* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_txstatus*, align 8
  %5 = alloca %struct.b43_dfsentry*, align 8
  %6 = alloca %struct.b43_txstatus_log*, align 8
  %7 = alloca %struct.b43_txstatus*, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_txstatus* %1, %struct.b43_txstatus** %4, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %10, align 8
  store %struct.b43_dfsentry* %11, %struct.b43_dfsentry** %5, align 8
  %12 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %5, align 8
  %13 = icmp ne %struct.b43_dfsentry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.b43_dfsentry*, %struct.b43_dfsentry** %5, align 8
  %17 = getelementptr inbounds %struct.b43_dfsentry, %struct.b43_dfsentry* %16, i32 0, i32 0
  store %struct.b43_txstatus_log* %17, %struct.b43_txstatus_log** %6, align 8
  %18 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %6, align 8
  %19 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @B43_NR_LOGGED_TXSTATUS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %6, align 8
  %29 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.b43_txstatus_log*, %struct.b43_txstatus_log** %6, align 8
  %31 = getelementptr inbounds %struct.b43_txstatus_log, %struct.b43_txstatus_log* %30, i32 0, i32 1
  %32 = load %struct.b43_txstatus*, %struct.b43_txstatus** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.b43_txstatus, %struct.b43_txstatus* %32, i64 %34
  store %struct.b43_txstatus* %35, %struct.b43_txstatus** %7, align 8
  %36 = load %struct.b43_txstatus*, %struct.b43_txstatus** %7, align 8
  %37 = load %struct.b43_txstatus*, %struct.b43_txstatus** %4, align 8
  %38 = call i32 @memcpy(%struct.b43_txstatus* %36, %struct.b43_txstatus* %37, i32 4)
  br label %39

39:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @memcpy(%struct.b43_txstatus*, %struct.b43_txstatus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
