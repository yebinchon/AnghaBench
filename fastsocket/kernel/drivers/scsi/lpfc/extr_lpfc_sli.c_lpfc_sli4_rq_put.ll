; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rq_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lpfc_rqe* }
%struct.lpfc_rqe = type { i32 }
%struct.lpfc_register = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@LPFC_HRQ = common dso_local global i64 0, align 8
@LPFC_DRQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LPFC_DB_RING_FORMAT = common dso_local global i64 0, align 8
@lpfc_rq_db_ring_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_rq_db_ring_fm_id = common dso_local global i32 0, align 4
@LPFC_DB_LIST_FORMAT = common dso_local global i64 0, align 8
@lpfc_rq_db_list_fm_num_posted = common dso_local global i32 0, align 4
@lpfc_rq_db_list_fm_index = common dso_local global i32 0, align 4
@lpfc_rq_db_list_fm_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*, %struct.lpfc_queue*, %struct.lpfc_rqe*, %struct.lpfc_rqe*)* @lpfc_sli4_rq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_rq_put(%struct.lpfc_queue* %0, %struct.lpfc_queue* %1, %struct.lpfc_rqe* %2, %struct.lpfc_rqe* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca %struct.lpfc_rqe*, align 8
  %9 = alloca %struct.lpfc_rqe*, align 8
  %10 = alloca %struct.lpfc_rqe*, align 8
  %11 = alloca %struct.lpfc_rqe*, align 8
  %12 = alloca %struct.lpfc_register, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %6, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %7, align 8
  store %struct.lpfc_rqe* %2, %struct.lpfc_rqe** %8, align 8
  store %struct.lpfc_rqe* %3, %struct.lpfc_rqe** %9, align 8
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %15 = icmp ne %struct.lpfc_queue* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %22 = icmp ne %struct.lpfc_queue* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %189

30:                                               ; preds = %20
  %31 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %34, i32 0, i32 9
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %42, align 8
  store %struct.lpfc_rqe* %43, %struct.lpfc_rqe** %10, align 8
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 9
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %52, align 8
  store %struct.lpfc_rqe* %53, %struct.lpfc_rqe** %11, align 8
  %54 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LPFC_HRQ, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %30
  %60 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LPFC_DRQ, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %30
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %189

68:                                               ; preds = %59
  %69 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %70 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %73 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %189

79:                                               ; preds = %68
  %80 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = srem i32 %83, %86
  %88 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %189

95:                                               ; preds = %79
  %96 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %8, align 8
  %97 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %10, align 8
  %98 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %99 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_rqe* %96, %struct.lpfc_rqe* %97, i32 %100)
  %102 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %9, align 8
  %103 = load %struct.lpfc_rqe*, %struct.lpfc_rqe** %11, align 8
  %104 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %105 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_rqe* %102, %struct.lpfc_rqe* %103, i32 %106)
  %108 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %109 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  %112 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %113 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = srem i32 %111, %114
  %116 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %119 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %121, %124
  %126 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %127 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %129 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %132 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %187, label %136

136:                                              ; preds = %95
  %137 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %139 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @LPFC_DB_RING_FORMAT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load i32, i32* @lpfc_rq_db_ring_fm_num_posted, align 4
  %145 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %146 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @bf_set(i32 %144, %struct.lpfc_register* %12, i32 %147)
  %149 = load i32, i32* @lpfc_rq_db_ring_fm_id, align 4
  %150 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %151 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @bf_set(i32 %149, %struct.lpfc_register* %12, i32 %152)
  br label %180

154:                                              ; preds = %136
  %155 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %156 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @LPFC_DB_LIST_FORMAT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %154
  %161 = load i32, i32* @lpfc_rq_db_list_fm_num_posted, align 4
  %162 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %163 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @bf_set(i32 %161, %struct.lpfc_register* %12, i32 %164)
  %166 = load i32, i32* @lpfc_rq_db_list_fm_index, align 4
  %167 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %168 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @bf_set(i32 %166, %struct.lpfc_register* %12, i32 %169)
  %171 = load i32, i32* @lpfc_rq_db_list_fm_id, align 4
  %172 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %173 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @bf_set(i32 %171, %struct.lpfc_register* %12, i32 %174)
  br label %179

176:                                              ; preds = %154
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %189

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179, %143
  %181 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @writel(i64 %182, i32 %185)
  br label %187

187:                                              ; preds = %180, %95
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %187, %176, %92, %76, %65, %27
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_rqe*, %struct.lpfc_rqe*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
