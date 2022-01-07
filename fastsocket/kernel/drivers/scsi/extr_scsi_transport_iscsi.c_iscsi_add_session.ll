; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_add_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_add_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32, %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32 }

@iscsi_session_nr = common dso_local global i32 0, align 4
@ISCSI_MAX_TARGET = common dso_local global i32 0, align 4
@iscsi_get_next_target_id = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Too many iscsi targets. Max number of targets is %d.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"session%u\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not register session's dev\0A\00", align 1
@sesslock = common dso_local global i32 0, align 4
@sesslist = common dso_local global i32 0, align 4
@ISCSI_KEVENT_CREATE_SESSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Completed session adding\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_add_session(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.iscsi_cls_host*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %12 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 1
  %16 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %15, align 8
  store %struct.iscsi_cls_host* %16, %struct.iscsi_cls_host** %7, align 8
  %17 = call i32 @atomic_add_return(i32 1, i32* @iscsi_session_nr)
  %18 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* @iscsi_get_next_target_id, align 4
  %32 = call i32 @device_for_each_child(i32* %30, i32* %9, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %40

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %47 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %48 = sub i32 %47, 1
  %49 = call i32 (i32, %struct.iscsi_cls_session*, i8*, ...) @iscsi_cls_session_printk(i32 %45, %struct.iscsi_cls_session* %46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EOVERFLOW, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %88

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %57, i32 0, i32 2
  %59 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_set_name(i32* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %63, i32 0, i32 2
  %65 = call i32 @device_add(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %71 = call i32 (i32, %struct.iscsi_cls_session*, i8*, ...) @iscsi_cls_session_printk(i32 %69, %struct.iscsi_cls_session* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %88

72:                                               ; preds = %53
  %73 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %74 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %73, i32 0, i32 2
  %75 = call i32 @transport_register_device(i32* %74)
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* @sesslock, i64 %76)
  %78 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %78, i32 0, i32 1
  %80 = call i32 @list_add(i32* %79, i32* @sesslist)
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* @sesslock, i64 %81)
  %83 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %84 = load i32, i32* @ISCSI_KEVENT_CREATE_SESSION, align 4
  %85 = call i32 @iscsi_session_event(%struct.iscsi_cls_session* %83, i32 %84)
  %86 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %87 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

88:                                               ; preds = %68, %44
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %90 = call i32 @scsi_host_put(%struct.Scsi_Host* %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %72
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @iscsi_cls_session_printk(i32, %struct.iscsi_cls_session*, i8*, ...) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @transport_register_device(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iscsi_session_event(%struct.iscsi_cls_session*, i32) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
