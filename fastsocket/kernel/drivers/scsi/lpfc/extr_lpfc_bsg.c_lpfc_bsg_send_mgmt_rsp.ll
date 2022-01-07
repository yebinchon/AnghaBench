; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32*, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.send_mgmt_resp = type { i32 }
%struct.ulp_bde64 = type { i32 }
%struct.lpfc_dmabuf = type { i32, i64, i32 }

@BUF_SZ_4K = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_send_mgmt_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_send_mgmt_rsp(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.send_mgmt_resp*, align 8
  %7 = alloca %struct.ulp_bde64*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %4, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %5, align 8
  %23 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %24 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.send_mgmt_resp*
  store %struct.send_mgmt_resp* %30, %struct.send_mgmt_resp** %6, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %8, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %9, align 8
  %31 = load %struct.send_mgmt_resp*, %struct.send_mgmt_resp** %6, align 8
  %32 = getelementptr inbounds %struct.send_mgmt_resp, %struct.send_mgmt_resp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %35 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %38 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @BUF_SZ_4K, align 4
  %47 = mul nsw i32 80, %46
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %1
  %51 = load i32, i32* @ERANGE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %142

53:                                               ; preds = %44
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %54)
  store %struct.lpfc_dmabuf* %55, %struct.lpfc_dmabuf** %8, align 8
  %56 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %57 = icmp ne %struct.lpfc_dmabuf* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %142

61:                                               ; preds = %53
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %63 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %64 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %63, i32 0, i32 0
  %65 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %62, i32 0, i32* %64)
  %66 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %67 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %69 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %125

75:                                               ; preds = %61
  %76 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %77 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %76, i32 0, i32 2
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %80 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %82, %struct.ulp_bde64** %7, align 8
  %83 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = udiv i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %88 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %89 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ulp_bde64*, %struct.ulp_bde64** %7, align 8
  %93 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %87, i64 %91, i32 1, %struct.ulp_bde64* %92, i32* %10)
  store %struct.lpfc_dmabuf* %93, %struct.lpfc_dmabuf** %9, align 8
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %95 = icmp ne %struct.lpfc_dmabuf* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %75
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  br label %125

99:                                               ; preds = %75
  %100 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %101 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %102 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %101, i32 0, i32 2
  %103 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %100, %struct.TYPE_12__* %102, i64 %106, i32 1)
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %109 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @lpfc_issue_ct_rsp(%struct.lpfc_hba* %108, %struct.fc_bsg_job* %109, i32 %110, %struct.lpfc_dmabuf* %111, %struct.lpfc_dmabuf* %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @IOCB_SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %151

119:                                              ; preds = %99
  %120 = load i32, i32* @EACCES, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %13, align 4
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %123 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %124 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %122, %struct.lpfc_dmabuf* %123)
  br label %125

125:                                              ; preds = %119, %96, %72
  %126 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %127 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %132 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %133 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %136 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %131, i64 %134, i32 %137)
  br label %139

139:                                              ; preds = %130, %125
  %140 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %141 = call i32 @kfree(%struct.lpfc_dmabuf* %140)
  br label %142

142:                                              ; preds = %139, %58, %50
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %145 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %144, i32 0, i32 1
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 8
  %148 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %149 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %142, %118
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba*, i64, i32, %struct.ulp_bde64*, i32*) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, %struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @lpfc_issue_ct_rsp(%struct.lpfc_hba*, %struct.fc_bsg_job*, i32, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
