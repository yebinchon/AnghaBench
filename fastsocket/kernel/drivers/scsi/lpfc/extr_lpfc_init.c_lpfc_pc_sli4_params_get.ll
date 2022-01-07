; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pc_sli4_params_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pc_sli4_params_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.lpfc_pc_sli4_params, i32 }
%struct.lpfc_pc_sli4_params = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.lpfc_mqe }
%struct.lpfc_mqe = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@MBX_POLL = common dso_local global i32 0, align 4
@if_type = common dso_local global i32 0, align 4
@sli_rev = common dso_local global i32 0, align 4
@sli_family = common dso_local global i32 0, align 4
@featurelevel_1 = common dso_local global i32 0, align 4
@featurelevel_2 = common dso_local global i32 0, align 4
@if_page_sz = common dso_local global i32 0, align 4
@rq_db_window = common dso_local global i32 0, align 4
@loopbk_scope = common dso_local global i32 0, align 4
@eq_pages = common dso_local global i32 0, align 4
@eqe_size = common dso_local global i32 0, align 4
@cq_pages = common dso_local global i32 0, align 4
@cqe_size = common dso_local global i32 0, align 4
@mq_pages = common dso_local global i32 0, align 4
@mqe_size = common dso_local global i32 0, align 4
@mq_elem_cnt = common dso_local global i32 0, align 4
@wq_pages = common dso_local global i32 0, align 4
@wqe_size = common dso_local global i32 0, align 4
@rq_pages = common dso_local global i32 0, align 4
@rqe_size = common dso_local global i32 0, align 4
@hdr_pages = common dso_local global i32 0, align 4
@hdr_size = common dso_local global i32 0, align 4
@hdr_pp_align = common dso_local global i32 0, align 4
@sgl_pages = common dso_local global i32 0, align 4
@sgl_pp_align = common dso_local global i32 0, align 4
@LPFC_MAX_SGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_pc_sli4_params_get(%struct.lpfc_hba* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_mqe*, align 8
  %8 = alloca %struct.lpfc_pc_sli4_params*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store %struct.lpfc_mqe* %12, %struct.lpfc_mqe** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = call i32 @lpfc_pc_sli4_params(%struct.TYPE_15__* %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i32, i32* @MBX_POLL, align 4
  %24 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %21, %struct.TYPE_15__* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %26, %struct.TYPE_15__* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %29, %struct.TYPE_15__* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %235

38:                                               ; preds = %33
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store %struct.lpfc_pc_sli4_params* %41, %struct.lpfc_pc_sli4_params** %8, align 8
  %42 = load i32, i32* @if_type, align 4
  %43 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %44 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = call i8* @bf_get(i32 %42, %struct.TYPE_11__* %45)
  %47 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %48 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %47, i32 0, i32 25
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @sli_rev, align 4
  %50 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = call i8* @bf_get(i32 %49, %struct.TYPE_11__* %52)
  %54 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %54, i32 0, i32 24
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @sli_family, align 4
  %57 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %58 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = call i8* @bf_get(i32 %56, %struct.TYPE_11__* %59)
  %61 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %62 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %61, i32 0, i32 23
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @featurelevel_1, align 4
  %64 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %65 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = call i8* @bf_get(i32 %63, %struct.TYPE_11__* %66)
  %68 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %69 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %68, i32 0, i32 22
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @featurelevel_2, align 4
  %71 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = call i8* @bf_get(i32 %70, %struct.TYPE_11__* %73)
  %75 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %76 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %75, i32 0, i32 21
  store i8* %74, i8** %76, align 8
  %77 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %83 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %82, i32 0, i32 20
  store i32 %81, i32* %83, align 8
  %84 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %85 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %90 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @if_page_sz, align 4
  %92 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %93 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = call i8* @bf_get(i32 %91, %struct.TYPE_11__* %94)
  %96 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %97 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %96, i32 0, i32 19
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @rq_db_window, align 4
  %99 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %100 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = call i8* @bf_get(i32 %98, %struct.TYPE_11__* %101)
  %103 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %104 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %103, i32 0, i32 18
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @loopbk_scope, align 4
  %106 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = call i8* @bf_get(i32 %105, %struct.TYPE_11__* %108)
  %110 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %111 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %110, i32 0, i32 17
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* @eq_pages, align 4
  %113 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %114 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = call i8* @bf_get(i32 %112, %struct.TYPE_11__* %115)
  %117 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %118 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %117, i32 0, i32 16
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @eqe_size, align 4
  %120 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %121 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = call i8* @bf_get(i32 %119, %struct.TYPE_11__* %122)
  %124 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %125 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %124, i32 0, i32 15
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @cq_pages, align 4
  %127 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %128 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = call i8* @bf_get(i32 %126, %struct.TYPE_11__* %129)
  %131 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %132 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %131, i32 0, i32 14
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* @cqe_size, align 4
  %134 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %135 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = call i8* @bf_get(i32 %133, %struct.TYPE_11__* %136)
  %138 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %139 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %138, i32 0, i32 13
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @mq_pages, align 4
  %141 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %142 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = call i8* @bf_get(i32 %140, %struct.TYPE_11__* %143)
  %145 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %146 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* @mqe_size, align 4
  %148 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %149 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = call i8* @bf_get(i32 %147, %struct.TYPE_11__* %150)
  %152 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %153 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %152, i32 0, i32 11
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* @mq_elem_cnt, align 4
  %155 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %156 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = call i8* @bf_get(i32 %154, %struct.TYPE_11__* %157)
  %159 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %160 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %159, i32 0, i32 10
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* @wq_pages, align 4
  %162 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %163 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = call i8* @bf_get(i32 %161, %struct.TYPE_11__* %164)
  %166 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %167 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %166, i32 0, i32 9
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @wqe_size, align 4
  %169 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %170 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = call i8* @bf_get(i32 %168, %struct.TYPE_11__* %171)
  %173 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %174 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %173, i32 0, i32 8
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* @rq_pages, align 4
  %176 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %177 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = call i8* @bf_get(i32 %175, %struct.TYPE_11__* %178)
  %180 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %181 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %180, i32 0, i32 7
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @rqe_size, align 4
  %183 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %184 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = call i8* @bf_get(i32 %182, %struct.TYPE_11__* %185)
  %187 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %188 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %187, i32 0, i32 6
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* @hdr_pages, align 4
  %190 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %191 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = call i8* @bf_get(i32 %189, %struct.TYPE_11__* %192)
  %194 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %195 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* @hdr_size, align 4
  %197 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %198 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = call i8* @bf_get(i32 %196, %struct.TYPE_11__* %199)
  %201 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %202 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %201, i32 0, i32 4
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* @hdr_pp_align, align 4
  %204 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %205 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = call i8* @bf_get(i32 %203, %struct.TYPE_11__* %206)
  %208 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %209 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %208, i32 0, i32 3
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* @sgl_pages, align 4
  %211 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %212 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = call i8* @bf_get(i32 %210, %struct.TYPE_11__* %213)
  %215 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %216 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* @sgl_pp_align, align 4
  %218 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %7, align 8
  %219 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = call i8* @bf_get(i32 %217, %struct.TYPE_11__* %220)
  %222 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %223 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  %224 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %225 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @LPFC_MAX_SGE_SIZE, align 8
  %228 = icmp sgt i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %38
  %230 = load i64, i64* @LPFC_MAX_SGE_SIZE, align 8
  %231 = load %struct.lpfc_pc_sli4_params*, %struct.lpfc_pc_sli4_params** %8, align 8
  %232 = getelementptr inbounds %struct.lpfc_pc_sli4_params, %struct.lpfc_pc_sli4_params* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %229, %38
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %233, %37
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @lpfc_pc_sli4_params(%struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, %struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @bf_get(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
