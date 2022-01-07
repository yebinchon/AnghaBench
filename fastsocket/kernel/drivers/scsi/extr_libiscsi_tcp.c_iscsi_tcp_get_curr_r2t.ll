; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_get_curr_r2t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_get_curr_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_r2t_info = type { i64, i64 }
%struct.iscsi_task = type { %struct.TYPE_4__*, %struct.iscsi_r2t_info, %struct.iscsi_tcp_task* }
%struct.TYPE_4__ = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_tcp_task = type { %struct.iscsi_r2t_info*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"  done with r2t %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_r2t_info* (%struct.iscsi_task*)* @iscsi_tcp_get_curr_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_r2t_info* @iscsi_tcp_get_curr_r2t(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_tcp_task*, align 8
  %5 = alloca %struct.iscsi_r2t_info*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %6 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  store %struct.iscsi_session* %10, %struct.iscsi_session** %3, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 2
  %13 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %12, align 8
  store %struct.iscsi_tcp_task* %13, %struct.iscsi_tcp_task** %4, align 8
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %5, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %15 = call i64 @iscsi_task_has_unsol_data(%struct.iscsi_task* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %19 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %18, i32 0, i32 1
  store %struct.iscsi_r2t_info* %19, %struct.iscsi_r2t_info** %5, align 8
  br label %74

20:                                               ; preds = %1
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %24, i32 0, i32 0
  %26 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %25, align 8
  %27 = icmp ne %struct.iscsi_r2t_info* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %20
  %29 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %29, i32 0, i32 0
  %31 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %30, align 8
  store %struct.iscsi_r2t_info* %31, %struct.iscsi_r2t_info** %5, align 8
  %32 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %41 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %44 = call i32 @ISCSI_DBG_TCP(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.iscsi_r2t_info* %43)
  %45 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %49, i32 0, i32 0
  %51 = bitcast %struct.iscsi_r2t_info** %50 to i8*
  %52 = call i32 @__kfifo_put(i32 %48, i8* %51, i32 8)
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %5, align 8
  %53 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %54 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %53, i32 0, i32 0
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %54, align 8
  br label %55

55:                                               ; preds = %39, %28
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %58 = icmp eq %struct.iscsi_r2t_info* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %63, i32 0, i32 0
  %65 = bitcast %struct.iscsi_r2t_info** %64 to i8*
  %66 = call i32 @__kfifo_get(i32 %62, i8* %65, i32 8)
  %67 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %4, align 8
  %68 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %67, i32 0, i32 0
  %69 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %68, align 8
  store %struct.iscsi_r2t_info* %69, %struct.iscsi_r2t_info** %5, align 8
  br label %70

70:                                               ; preds = %59, %56
  %71 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %72 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  br label %74

74:                                               ; preds = %70, %17
  %75 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  ret %struct.iscsi_r2t_info* %75
}

declare dso_local i64 @iscsi_task_has_unsol_data(%struct.iscsi_task*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ISCSI_DBG_TCP(%struct.TYPE_4__*, i8*, %struct.iscsi_r2t_info*) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @__kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
