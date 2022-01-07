; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_log_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.ibmvfc_event = type { %struct.scsi_cmnd*, %struct.ibmvfc_host*, %struct.TYPE_5__* }
%struct.scsi_cmnd = type { i32* }
%struct.ibmvfc_host = type { i64 }
%struct.TYPE_5__ = type { %struct.ibmvfc_cmd }
%struct.ibmvfc_cmd = type { i32, i32, %struct.ibmvfc_fcp_rsp }
%struct.ibmvfc_fcp_rsp = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@unknown_error = common dso_local global i8* null, align 8
@cmd_status = common dso_local global %struct.TYPE_8__* null, align 8
@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i64 0, align 8
@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Command (%02X) failed: %s (%x:%x) flags: %x fcp_rsp: %x, resid=%d, scsi_status: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_log_error(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_cmd*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_fcp_rsp*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.ibmvfc_cmd* %14, %struct.ibmvfc_cmd** %3, align 8
  %15 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %15, i32 0, i32 1
  %17 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %16, align 8
  store %struct.ibmvfc_host* %17, %struct.ibmvfc_host** %4, align 8
  %18 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %18, i32 0, i32 2
  store %struct.ibmvfc_fcp_rsp* %19, %struct.ibmvfc_fcp_rsp** %5, align 8
  %20 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %20, i32 0, i32 0
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %21, align 8
  store %struct.scsi_cmnd* %22, %struct.scsi_cmnd** %6, align 8
  %23 = load i8*, i8** @unknown_error, align 8
  store i8* %23, i8** %7, align 8
  %24 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ibmvfc_get_err_index(i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmd_status, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmd_status, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %33, %1
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IBMVFC_DEFAULT_LOG_LEVEL, align 8
  %54 = add nsw i64 %53, 1
  %55 = icmp sle i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %95

57:                                               ; preds = %49, %46
  %58 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %59 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %66 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %80 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %86 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %90 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %89)
  %91 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %92 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @scmd_printk(i32 %71, %struct.scsi_cmnd* %72, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %78, i32 %81, i32 %84, i32 %87, i32 %88, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %70, %56
  ret void
}

declare dso_local i32 @ibmvfc_get_err_index(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
