; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_sparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_read_sparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, %struct.lpfc_vport*, %struct.TYPE_6__ }
%struct.lpfc_vport = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.lpfc_dmabuf = type { i32, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"0319 READ_SPARAM mbxStatus error x%x hba state x%x>\0A\00", align 1
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_8__*)* @lpfc_mbx_cmpl_read_sparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_read_sparam(%struct.lpfc_hba* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %14, %struct.lpfc_dmabuf** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load i32, i32* @LOG_MBOX, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = call i32 @lpfc_linkdown(%struct.lpfc_hba* %33)
  br label %77

35:                                               ; preds = %2
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 3
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @memcpy(i32* %37, i32* %41, i32 4)
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %44 = call i32 @lpfc_update_vport_wwn(%struct.lpfc_vport* %43)
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %46 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %35
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %54 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %53, i32 0, i32 2
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 4)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 1
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 1
  %60 = call i32 @memcpy(i32* %57, i32* %59, i32 4)
  br label %61

61:                                               ; preds = %50, %35
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %63 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %64 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %62, i64 %65, i32 %68)
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %71 = call i32 @kfree(%struct.lpfc_dmabuf* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mempool_free(%struct.TYPE_8__* %72, i32 %75)
  br label %98

77:                                               ; preds = %22
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %80, i64 %83, i32 %86)
  %88 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %89 = call i32 @kfree(%struct.lpfc_dmabuf* %88)
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %92 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %90, %struct.lpfc_vport* %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mempool_free(%struct.TYPE_8__* %93, i32 %96)
  br label %98

98:                                               ; preds = %77, %61
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @lpfc_linkdown(%struct.lpfc_hba*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_update_vport_wwn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
