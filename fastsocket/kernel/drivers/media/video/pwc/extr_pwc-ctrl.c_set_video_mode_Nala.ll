; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_set_video_mode_Nala.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_set_video_mode_Nala.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Nala_table_entry = type { i64, i8*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pwc_device = type { i64, i32, i32, i8*, i32, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, i32 }

@__const.set_video_mode_Nala.frames2frames = private unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 5, i32 5, i32 7, i32 7, i32 10, i32 10, i32 10, i32 12, i32 12, i32 15, i32 15, i32 15, i32 15, i32 20, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24], align 16
@__const.set_video_mode_Nala.frames2table = private unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 16
@PSZ_CIF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Nala_table = common dso_local global %struct.Nala_table_entry** null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to send video command... %d\0A\00", align 1
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@pwc_image_sizes = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32)* @set_video_mode_Nala to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_video_mode_Nala(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Nala_table_entry*, align 8
  %12 = alloca [31 x i32], align 16
  %13 = alloca [31 x i32], align 16
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = bitcast [31 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([31 x i32]* @__const.set_video_mode_Nala.frames2frames to i8*), i64 124, i1 false)
  %15 = bitcast [31 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([31 x i32]* @__const.set_video_mode_Nala.frames2table to i8*), i64 124, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PSZ_CIF, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 25
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22, %18, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %164

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [31 x i32], [31 x i32]* %12, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [31 x i32], [31 x i32]* %13, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.Nala_table_entry**, %struct.Nala_table_entry*** @Nala_table, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Nala_table_entry*, %struct.Nala_table_entry** %40, i64 %42
  %44 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %44, i64 %46
  store %struct.Nala_table_entry* %47, %struct.Nala_table_entry** %11, align 8
  %48 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %11, align 8
  %49 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %164

55:                                               ; preds = %31
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %57 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %11, align 8
  %58 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @memcpy(i8* %56, i8* %59, i32 3)
  %61 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %62 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %63 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %66 = call i32 @send_video_command(%struct.pwc_device* %61, i32 %64, i8* %65, i32 3)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @PWC_DEBUG_MODULE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %164

73:                                               ; preds = %55
  %74 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %11, align 8
  %75 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %80 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %86 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %89 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %92 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %93 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pwc_dec1_init(i32 %87, i32 %90, i8* %91, i32 %94)
  br label %96

96:                                               ; preds = %84, %78, %73
  %97 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %98 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %97, i32 0, i32 2
  store i32 3, i32* %98, align 4
  %99 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %100 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %103 = call i32 @memcpy(i8* %101, i8* %102, i32 3)
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %106 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %109 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %11, align 8
  %111 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %114 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %113, i32 0, i32 6
  store i64 %112, i64* %114, align 8
  %115 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %116 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %115, i32 0, i32 9
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwc_image_sizes, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = bitcast %struct.TYPE_2__* %116 to i8*
  %122 = bitcast %struct.TYPE_2__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 4 %122, i64 8, i1 false)
  %123 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %124 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %128 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %126, %130
  %132 = mul nsw i32 %131, 3
  %133 = sdiv i32 %132, 2
  %134 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %135 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  %136 = load %struct.Nala_table_entry*, %struct.Nala_table_entry** %11, align 8
  %137 = getelementptr inbounds %struct.Nala_table_entry, %struct.Nala_table_entry* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %96
  %141 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %142 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %143, 5
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %147 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %146, i32 0, i32 8
  store i32 528, i32* %147, align 4
  %148 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %149 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %150, 4
  store i32 %151, i32* %149, align 8
  br label %159

152:                                              ; preds = %140
  %153 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %154 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %153, i32 0, i32 8
  store i32 704, i32* %154, align 4
  %155 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %156 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %157, 3
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152, %145
  br label %163

160:                                              ; preds = %96
  %161 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %162 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %161, i32 0, i32 8
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %159
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %69, %52, %28
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @send_video_command(%struct.pwc_device*, i32, i8*, i32) #2

declare dso_local i32 @PWC_DEBUG_MODULE(i8*, i32) #2

declare dso_local i32 @pwc_dec1_init(i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
