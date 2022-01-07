; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_free_stid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_free_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.tid_info = type { i32, i32, %union.listen_entry* }
%union.listen_entry = type { %union.listen_entry* }
%struct.TYPE_2__ = type { %struct.tid_info }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb3_free_stid(%struct.t3cdev* %0, i32 %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca %union.listen_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %8 = call %struct.TYPE_2__* @T3C_DATA(%struct.t3cdev* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.tid_info* %9, %struct.tid_info** %5, align 8
  %10 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %union.listen_entry* @stid2entry(%struct.tid_info* %10, i32 %11)
  store %union.listen_entry* %12, %union.listen_entry** %6, align 8
  %13 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 2
  %18 = load %union.listen_entry*, %union.listen_entry** %17, align 8
  %19 = load %union.listen_entry*, %union.listen_entry** %6, align 8
  %20 = bitcast %union.listen_entry* %19 to %union.listen_entry**
  store %union.listen_entry* %18, %union.listen_entry** %20, align 8
  %21 = load %union.listen_entry*, %union.listen_entry** %6, align 8
  %22 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 2
  store %union.listen_entry* %21, %union.listen_entry** %23, align 8
  %24 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %25 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %29 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  ret void
}

declare dso_local %struct.TYPE_2__* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local %union.listen_entry* @stid2entry(%struct.tid_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
