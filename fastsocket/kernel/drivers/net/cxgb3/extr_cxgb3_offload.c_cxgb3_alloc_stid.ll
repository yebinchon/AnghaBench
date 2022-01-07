; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_alloc_stid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_alloc_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgb3_client = type { i32 }
%struct.tid_info = type { i32, i32, i32, %union.listen_entry*, %union.listen_entry* }
%union.listen_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cxgb3_client*, i8* }
%struct.TYPE_4__ = type { %struct.tid_info }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb3_alloc_stid(%struct.t3cdev* %0, %struct.cxgb3_client* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.cxgb3_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca %union.listen_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.cxgb3_client* %1, %struct.cxgb3_client** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %11 = call %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tid_info* %12, %struct.tid_info** %8, align 8
  %13 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 3
  %18 = load %union.listen_entry*, %union.listen_entry** %17, align 8
  %19 = icmp ne %union.listen_entry* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %3
  %21 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %22 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %21, i32 0, i32 3
  %23 = load %union.listen_entry*, %union.listen_entry** %22, align 8
  store %union.listen_entry* %23, %union.listen_entry** %9, align 8
  %24 = load %union.listen_entry*, %union.listen_entry** %9, align 8
  %25 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %26 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %25, i32 0, i32 4
  %27 = load %union.listen_entry*, %union.listen_entry** %26, align 8
  %28 = ptrtoint %union.listen_entry* %24 to i64
  %29 = ptrtoint %union.listen_entry* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 16
  %32 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %33 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %union.listen_entry*, %union.listen_entry** %9, align 8
  %39 = bitcast %union.listen_entry* %38 to %union.listen_entry**
  %40 = load %union.listen_entry*, %union.listen_entry** %39, align 8
  %41 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %42 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %41, i32 0, i32 3
  store %union.listen_entry* %40, %union.listen_entry** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %union.listen_entry*, %union.listen_entry** %9, align 8
  %45 = bitcast %union.listen_entry* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.cxgb3_client*, %struct.cxgb3_client** %5, align 8
  %48 = load %union.listen_entry*, %union.listen_entry** %9, align 8
  %49 = bitcast %union.listen_entry* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store %struct.cxgb3_client* %47, %struct.cxgb3_client** %50, align 8
  %51 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %52 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %20, %3
  %56 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %57 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
