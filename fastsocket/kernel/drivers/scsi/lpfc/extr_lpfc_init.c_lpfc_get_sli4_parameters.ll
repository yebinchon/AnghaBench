; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_get_sli4_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_get_sli4_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i8*, %struct.lpfc_pc_sli4_params, i32 }
%struct.lpfc_pc_sli4_params = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.lpfc_mqe }
%struct.lpfc_mqe = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.lpfc_sli4_parameters }
%struct.lpfc_sli4_parameters = type { i64 }

@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_GET_SLI4_PARAMETERS = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@cfg_if_type = common dso_local global i32 0, align 4
@cfg_sli_rev = common dso_local global i32 0, align 4
@cfg_sli_family = common dso_local global i32 0, align 4
@cfg_sli_hint_1 = common dso_local global i32 0, align 4
@cfg_sli_hint_2 = common dso_local global i32 0, align 4
@cfg_phwq = common dso_local global i32 0, align 4
@LPFC_SLI4_PHWQ_ENABLED = common dso_local global i32 0, align 4
@loopbk_scope = common dso_local global i32 0, align 4
@cfg_cqv = common dso_local global i32 0, align 4
@cfg_mqv = common dso_local global i32 0, align 4
@cfg_wqv = common dso_local global i32 0, align 4
@cfg_rqv = common dso_local global i32 0, align 4
@cfg_sgl_page_cnt = common dso_local global i32 0, align 4
@cfg_sgl_pp_align = common dso_local global i32 0, align 4
@cfg_ext = common dso_local global i32 0, align 4
@cfg_hdrr = common dso_local global i32 0, align 4
@LPFC_MAX_SGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_get_sli4_parameters(%struct.lpfc_hba* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_mqe*, align 8
  %8 = alloca %struct.lpfc_pc_sli4_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_sli4_parameters*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store %struct.lpfc_mqe* %14, %struct.lpfc_mqe** %7, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %21 = load i32, i32* @LPFC_MBOX_OPCODE_GET_SLI4_PARAMETERS, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %24 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %18, %struct.TYPE_15__* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = load i32, i32* @MBX_POLL, align 4
  %34 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %31, %struct.TYPE_15__* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %43

35:                                               ; preds = %2
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %36, %struct.TYPE_15__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %39, %struct.TYPE_15__* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %163

49:                                               ; preds = %43
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store %struct.lpfc_pc_sli4_params* %52, %struct.lpfc_pc_sli4_params** %8, align 8
  %53 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %54 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store %struct.lpfc_sli4_parameters* %56, %struct.lpfc_sli4_parameters** %11, align 8
  %57 = load i32, i32* @cfg_if_type, align 4
  %58 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %59 = call i8* @bf_get(i32 %57, %struct.lpfc_sli4_parameters* %58)
  %60 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %60, i32 0, i32 12
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @cfg_sli_rev, align 4
  %63 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %64 = call i8* @bf_get(i32 %62, %struct.lpfc_sli4_parameters* %63)
  %65 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %66 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @cfg_sli_family, align 4
  %68 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %69 = call i8* @bf_get(i32 %67, %struct.lpfc_sli4_parameters* %68)
  %70 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %71 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %70, i32 0, i32 10
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @cfg_sli_hint_1, align 4
  %73 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %74 = call i8* @bf_get(i32 %72, %struct.lpfc_sli4_parameters* %73)
  %75 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %76 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @cfg_sli_hint_2, align 4
  %78 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %79 = call i8* @bf_get(i32 %77, %struct.lpfc_sli4_parameters* %78)
  %80 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %81 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @cfg_phwq, align 4
  %83 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %84 = call i8* @bf_get(i32 %82, %struct.lpfc_sli4_parameters* %83)
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %49
  %87 = load i32, i32* @LPFC_SLI4_PHWQ_ENABLED, align 4
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %99

92:                                               ; preds = %49
  %93 = load i32, i32* @LPFC_SLI4_PHWQ_ENABLED, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %86
  %100 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %101 = getelementptr inbounds %struct.lpfc_sli4_parameters, %struct.lpfc_sli4_parameters* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %104 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @loopbk_scope, align 4
  %106 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %107 = call i8* @bf_get(i32 %105, %struct.lpfc_sli4_parameters* %106)
  %108 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %109 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @cfg_cqv, align 4
  %111 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %112 = call i8* @bf_get(i32 %110, %struct.lpfc_sli4_parameters* %111)
  %113 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %114 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @cfg_mqv, align 4
  %116 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %117 = call i8* @bf_get(i32 %115, %struct.lpfc_sli4_parameters* %116)
  %118 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %119 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @cfg_wqv, align 4
  %121 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %122 = call i8* @bf_get(i32 %120, %struct.lpfc_sli4_parameters* %121)
  %123 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %124 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @cfg_rqv, align 4
  %126 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %127 = call i8* @bf_get(i32 %125, %struct.lpfc_sli4_parameters* %126)
  %128 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %129 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* @cfg_sgl_page_cnt, align 4
  %131 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %132 = call i8* @bf_get(i32 %130, %struct.lpfc_sli4_parameters* %131)
  %133 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %134 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* @cfg_sgl_pp_align, align 4
  %136 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %137 = call i8* @bf_get(i32 %135, %struct.lpfc_sli4_parameters* %136)
  %138 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %139 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @cfg_ext, align 4
  %141 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %142 = call i8* @bf_get(i32 %140, %struct.lpfc_sli4_parameters* %141)
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  %146 = load i32, i32* @cfg_hdrr, align 4
  %147 = load %struct.lpfc_sli4_parameters*, %struct.lpfc_sli4_parameters** %11, align 8
  %148 = call i8* @bf_get(i32 %146, %struct.lpfc_sli4_parameters* %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %154 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @LPFC_MAX_SGE_SIZE, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %99
  %159 = load i64, i64* @LPFC_MAX_SGE_SIZE, align 8
  %160 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %161 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %158, %99
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %47
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, %struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @bf_get(i32, %struct.lpfc_sli4_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
