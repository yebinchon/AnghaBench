; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_send_nopout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_send_nopout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_task* }
%struct.iscsi_task = type { i32 }
%struct.iscsi_nopin = type { i8*, i32 }
%struct.iscsi_nopout = type { i32, i8*, i8*, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_OP_NOOP_OUT = common dso_local global i32 0, align 4
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@RESERVED_ITT = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not send nopout\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*, %struct.iscsi_nopin*)* @iscsi_send_nopout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_send_nopout(%struct.iscsi_conn* %0, %struct.iscsi_nopin* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_nopin*, align 8
  %5 = alloca %struct.iscsi_nopout, align 8
  %6 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_nopin* %1, %struct.iscsi_nopin** %4, align 8
  %7 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %8 = icmp ne %struct.iscsi_nopin* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 1
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %13 = icmp ne %struct.iscsi_task* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %60

15:                                               ; preds = %9, %2
  %16 = call i32 @memset(%struct.iscsi_nopout* %5, i32 0, i32 32)
  %17 = load i32, i32* @ISCSI_OP_NOOP_OUT, align 4
  %18 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %22 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %5, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %24 = icmp ne %struct.iscsi_nopin* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %5, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_nopin, %struct.iscsi_nopin* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %5, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @RESERVED_ITT, align 8
  %35 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %5, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  br label %39

36:                                               ; preds = %15
  %37 = load i8*, i8** @RESERVED_ITT, align 8
  %38 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %5, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %41 = bitcast %struct.iscsi_nopout* %5 to %struct.iscsi_hdr*
  %42 = call %struct.iscsi_task* @__iscsi_conn_send_pdu(%struct.iscsi_conn* %40, %struct.iscsi_hdr* %41, i32* null, i32 0)
  store %struct.iscsi_task* %42, %struct.iscsi_task** %6, align 8
  %43 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %44 = icmp ne %struct.iscsi_task* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %48 = call i32 @iscsi_conn_printk(i32 %46, %struct.iscsi_conn* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %60

49:                                               ; preds = %39
  %50 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %4, align 8
  %51 = icmp ne %struct.iscsi_nopin* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 1
  store %struct.iscsi_task* %53, %struct.iscsi_task** %55, align 8
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %14, %59, %45
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_nopout*, i32, i32) #1

declare dso_local %struct.iscsi_task* @__iscsi_conn_send_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
