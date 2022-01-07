; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_init_vpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_init_vpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.lpfc_vport* }

@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"3303 Failed to obtain vport vpi\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"2607 Failed to allocate init_vpi mailbox\0A\00", align 1
@lpfc_init_vpi_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"2608 Failed to issue init_vpi mailbox\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_issue_init_vpi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call i32 @lpfc_alloc_vpi(%struct.TYPE_10__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load i32, i32* @LOG_MBOX, align 4
  %27 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %29 = load i32, i32* @FC_VPORT_FAILED, align 4
  %30 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %28, i32 %29)
  br label %86

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %11, %1
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_9__* @mempool_alloc(i32 %40, i32 %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @LOG_MBOX, align 4
  %49 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %86

50:                                               ; preds = %35
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @lpfc_init_vpi(%struct.TYPE_10__* %53, %struct.TYPE_9__* %54, i32 %57)
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store %struct.lpfc_vport* %59, %struct.lpfc_vport** %61, align 8
  %62 = load i32, i32* @lpfc_init_vpi_cmpl, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* @MBX_NOWAIT, align 4
  %70 = call i32 @lpfc_sli_issue_mbox(%struct.TYPE_10__* %67, %struct.TYPE_9__* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %50
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = load i32, i32* @LOG_MBOX, align 4
  %78 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mempool_free(%struct.TYPE_9__* %79, i32 %84)
  br label %86

86:                                               ; preds = %23, %45, %74, %50
  ret void
}

declare dso_local i32 @lpfc_alloc_vpi(%struct.TYPE_10__*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.TYPE_9__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_init_vpi(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
