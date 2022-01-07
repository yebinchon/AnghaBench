; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.bnx2i_conn* }
%struct.bnx2i_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@EP_STATE_ULP_UPDATE_START = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@bnx2i_ep_ofld_timer = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*)* @bnx2i_conn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_conn_start(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.bnx2i_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %5 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %5, i32 0, i32 0
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %3, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 0
  %10 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %9, align 8
  store %struct.bnx2i_conn* %10, %struct.bnx2i_conn** %4, align 8
  %11 = load i64, i64* @EP_STATE_ULP_UPDATE_START, align 8
  %12 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %11, i64* %15, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = call i32 @bnx2i_update_iscsi_conn(%struct.iscsi_conn* %16)
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @jiffies, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i64 %22, i64* %27, align 8
  %28 = load i32, i32* @bnx2i_ep_ofld_timer, align 4
  %29 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %28, i32* %33, align 8
  %34 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = ptrtoint %struct.TYPE_4__* %36 to i64
  %38 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 %37, i64* %42, align 8
  %43 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = call i32 @add_timer(%struct.TYPE_5__* %46)
  %48 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EP_STATE_ULP_UPDATE_START, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @wait_event_interruptible(i32 %52, i32 %60)
  %62 = load i32, i32* @current, align 4
  %63 = call i64 @signal_pending(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %1
  %66 = load i32, i32* @current, align 4
  %67 = call i32 @flush_signals(i32 %66)
  br label %68

68:                                               ; preds = %65, %1
  %69 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = call i32 @del_timer_sync(%struct.TYPE_5__* %72)
  %74 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %75 = call i32 @iscsi_conn_start(%struct.iscsi_cls_conn* %74)
  ret i32 0
}

declare dso_local i32 @bnx2i_update_iscsi_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @iscsi_conn_start(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
