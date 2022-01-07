; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.lpfc_iocbq** }
%struct.lpfc_iocbq = type { i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.lpfc_sli_ring = type { i32 }

@ABORT_TYPE_ABTS = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@CMD_ABORT_XRI_CN = common dso_local global i32 0, align 4
@CMD_CLOSE_XRI_CN = common dso_local global i32 0, align 4
@lpfc_sli_abort_fcp_cmpl = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_abort_iocb(%struct.lpfc_vport* %0, %struct.lpfc_sli_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %struct.lpfc_iocbq*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %21

21:                                               ; preds = %159, %5
  %22 = load i32, i32* %17, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %22, %26
  br i1 %27, label %28, label %162

28:                                               ; preds = %21
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %32, i64 %34
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %35, align 8
  store %struct.lpfc_iocbq* %36, %struct.lpfc_iocbq** %12, align 8
  %37 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @lpfc_sli_validate_fcp_iocb(%struct.lpfc_iocbq* %37, %struct.lpfc_vport* %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %159

45:                                               ; preds = %28
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %47 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %46)
  store %struct.lpfc_iocbq* %47, %struct.lpfc_iocbq** %13, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %49 = icmp eq %struct.lpfc_iocbq* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %159

53:                                               ; preds = %45
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %55 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %54, i32 0, i32 2
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %14, align 8
  %56 = load i32, i32* @ABORT_TYPE_ABTS, align 4
  %57 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %58 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32 %56, i32* %61, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %66 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LPFC_SLI_REV4, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %53
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %77 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %80 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  br label %93

84:                                               ; preds = %53
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %89 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %84, %75
  %94 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %95 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %101 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %107 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %109 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @LPFC_IO_FCP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %93
  %120 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %121 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %122 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %93
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %127 = call i64 @lpfc_is_link_up(%struct.lpfc_hba* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* @CMD_ABORT_XRI_CN, align 4
  %131 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %132 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 4
  br label %139

134:                                              ; preds = %125
  %135 = load i32, i32* @CMD_CLOSE_XRI_CN, align 4
  %136 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %137 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i32, i32* @lpfc_sli_abort_fcp_cmpl, align 4
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %142 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %144 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %148 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %143, i32 %146, %struct.lpfc_iocbq* %147, i32 0)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @IOCB_ERROR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %139
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %154 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %155 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %153, %struct.lpfc_iocbq* %154)
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %159

158:                                              ; preds = %139
  br label %159

159:                                              ; preds = %158, %152, %50, %44
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %21

162:                                              ; preds = %21
  %163 = load i32, i32* %15, align 4
  ret i32 %163
}

declare dso_local i64 @lpfc_sli_validate_fcp_iocb(%struct.lpfc_iocbq*, %struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
