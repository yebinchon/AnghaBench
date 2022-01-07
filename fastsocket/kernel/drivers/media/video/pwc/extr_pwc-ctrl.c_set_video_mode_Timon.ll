; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_set_video_mode_Timon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_set_video_mode_Timon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Timon_table_entry = type { i64, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pwc_device = type { i64, i32, i8*, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32 }

@PSZ_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSZ_VGA = common dso_local global i32 0, align 4
@Timon_table = common dso_local global %struct.Timon_table_entry*** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@pwc_image_sizes = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32, i32, i32)* @set_video_mode_Timon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_video_mode_Timon(%struct.pwc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [13 x i8], align 1
  %13 = alloca %struct.Timon_table_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PSZ_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 30
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25, %22, %19, %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %192

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PSZ_VGA, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 15
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %192

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, 5
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  store %struct.Timon_table_entry* null, %struct.Timon_table_entry** %13, align 8
  br label %48

48:                                               ; preds = %69, %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp sle i32 %49, 3
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.Timon_table_entry***, %struct.Timon_table_entry**** @Timon_table, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Timon_table_entry**, %struct.Timon_table_entry*** %52, i64 %54
  %56 = load %struct.Timon_table_entry**, %struct.Timon_table_entry*** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.Timon_table_entry*, %struct.Timon_table_entry** %56, i64 %58
  %60 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %60, i64 %62
  store %struct.Timon_table_entry* %63, %struct.Timon_table_entry** %13, align 8
  %64 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %65 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %72

69:                                               ; preds = %51
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %48

72:                                               ; preds = %68, %48
  %73 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %74 = icmp eq %struct.Timon_table_entry* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %77 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %72
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %192

83:                                               ; preds = %75
  %84 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %85 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %86 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @memcpy(i8* %84, i8* %87, i32 13)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, 128
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %97

97:                                               ; preds = %91, %83
  %98 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %99 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %100 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %103 = call i32 @send_video_command(%struct.pwc_device* %98, i32 %101, i8* %102, i32 13)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %6, align 4
  br label %192

108:                                              ; preds = %97
  %109 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %110 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %121 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %122 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %125 = call i32 @pwc_dec23_init(%struct.pwc_device* %120, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %119, %113, %108
  %127 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %128 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %127, i32 0, i32 1
  store i32 13, i32* %128, align 8
  %129 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %130 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  %133 = call i32 @memcpy(i8* %131, i8* %132, i32 13)
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %136 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %139 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %142 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %144 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %147 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %146, i32 0, i32 6
  store i64 %145, i64* %147, align 8
  %148 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %149 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %148, i32 0, i32 9
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwc_image_sizes, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = bitcast %struct.TYPE_2__* %149 to i8*
  %155 = bitcast %struct.TYPE_2__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 4 %155, i64 8, i1 false)
  %156 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %157 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %160 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 8
  %161 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %162 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %126
  %166 = load %struct.Timon_table_entry*, %struct.Timon_table_entry** %13, align 8
  %167 = getelementptr inbounds %struct.Timon_table_entry, %struct.Timon_table_entry* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %170 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %168, %172
  %174 = sdiv i32 %173, 4
  %175 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %176 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 4
  br label %191

177:                                              ; preds = %126
  %178 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %179 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %183 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %181, %185
  %187 = mul nsw i32 %186, 12
  %188 = sdiv i32 %187, 8
  %189 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %190 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %177, %165
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %191, %106, %80, %41, %31
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @send_video_command(%struct.pwc_device*, i32, i8*, i32) #1

declare dso_local i32 @pwc_dec23_init(%struct.pwc_device*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
