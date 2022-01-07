; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.bnx2i_endpoint* }
%struct.bnx2i_endpoint = type { i64, i64, %struct.bnx2i_hba*, %struct.bnx2i_conn*, i64 }
%struct.bnx2i_hba = type { i64, i32, i32, i32 }
%struct.bnx2i_conn = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

@EP_STATE_CONNECT_START = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EP_STATE_DISCONN_TIMEDOUT = common dso_local global i64 0, align 8
@EP_STATE_IDLE = common dso_local global i64 0, align 8
@ADAPTER_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_endpoint*)* @bnx2i_ep_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.bnx2i_endpoint*, align 8
  %4 = alloca %struct.bnx2i_conn*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.bnx2i_hba*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  store %struct.bnx2i_conn* null, %struct.bnx2i_conn** %4, align 8
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %5, align 8
  %7 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %7, i32 0, i32 0
  %9 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  store %struct.bnx2i_endpoint* %9, %struct.bnx2i_endpoint** %3, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EP_STATE_CONNECT_START, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load i32, i32* @jiffies, align 4
  %18 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 12, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @time_after(i32 %17, i64 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %16, %10
  %29 = phi i1 [ false, %10 ], [ %27, %16 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = call i32 @msleep(i32 250)
  br label %10

32:                                               ; preds = %28
  %33 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %33, i32 0, i32 3
  %35 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %34, align 8
  %36 = icmp ne %struct.bnx2i_conn* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %38, i32 0, i32 3
  %40 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %39, align 8
  store %struct.bnx2i_conn* %40, %struct.bnx2i_conn** %4, align 8
  %41 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %42 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %44, align 8
  store %struct.iscsi_conn* %45, %struct.iscsi_conn** %5, align 8
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %47 = call i32 @iscsi_suspend_queue(%struct.iscsi_conn* %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %49, i32 0, i32 2
  %51 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %50, align 8
  store %struct.bnx2i_hba* %51, %struct.bnx2i_hba** %6, align 8
  %52 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %53 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %56 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EP_STATE_DISCONN_TIMEDOUT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %107

61:                                               ; preds = %48
  %62 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %63 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EP_STATE_IDLE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %95

68:                                               ; preds = %61
  %69 = load i32, i32* @ADAPTER_STATE_UP, align 4
  %70 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %71 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %70, i32 0, i32 3
  %72 = call i32 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %76 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74, %68
  %83 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %84 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %85 = call i32 @bnx2i_ep_active_list_del(%struct.bnx2i_hba* %83, %struct.bnx2i_endpoint* %84)
  br label %95

86:                                               ; preds = %74
  %87 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %88 = call i64 @bnx2i_hw_ep_disconnect(%struct.bnx2i_endpoint* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %92 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %91, i32 0, i32 2
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %114

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %82, %67
  %96 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %97 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %98 = call i32 @bnx2i_free_qp_resc(%struct.bnx2i_hba* %96, %struct.bnx2i_endpoint* %97)
  %99 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %100 = icmp ne %struct.bnx2i_conn* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %103 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %106 = call i32 @bnx2i_free_ep(%struct.iscsi_endpoint* %105)
  br label %107

107:                                              ; preds = %104, %60
  %108 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %109 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %108, i32 0, i32 2
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %6, align 8
  %112 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %111, i32 0, i32 1
  %113 = call i32 @wake_up_interruptible(i32* %112)
  br label %114

114:                                              ; preds = %107, %90
  ret void
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iscsi_suspend_queue(%struct.iscsi_conn*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2i_ep_active_list_del(%struct.bnx2i_hba*, %struct.bnx2i_endpoint*) #1

declare dso_local i64 @bnx2i_hw_ep_disconnect(%struct.bnx2i_endpoint*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bnx2i_free_qp_resc(%struct.bnx2i_hba*, %struct.bnx2i_endpoint*) #1

declare dso_local i32 @bnx2i_free_ep(%struct.iscsi_endpoint*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
