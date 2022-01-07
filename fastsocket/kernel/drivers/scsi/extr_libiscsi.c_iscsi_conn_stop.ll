; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid stop flag %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_conn_stop(%struct.iscsi_cls_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %5, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %6, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %19 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @iscsi_start_session_recovery(%struct.iscsi_session* %15, %struct.iscsi_conn* %16, i32 %17)
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @iscsi_conn_printk(i32 %20, %struct.iscsi_conn* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @iscsi_start_session_recovery(%struct.iscsi_session*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
