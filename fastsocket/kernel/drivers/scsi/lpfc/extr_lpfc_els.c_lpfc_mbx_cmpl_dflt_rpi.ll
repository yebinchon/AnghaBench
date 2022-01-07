; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_mbx_cmpl_dflt_rpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_mbx_cmpl_dflt_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_dflt_rpi(%struct.lpfc_hba* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %10, %struct.lpfc_dmabuf** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %14, %struct.lpfc_nodelist** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %19, i32 %22, i32 %25)
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %28 = call i32 @kfree(%struct.lpfc_dmabuf* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mempool_free(%struct.TYPE_4__* %29, i32 %32)
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %35 = icmp ne %struct.lpfc_nodelist* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %38 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %42 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %41)
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %44 = call i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %43)
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %50 = call i32 @lpfc_drop_node(i32 %48, %struct.lpfc_nodelist* %49)
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %2
  ret void
}

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_drop_node(i32, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
