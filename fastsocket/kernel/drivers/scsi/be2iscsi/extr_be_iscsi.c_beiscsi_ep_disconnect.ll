; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32, i32, %struct.beiscsi_conn*, %struct.beiscsi_hba* }
%struct.beiscsi_conn = type { i32 }
%struct.beiscsi_hba = type { i32 }

@CMD_ISCSI_SESSION_SAVE_CFG_ON_FLASH = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BS_%d : In beiscsi_ep_disconnect for ep_cid = %d\0A\00", align 1
@BEISCSI_NO_RST_ISSUE = common dso_local global i32 0, align 4
@CONNECTION_UPLOAD_GRACEFUL = common dso_local global i32 0, align 4
@CONNECTION_UPLOAD_ABORT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"BS_%d : mgmt_invalidate_connection Failed for cid=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.beiscsi_conn*, align 8
  %4 = alloca %struct.beiscsi_endpoint*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  %10 = load i16, i16* @CMD_ISCSI_SESSION_SAVE_CFG_ON_FLASH, align 2
  store i16 %10, i16* %9, align 2
  %11 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %11, i32 0, i32 0
  %13 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %12, align 8
  store %struct.beiscsi_endpoint* %13, %struct.beiscsi_endpoint** %4, align 8
  %14 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %15 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %14, i32 0, i32 3
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %15, align 8
  store %struct.beiscsi_hba* %16, %struct.beiscsi_hba** %5, align 8
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %20 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %21 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @beiscsi_log(%struct.beiscsi_hba* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %25 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %24, i32 0, i32 2
  %26 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %25, align 8
  %27 = icmp ne %struct.beiscsi_conn* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %30 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %29, i32 0, i32 2
  %31 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %30, align 8
  store %struct.beiscsi_conn* %31, %struct.beiscsi_conn** %3, align 8
  %32 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %3, align 8
  %33 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iscsi_suspend_queue(i32 %34)
  %36 = load i32, i32* @BEISCSI_NO_RST_ISSUE, align 4
  %37 = xor i32 %36, -1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @CONNECTION_UPLOAD_GRACEFUL, align 4
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %1
  %40 = load i32, i32* @BEISCSI_NO_RST_ISSUE, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @CONNECTION_UPLOAD_ABORT, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %44 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %45 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %46 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i16, i16* %9, align 2
  %50 = call i32 @mgmt_invalidate_connection(%struct.beiscsi_hba* %43, %struct.beiscsi_endpoint* %44, i32 %47, i32 %48, i16 zeroext %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %42
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %57 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %58 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @beiscsi_log(%struct.beiscsi_hba* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %42
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %62, i32 %63, i32* null, i32* null)
  %65 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @beiscsi_close_conn(%struct.beiscsi_endpoint* %65, i32 %66)
  %68 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %69 = call i32 @beiscsi_free_ep(%struct.beiscsi_endpoint* %68)
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %71 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %72 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @beiscsi_unbind_conn_to_cid(%struct.beiscsi_hba* %70, i32 %73)
  %75 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %4, align 8
  %76 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @iscsi_destroy_endpoint(i32 %77)
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @iscsi_suspend_queue(i32) #1

declare dso_local i32 @mgmt_invalidate_connection(%struct.beiscsi_hba*, %struct.beiscsi_endpoint*, i32, i32, i16 zeroext) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, i32*, i32*) #1

declare dso_local i32 @beiscsi_close_conn(%struct.beiscsi_endpoint*, i32) #1

declare dso_local i32 @beiscsi_free_ep(%struct.beiscsi_endpoint*) #1

declare dso_local i32 @beiscsi_unbind_conn_to_cid(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @iscsi_destroy_endpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
