; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_alloc_atid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_alloc_atid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgb3_client = type { i32 }
%struct.tid_info = type { i64, i64, i32, i32, %union.active_open_entry*, %union.active_open_entry*, i32 }
%union.active_open_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cxgb3_client*, i8* }
%struct.TYPE_4__ = type { %struct.tid_info }

@MC5_MIN_TIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb3_alloc_atid(%struct.t3cdev* %0, %struct.cxgb3_client* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.cxgb3_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca %union.active_open_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.cxgb3_client* %1, %struct.cxgb3_client** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %11 = call %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tid_info* %12, %struct.tid_info** %8, align 8
  %13 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 4
  %18 = load %union.active_open_entry*, %union.active_open_entry** %17, align 8
  %19 = icmp ne %union.active_open_entry* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %3
  %21 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %22 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %25 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %24, i32 0, i32 6
  %26 = call i64 @atomic_read(i32* %25)
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* @MC5_MIN_TIDS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %31 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %20
  %35 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %36 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %35, i32 0, i32 4
  %37 = load %union.active_open_entry*, %union.active_open_entry** %36, align 8
  store %union.active_open_entry* %37, %union.active_open_entry** %9, align 8
  %38 = load %union.active_open_entry*, %union.active_open_entry** %9, align 8
  %39 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %39, i32 0, i32 5
  %41 = load %union.active_open_entry*, %union.active_open_entry** %40, align 8
  %42 = ptrtoint %union.active_open_entry* %38 to i64
  %43 = ptrtoint %union.active_open_entry* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 16
  %46 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %47 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %union.active_open_entry*, %union.active_open_entry** %9, align 8
  %53 = bitcast %union.active_open_entry* %52 to %union.active_open_entry**
  %54 = load %union.active_open_entry*, %union.active_open_entry** %53, align 8
  %55 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %56 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %55, i32 0, i32 4
  store %union.active_open_entry* %54, %union.active_open_entry** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %union.active_open_entry*, %union.active_open_entry** %9, align 8
  %59 = bitcast %union.active_open_entry* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.cxgb3_client*, %struct.cxgb3_client** %5, align 8
  %62 = load %union.active_open_entry*, %union.active_open_entry** %9, align 8
  %63 = bitcast %union.active_open_entry* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.cxgb3_client* %61, %struct.cxgb3_client** %64, align 8
  %65 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %66 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %34, %20, %3
  %70 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %71 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %70, i32 0, i32 3
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
