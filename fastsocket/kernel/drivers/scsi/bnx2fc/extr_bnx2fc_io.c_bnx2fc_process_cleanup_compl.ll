; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_process_cleanup_compl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_process_cleanup_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fcoe_task_ctx_entry = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Entered process_cleanup_compl refcnt = %d, cmd_type = %d\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@bnx2fc_cmd_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2fc_process_cleanup_compl(%struct.bnx2fc_cmd* %0, %struct.fcoe_task_ctx_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2fc_cmd*, align 8
  %5 = alloca %struct.fcoe_task_ctx_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %4, align 8
  store %struct.fcoe_task_ctx_entry* %1, %struct.fcoe_task_ctx_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %8 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BNX2FC_IO_DBG(%struct.bnx2fc_cmd* %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %18 = load i32, i32* @DID_ERROR, align 4
  %19 = call i32 @bnx2fc_scsi_done(%struct.bnx2fc_cmd* %17, i32 %18)
  %20 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %20, i32 0, i32 2
  %22 = load i32, i32* @bnx2fc_cmd_release, align 4
  %23 = call i32 @kref_put(%struct.TYPE_4__* %21, i32 %22)
  %24 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %29, i32 0, i32 0
  %31 = call i32 @complete(i32* %30)
  br label %32

32:                                               ; preds = %28, %3
  ret void
}

declare dso_local i32 @BNX2FC_IO_DBG(%struct.bnx2fc_cmd*, i8*, i32, i32) #1

declare dso_local i32 @bnx2fc_scsi_done(%struct.bnx2fc_cmd*, i32) #1

declare dso_local i32 @kref_put(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
