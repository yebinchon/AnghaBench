; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_alloc_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_alloc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32, i32, %struct.iscsi_cls_session*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.iscsi_transport* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_transport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_SESSION_FREE = common dso_local global i32 0, align 4
@session_recovery_timedout = common dso_local global i32 0, align 4
@__iscsi_unblock_session = common dso_local global i32 0, align 4
@__iscsi_block_session = common dso_local global i32 0, align 4
@__iscsi_unbind_session = common dso_local global i32 0, align 4
@iscsi_scan_session = common dso_local global i32 0, align 4
@iscsi_session_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Completed session allocation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_session* @iscsi_alloc_session(%struct.Scsi_Host* %0, %struct.iscsi_transport* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.iscsi_transport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_cls_session*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.iscsi_transport* %1, %struct.iscsi_transport** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 72, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.iscsi_cls_session* @kzalloc(i32 %12, i32 %13)
  store %struct.iscsi_cls_session* %14, %struct.iscsi_cls_session** %8, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %16 = icmp ne %struct.iscsi_cls_session* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %4, align 8
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.iscsi_transport*, %struct.iscsi_transport** %6, align 8
  %20 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %21 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %20, i32 0, i32 12
  store %struct.iscsi_transport* %19, %struct.iscsi_transport** %21, align 8
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %23 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %24, i32 0, i32 1
  store i32 120, i32* %25, align 4
  %26 = load i32, i32* @ISCSI_SESSION_FREE, align 4
  %27 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %28 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %27, i32 0, i32 11
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %29, i32 0, i32 10
  %31 = load i32, i32* @session_recovery_timedout, align 4
  %32 = call i32 @INIT_DELAYED_WORK(i32* %30, i32 %31)
  %33 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %34 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %33, i32 0, i32 9
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %37 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %36, i32 0, i32 8
  %38 = load i32, i32* @__iscsi_unblock_session, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %41 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %40, i32 0, i32 7
  %42 = load i32, i32* @__iscsi_block_session, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %45 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %44, i32 0, i32 6
  %46 = load i32, i32* @__iscsi_unbind_session, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %49 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %48, i32 0, i32 5
  %50 = load i32, i32* @iscsi_scan_session, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %53 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %52, i32 0, i32 4
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %56 = call i32 @scsi_host_get(%struct.Scsi_Host* %55)
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 0
  %59 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %60 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32* %58, i32** %61, align 8
  %62 = load i32, i32* @iscsi_session_release, align 4
  %63 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %64 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %66, i32 0, i32 3
  %68 = call i32 @device_initialize(%struct.TYPE_2__* %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %18
  %72 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %73 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %72, i64 1
  %74 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %75 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %74, i32 0, i32 2
  store %struct.iscsi_cls_session* %73, %struct.iscsi_cls_session** %75, align 8
  br label %76

76:                                               ; preds = %71, %18
  %77 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %78 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  store %struct.iscsi_cls_session* %79, %struct.iscsi_cls_session** %4, align 8
  br label %80

80:                                               ; preds = %76, %17
  %81 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  ret %struct.iscsi_cls_session* %81
}

declare dso_local %struct.iscsi_cls_session* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @scsi_host_get(%struct.Scsi_Host*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
