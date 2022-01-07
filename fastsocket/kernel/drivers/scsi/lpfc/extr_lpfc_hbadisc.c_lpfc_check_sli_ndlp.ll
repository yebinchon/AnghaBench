; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_check_sli_ndlp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_check_sli_ndlp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i64, i64 }
%struct.lpfc_sli_ring = type { i64 }
%struct.lpfc_iocbq = type { i32*, %struct.TYPE_5__, %struct.lpfc_vport*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { %struct.lpfc_nodelist* }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i64, i32, %struct.lpfc_vport* }

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_DELAY_TMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_check_sli_ndlp(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_sli*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  store %struct.lpfc_sli* %14, %struct.lpfc_sli** %10, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 3
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %18 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %17, i32 0, i32 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %18, align 8
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %12, align 8
  %20 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %20, i32 0, i32 2
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %21, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  %24 = icmp ne %struct.lpfc_vport* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %122

26:                                               ; preds = %4
  %27 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LPFC_ELS_RING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %66 [
    i32 129, label %36
    i32 130, label %45
    i32 128, label %57
  ]

36:                                               ; preds = %32
  %37 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %38 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %39, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %42 = icmp eq %struct.lpfc_nodelist* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %122

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %32, %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %122

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %32, %56
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %62 = bitcast %struct.lpfc_nodelist* %61 to i32*
  %63 = icmp eq i32* %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %122

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %32
  br label %121

67:                                               ; preds = %26
  %68 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %69 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.lpfc_sli*, %struct.lpfc_sli** %10, align 8
  %72 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %120

76:                                               ; preds = %67
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.lpfc_sli*, %struct.lpfc_sli** %10, align 8
  %81 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %76
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %86 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NLP_FCP_TARGET, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NLP_DELAY_TMO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %122

99:                                               ; preds = %91, %84
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load volatile i64, i64* %101, align 8
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %104 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 1, i32* %5, align 4
  br label %122

108:                                              ; preds = %99
  br label %119

109:                                              ; preds = %76
  %110 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %111 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.lpfc_sli*, %struct.lpfc_sli** %10, align 8
  %114 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %109
  br label %119

119:                                              ; preds = %118, %108
  br label %120

120:                                              ; preds = %119, %75
  br label %121

121:                                              ; preds = %120, %66
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %107, %98, %64, %55, %43, %25
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
