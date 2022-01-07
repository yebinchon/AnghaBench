; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_handle_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_hba_handle_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64*, %struct.lpfc_queue**, i32* }
%struct.lpfc_queue = type { i64, i32, i32 }
%struct.lpfc_eqe = type { i32 }
%struct.lpfc_cqe = type { i32 }

@lpfc_eqe_major_code = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"0366 Not a valid completion event: majorcode=x%x, minorcode=x%x\0A\00", align 1
@lpfc_eqe_minor_code = common dso_local global i32 0, align 4
@lpfc_eqe_resource_id = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"3146 Fast-path completion queues does not exist\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"0367 Fast-path completion queue (%d) does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"0368 Miss-matched fast-path completion queue identifier: eqcqid=%d, fcpcqid=%d\0A\00", align 1
@LPFC_QUEUE_NOARM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"0369 No entry from fast-path completion queue fcpcqid=%d\0A\00", align 1
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_eqe*, i64)* @lpfc_sli4_hba_handle_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba* %0, %struct.lpfc_eqe* %1, i64 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_eqe*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca %struct.lpfc_cqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_eqe* %1, %struct.lpfc_eqe** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @lpfc_eqe_major_code, align 4
  %13 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %14 = call i64 @bf_get_le32(i32 %12, %struct.lpfc_eqe* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* @LOG_SLI, align 4
  %23 = load i32, i32* @lpfc_eqe_major_code, align 4
  %24 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %25 = call i64 @bf_get_le32(i32 %23, %struct.lpfc_eqe* %24)
  %26 = load i32, i32* @lpfc_eqe_minor_code, align 4
  %27 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %28 = call i64 @bf_get_le32(i32 %26, %struct.lpfc_eqe* %27)
  %29 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28)
  br label %176

30:                                               ; preds = %3
  %31 = load i32, i32* @lpfc_eqe_resource_id, align 4
  %32 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %33 = call i64 @bf_get_le32(i32 %31, %struct.lpfc_eqe* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %34, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %30
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lpfc_sli4_sp_handle_eqe(%struct.lpfc_hba* %47, %struct.lpfc_eqe* %48, i32 %55)
  br label %176

57:                                               ; preds = %30
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %60, align 8
  %62 = icmp ne %struct.lpfc_queue** %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = load i32, i32* @KERN_WARNING, align 4
  %70 = load i32, i32* @LOG_SLI, align 4
  %71 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %176

72:                                               ; preds = %57
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %76, i64 %77
  %79 = load %struct.lpfc_queue*, %struct.lpfc_queue** %78, align 8
  store %struct.lpfc_queue* %79, %struct.lpfc_queue** %7, align 8
  %80 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %81 = icmp ne %struct.lpfc_queue* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %72
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = load i32, i32* @KERN_ERR, align 4
  %97 = load i32, i32* @LOG_SLI, align 4
  %98 = load i64, i64* %6, align 8
  %99 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %94, %86
  br label %176

101:                                              ; preds = %72
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %112 = load i32, i32* @KERN_ERR, align 4
  %113 = load i32, i32* @LOG_SLI, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %116 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i64 %114, i64 %117)
  br label %176

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %142, %119
  %121 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %122 = call %struct.lpfc_cqe* @lpfc_sli4_cq_get(%struct.lpfc_queue* %121)
  store %struct.lpfc_cqe* %122, %struct.lpfc_cqe** %8, align 8
  %123 = icmp ne %struct.lpfc_cqe* %122, null
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %126 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %127 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %8, align 8
  %128 = call i32 @lpfc_sli4_fp_handle_wcqe(%struct.lpfc_hba* %125, %struct.lpfc_queue* %126, %struct.lpfc_cqe* %127)
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %134 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = srem i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %124
  %139 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %140 = load i32, i32* @LPFC_QUEUE_NOARM, align 4
  %141 = call i32 @lpfc_sli4_cq_release(%struct.lpfc_queue* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %124
  br label %120

143:                                              ; preds = %120
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %146 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %144, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %152 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load i32, i32* @LOG_SLI, align 4
  %163 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %164 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %165)
  br label %167

167:                                              ; preds = %159, %153
  %168 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %169 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %170 = call i32 @lpfc_sli4_cq_release(%struct.lpfc_queue* %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %175 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %174)
  br label %176

176:                                              ; preds = %19, %46, %67, %100, %110, %173, %167
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get_le32(i32, %struct.lpfc_eqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_sp_handle_eqe(%struct.lpfc_hba*, %struct.lpfc_eqe*, i32) #1

declare dso_local %struct.lpfc_cqe* @lpfc_sli4_cq_get(%struct.lpfc_queue*) #1

declare dso_local i32 @lpfc_sli4_fp_handle_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*) #1

declare dso_local i32 @lpfc_sli4_cq_release(%struct.lpfc_queue*, i32) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
