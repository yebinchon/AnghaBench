; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.lpfc_nodelist = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.ls_rjt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i64 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rpl(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.ls_rjt, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %13, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %30 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %13, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %34 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %13, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %13, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %41 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %13, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %46 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %40, i32 %43, %struct.lpfc_iocbq* %44, %struct.lpfc_nodelist* %45, i32* null)
  store i32 0, i32* %4, align 4
  br label %88

47:                                               ; preds = %19, %3
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %51, %struct.lpfc_dmabuf** %8, align 8
  %52 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %53 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = bitcast i32* %57 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %12, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @be32_to_cpu(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %47
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = icmp uge i64 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %67
  store i32 8, i32* %11, align 4
  br label %82

76:                                               ; preds = %70, %47
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 4, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %76, %75
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %87 = call i32 @lpfc_els_rsp_rpl_acc(%struct.lpfc_vport* %83, i32 %84, %struct.lpfc_iocbq* %85, %struct.lpfc_nodelist* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %25
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_els_rsp_rpl_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
