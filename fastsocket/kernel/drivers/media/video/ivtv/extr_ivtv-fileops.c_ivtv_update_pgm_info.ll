; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_update_pgm_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_update_pgm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i64, i64, %struct.v4l2_enc_idx_entry* }
%struct.v4l2_enc_idx_entry = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid PGM index %d (>= %d)\0A\00", align 1
@V4L2_ENC_IDX_FRAME_I = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_P = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_update_pgm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_update_pgm_info(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_enc_idx_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %10 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @read_enc(i32 %12)
  %14 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  %18 = sub nsw i32 %17, 4
  %19 = sdiv i32 %18, 24
  store i32 %19, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  br label %150

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  %41 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %40, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %102, %31
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %138

49:                                               ; preds = %45
  %50 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %54, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 5
  %61 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %61, i64 %63
  store %struct.v4l2_enc_idx_entry* %64, %struct.v4l2_enc_idx_entry** %7, align 8
  %65 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %66 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 24
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %8, align 4
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 -1, i32* %72, align 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* @V4L2_ENC_IDX_FRAME_I, align 4
  store i32 %74, i32* %73, align 4
  %75 = getelementptr inbounds i32, i32* %73, i64 1
  %76 = load i32, i32* @V4L2_ENC_IDX_FRAME_P, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 -1, i32* %77, align 4
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* @V4L2_ENC_IDX_FRAME_B, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 -1, i32* %80, align 4
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 -1, i32* %81, align 4
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 -1, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 4
  %85 = call i32 @read_enc(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 8
  %88 = call i32 @read_enc(i32 %87)
  %89 = shl i32 %88, 32
  %90 = add nsw i32 %85, %89
  %91 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %98 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %49
  br label %138

102:                                              ; preds = %49
  %103 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %104 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @read_enc(i32 %112)
  %114 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 16
  %118 = call i32 @read_enc(i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 20
  %121 = call i32 @read_enc(i32 %120)
  %122 = and i32 %121, 1
  %123 = shl i32 %122, 32
  %124 = add nsw i32 %118, %123
  %125 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %126 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 12
  %129 = call i32 @read_enc(i32 %128)
  %130 = and i32 %129, 7
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %45

138:                                              ; preds = %101, %45
  %139 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %140 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %141, %142
  %144 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = srem i32 %143, %146
  %148 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %149 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %138, %25
  ret void
}

declare dso_local i32 @read_enc(i32) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
