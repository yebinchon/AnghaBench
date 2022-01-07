; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_ct_unsol_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_ct_unsol_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.hbq_dmabuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fc_frame_header = type { i32, i32 }

@LPFC_CT_CTX_MAX = common dso_local global i32 0, align 4
@UNSOL_VALID = common dso_local global i64 0, align 8
@UNSOL_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_bsg_ct_unsol_abort(%struct.lpfc_hba* %0, %struct.hbq_dmabuf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.hbq_dmabuf*, align 8
  %5 = alloca %struct.fc_frame_header, align 4
  %6 = alloca %struct.fc_frame_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.hbq_dmabuf* %1, %struct.hbq_dmabuf** %4, align 8
  store %struct.fc_frame_header* %5, %struct.fc_frame_header** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %13 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %14 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(%struct.fc_frame_header* %12, i32 %16, i32 8)
  %18 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %19 = call i64 @sli4_sid_from_fc_hdr(%struct.fc_frame_header* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %21 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be16_to_cpu(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %25 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be16_to_cpu(i32 %26)
  store i64 %27, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %89, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LPFC_CT_CTX_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %28
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UNSOL_VALID, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %89

44:                                               ; preds = %32
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %89

56:                                               ; preds = %44
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %89

68:                                               ; preds = %56
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %89

80:                                               ; preds = %68
  %81 = load i64, i64* @UNSOL_INVALID, align 8
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %81, i64* %88, align 8
  store i32 1, i32* %8, align 4
  br label %89

89:                                               ; preds = %80, %79, %67, %55, %43
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %28

92:                                               ; preds = %28
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @memcpy(%struct.fc_frame_header*, i32, i32) #1

declare dso_local i64 @sli4_sid_from_fc_hdr(%struct.fc_frame_header*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
