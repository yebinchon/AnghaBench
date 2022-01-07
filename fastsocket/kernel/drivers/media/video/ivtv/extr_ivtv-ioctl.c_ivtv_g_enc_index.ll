; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_enc_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_g_enc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enc_idx = type { i32, %struct.v4l2_enc_idx_entry* }
%struct.v4l2_enc_idx_entry = type { i32 }
%struct.ivtv = type { i32, i32, %struct.v4l2_enc_idx_entry* }
%struct.ivtv_open_id = type { %struct.ivtv* }

@IVTV_MAX_PGM_INDEX = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_ENTRIES = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_MASK = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enc_idx*)* @ivtv_g_enc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_enc_index(%struct.file* %0, i8* %1, %struct.v4l2_enc_idx* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_enc_idx*, align 8
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca %struct.v4l2_enc_idx_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_enc_idx* %2, %struct.v4l2_enc_idx** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ivtv_open_id*
  %13 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %12, i32 0, i32 0
  %14 = load %struct.ivtv*, %struct.ivtv** %13, align 8
  store %struct.ivtv* %14, %struct.ivtv** %7, align 8
  %15 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %15, i32 0, i32 1
  %17 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %16, align 8
  store %struct.v4l2_enc_idx_entry* %17, %struct.v4l2_enc_idx_entry** %8, align 8
  %18 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %22 = add nsw i32 %20, %21
  %23 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %24 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @V4L2_ENC_IDX_ENTRIES, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @V4L2_ENC_IDX_ENTRIES, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %3
  %35 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %72, %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %8, align 8
  %43 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 2
  %45 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %44, align 8
  %46 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %47 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %52 = srem i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %45, i64 %53
  %55 = bitcast %struct.v4l2_enc_idx_entry* %42 to i8*
  %56 = bitcast %struct.v4l2_enc_idx_entry* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V4L2_ENC_IDX_FRAME_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @V4L2_ENC_IDX_FRAME_B, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %69, i32 1
  store %struct.v4l2_enc_idx_entry* %70, %struct.v4l2_enc_idx_entry** %8, align 8
  br label %71

71:                                               ; preds = %64, %41
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %37

75:                                               ; preds = %37
  %76 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %77 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  %83 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %84 = srem i32 %82, %83
  %85 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
