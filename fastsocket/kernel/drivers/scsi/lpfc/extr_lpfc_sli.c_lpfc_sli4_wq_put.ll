; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_wq_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_wq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i64, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %union.lpfc_wqe* }
%union.lpfc_wqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.lpfc_register }
%struct.lpfc_register = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@wqe_wqec = common dso_local global i32 0, align 4
@LPFC_SLI4_PHWQ_ENABLED = common dso_local global i32 0, align 4
@wqe_wqid = common dso_local global i32 0, align 4
@LPFC_DB_LIST_FORMAT = common dso_local global i64 0, align 8
@lpfc_wq_db_list_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_wq_db_list_fm_index = common dso_local global i32 0, align 4
@lpfc_wq_db_list_fm_id = common dso_local global i32 0, align 4
@LPFC_DB_RING_FORMAT = common dso_local global i64 0, align 8
@lpfc_wq_db_ring_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_wq_db_ring_fm_id = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*, %union.lpfc_wqe*)* @lpfc_sli4_wq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_wq_put(%struct.lpfc_queue* %0, %union.lpfc_wqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %union.lpfc_wqe*, align 8
  %6 = alloca %union.lpfc_wqe*, align 8
  %7 = alloca %struct.lpfc_register, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %4, align 8
  store %union.lpfc_wqe* %1, %union.lpfc_wqe** %5, align 8
  %10 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %11 = icmp ne %struct.lpfc_queue* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %147

19:                                               ; preds = %2
  %20 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %20, i32 0, i32 11
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %union.lpfc_wqe*, %union.lpfc_wqe** %27, align 8
  store %union.lpfc_wqe* %28, %union.lpfc_wqe** %6, align 8
  %29 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = urem i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %19
  %45 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %147

51:                                               ; preds = %19
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = urem i64 %59, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @wqe_wqec, align 4
  %68 = load %union.lpfc_wqe*, %union.lpfc_wqe** %5, align 8
  %69 = bitcast %union.lpfc_wqe* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @bf_set(i32 %67, %struct.lpfc_register* %70, i32 1)
  br label %72

72:                                               ; preds = %66, %51
  %73 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %73, i32 0, i32 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LPFC_SLI4_PHWQ_ENABLED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load i32, i32* @wqe_wqid, align 4
  %83 = load %union.lpfc_wqe*, %union.lpfc_wqe** %5, align 8
  %84 = bitcast %union.lpfc_wqe* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bf_set(i32 %82, %struct.lpfc_register* %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %72
  %91 = load %union.lpfc_wqe*, %union.lpfc_wqe** %5, align 8
  %92 = load %union.lpfc_wqe*, %union.lpfc_wqe** %6, align 8
  %93 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @lpfc_sli_pcimem_bcopy(%union.lpfc_wqe* %91, %union.lpfc_wqe* %92, i32 %95)
  %97 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %104 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %107 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @LPFC_DB_LIST_FORMAT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %90
  %112 = load i32, i32* @lpfc_wq_db_list_fm_num_posted, align 4
  %113 = call i32 @bf_set(i32 %112, %struct.lpfc_register* %7, i32 1)
  %114 = load i32, i32* @lpfc_wq_db_list_fm_index, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @bf_set(i32 %114, %struct.lpfc_register* %7, i32 %115)
  %117 = load i32, i32* @lpfc_wq_db_list_fm_id, align 4
  %118 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bf_set(i32 %117, %struct.lpfc_register* %7, i32 %120)
  br label %140

122:                                              ; preds = %90
  %123 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %124 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LPFC_DB_RING_FORMAT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load i32, i32* @lpfc_wq_db_ring_fm_num_posted, align 4
  %130 = call i32 @bf_set(i32 %129, %struct.lpfc_register* %7, i32 1)
  %131 = load i32, i32* @lpfc_wq_db_ring_fm_id, align 4
  %132 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %133 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @bf_set(i32 %131, %struct.lpfc_register* %7, i32 %134)
  br label %139

136:                                              ; preds = %122
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %147

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %111
  %141 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @writel(i64 %142, i32 %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %140, %136, %44, %16
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%union.lpfc_wqe*, %union.lpfc_wqe*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
