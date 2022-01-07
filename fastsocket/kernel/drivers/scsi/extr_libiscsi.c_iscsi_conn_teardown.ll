; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_teardown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i64, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, %struct.iscsi_conn*, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ISCSI_CONN_CLEANUP_WAIT = common dso_local global i32 0, align 4
@ISCSI_STATE_TERMINATE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"iscsi conn_destroy(): host_busy %d host_failed %d\0A\00", align 1
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_conn_teardown(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i64, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %6 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 6
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  store %struct.iscsi_session* %11, %struct.iscsi_session** %4, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 5
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load i32, i32* @ISCSI_CONN_CLEANUP_WAIT, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 1
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %22, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %25 = icmp eq %struct.iscsi_conn* %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @ISCSI_STATE_TERMINATE, align 4
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 3
  %32 = call i32 @wake_up(i32* %31)
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  br label %37

37:                                               ; preds = %59, %33
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32 %42, i64 %43)
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %37
  %52 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32 %56, i64 %57)
  br label %84

59:                                               ; preds = %37
  %60 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32 %64, i64 %65)
  %67 = call i32 @msleep_interruptible(i32 500)
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %71 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @iscsi_conn_printk(i32 %68, %struct.iscsi_conn* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %79)
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %82 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %81, i32 0, i32 3
  %83 = call i32 @wake_up(i32* %82)
  br label %37

84:                                               ; preds = %51
  %85 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %86 = call i32 @iscsi_suspend_tx(%struct.iscsi_conn* %85)
  %87 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %88 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %87, i32 0, i32 0
  %89 = call i32 @spin_lock_bh(i32* %88)
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %91 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %94 = call i32 @get_order(i32 %93)
  %95 = call i32 @free_pages(i64 %92, i32 %94)
  %96 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %97 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @kfree(i32 %98)
  %100 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %101 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %105 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %104, i32 0, i32 0
  %106 = bitcast i32* %105 to i8*
  %107 = call i32 @__kfifo_put(i32 %103, i8* %106, i32 8)
  %108 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %109 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %108, i32 0, i32 1
  %110 = load %struct.iscsi_conn*, %struct.iscsi_conn** %109, align 8
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %112 = icmp eq %struct.iscsi_conn* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %84
  %114 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %115 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %114, i32 0, i32 1
  store %struct.iscsi_conn* null, %struct.iscsi_conn** %115, align 8
  br label %116

116:                                              ; preds = %113, %84
  %117 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %118 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %121 = call i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn* %120)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32, i32) #1

declare dso_local i32 @iscsi_suspend_tx(%struct.iscsi_conn*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
