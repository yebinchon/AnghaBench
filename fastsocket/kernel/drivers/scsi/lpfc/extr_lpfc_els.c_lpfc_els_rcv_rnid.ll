; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rnid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rnid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rnid(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.ls_rjt, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %6, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 1
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %7, align 8
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %10, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %45 [
    i32 0, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %3, %3
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %44 = call i32 @lpfc_els_rsp_rnid_acc(%struct.lpfc_vport* %38, i32 %41, %struct.lpfc_iocbq* %42, %struct.lpfc_nodelist* %43)
  br label %67

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %50 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %54 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %61 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %66 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %60, i32 %63, %struct.lpfc_iocbq* %64, %struct.lpfc_nodelist* %65, i32* null)
  br label %67

67:                                               ; preds = %45, %37
  ret i32 0
}

declare dso_local i32 @lpfc_els_rsp_rnid_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
