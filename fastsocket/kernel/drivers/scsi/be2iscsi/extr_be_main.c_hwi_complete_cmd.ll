; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.beiscsi_hba = type { %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { %struct.wrb_handle** }
%struct.wrb_handle = type { %struct.iscsi_wrb*, %struct.iscsi_task* }
%struct.iscsi_wrb = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sol_cqe = type { i32 }
%struct.common_sol_cqe = type { i64, i32, i32 }
%struct.beiscsi_io_task = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_NOOP_OUT = common dso_local global i32 0, align 4
@ISCSI_OP_LOGOUT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"BM_%d :\09\09 No HWH_TYPE_LOGIN Expected in hwi_complete_cmd- Solicited path\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"BM_%d : In hwi_complete_cmd, unknown type = %dwrb_index 0x%x CID 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_conn*, %struct.beiscsi_hba*, %struct.sol_cqe*)* @hwi_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_complete_cmd(%struct.beiscsi_conn* %0, %struct.beiscsi_hba* %1, %struct.sol_cqe* %2) #0 {
  %4 = alloca %struct.beiscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.sol_cqe*, align 8
  %7 = alloca %struct.hwi_wrb_context*, align 8
  %8 = alloca %struct.wrb_handle*, align 8
  %9 = alloca %struct.iscsi_wrb*, align 8
  %10 = alloca %struct.hwi_controller*, align 8
  %11 = alloca %struct.iscsi_task*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_conn*, align 8
  %14 = alloca %struct.iscsi_session*, align 8
  %15 = alloca %struct.common_sol_cqe, align 8
  %16 = alloca i64, align 8
  store %struct.beiscsi_conn* %0, %struct.beiscsi_conn** %4, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %5, align 8
  store %struct.sol_cqe* %2, %struct.sol_cqe** %6, align 8
  store %struct.iscsi_wrb* null, %struct.iscsi_wrb** %9, align 8
  %17 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %18, align 8
  store %struct.iscsi_conn* %19, %struct.iscsi_conn** %13, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %21, align 8
  store %struct.iscsi_session* %22, %struct.iscsi_session** %14, align 8
  %23 = bitcast %struct.common_sol_cqe* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  store i64 0, i64* %16, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = load %struct.hwi_controller*, %struct.hwi_controller** %25, align 8
  store %struct.hwi_controller* %26, %struct.hwi_controller** %10, align 8
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %28 = load %struct.sol_cqe*, %struct.sol_cqe** %6, align 8
  %29 = call i32 @adapter_get_sol_cqe(%struct.beiscsi_hba* %27, %struct.sol_cqe* %28, %struct.common_sol_cqe* %15)
  %30 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %15, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @BE_GET_CRI_FROM_CID(i32 %31)
  store i64 %32, i64* %16, align 8
  %33 = load %struct.hwi_controller*, %struct.hwi_controller** %10, align 8
  %34 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %33, i32 0, i32 0
  %35 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %34, align 8
  %36 = load i64, i64* %16, align 8
  %37 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %35, i64 %36
  store %struct.hwi_wrb_context* %37, %struct.hwi_wrb_context** %7, align 8
  %38 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %7, align 8
  %39 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %38, i32 0, i32 0
  %40 = load %struct.wrb_handle**, %struct.wrb_handle*** %39, align 8
  %41 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %15, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.wrb_handle*, %struct.wrb_handle** %40, i64 %42
  %44 = load %struct.wrb_handle*, %struct.wrb_handle** %43, align 8
  store %struct.wrb_handle* %44, %struct.wrb_handle** %8, align 8
  %45 = load %struct.wrb_handle*, %struct.wrb_handle** %8, align 8
  %46 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %45, i32 0, i32 1
  %47 = load %struct.iscsi_task*, %struct.iscsi_task** %46, align 8
  store %struct.iscsi_task* %47, %struct.iscsi_task** %11, align 8
  %48 = load %struct.wrb_handle*, %struct.wrb_handle** %8, align 8
  %49 = getelementptr inbounds %struct.wrb_handle, %struct.wrb_handle* %48, i32 0, i32 0
  %50 = load %struct.iscsi_wrb*, %struct.iscsi_wrb** %49, align 8
  store %struct.iscsi_wrb* %50, %struct.iscsi_wrb** %9, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %52 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.beiscsi_io_task*
  %55 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  %58 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load i32, i32* %12, align 4
  switch i32 %60, label %110 [
    i32 132, label %61
    i32 131, label %61
    i32 129, label %80
    i32 130, label %99
    i32 128, label %106
  ]

61:                                               ; preds = %3, %3
  %62 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %63 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ISCSI_OP_NOOP_OUT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %73 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %74 = call i32 @be_complete_nopin_resp(%struct.beiscsi_conn* %72, %struct.iscsi_task* %73, %struct.common_sol_cqe* %15)
  br label %79

75:                                               ; preds = %61
  %76 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %77 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %78 = call i32 @be_complete_io(%struct.beiscsi_conn* %76, %struct.iscsi_task* %77, %struct.common_sol_cqe* %15)
  br label %79

79:                                               ; preds = %75, %71
  br label %122

80:                                               ; preds = %3
  %81 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %82 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @ISCSI_OP_LOGOUT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %92 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %93 = call i32 @be_complete_logout(%struct.beiscsi_conn* %91, %struct.iscsi_task* %92, %struct.common_sol_cqe* %15)
  br label %98

94:                                               ; preds = %80
  %95 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %96 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %97 = call i32 @be_complete_tmf(%struct.beiscsi_conn* %95, %struct.iscsi_task* %96, %struct.common_sol_cqe* %15)
  br label %98

98:                                               ; preds = %94, %90
  br label %122

99:                                               ; preds = %3
  %100 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %103 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %104 = or i32 %102, %103
  %105 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %100, i32 %101, i32 %104, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %122

106:                                              ; preds = %3
  %107 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %108 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %109 = call i32 @be_complete_nopin_resp(%struct.beiscsi_conn* %107, %struct.iscsi_task* %108, %struct.common_sol_cqe* %15)
  br label %122

110:                                              ; preds = %3
  %111 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %112 = load i32, i32* @KERN_WARNING, align 4
  %113 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %114 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %15, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.common_sol_cqe, %struct.common_sol_cqe* %15, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %111, i32 %112, i32 %115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %116, i64 %118, i32 %120)
  br label %122

122:                                              ; preds = %110, %106, %99, %98, %79
  %123 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  %124 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock_bh(i32* %124)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @adapter_get_sol_cqe(%struct.beiscsi_hba*, %struct.sol_cqe*, %struct.common_sol_cqe*) #2

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @be_complete_nopin_resp(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @be_complete_io(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @be_complete_logout(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @be_complete_tmf(%struct.beiscsi_conn*, %struct.iscsi_task*, %struct.common_sol_cqe*) #2

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
