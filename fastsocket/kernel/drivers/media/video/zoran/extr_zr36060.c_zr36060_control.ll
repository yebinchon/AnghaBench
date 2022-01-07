; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { i64 }
%struct.zr36060 = type { i32, i32, i32, i32, %struct.jpeg_com_marker, %struct.jpeg_app_marker, i32 }
%struct.jpeg_com_marker = type { i32 }
%struct.jpeg_app_marker = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: control %d call with %d byte\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CODEC_MODE_BJPG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, i32, i32, i8*)* @zr36060_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36060_control(%struct.videocodec* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.videocodec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zr36060*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.jpeg_app_marker*, align 8
  %13 = alloca %struct.jpeg_app_marker*, align 8
  %14 = alloca %struct.jpeg_com_marker*, align 8
  %15 = alloca %struct.jpeg_com_marker*, align 8
  store %struct.videocodec* %0, %struct.videocodec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.videocodec*, %struct.videocodec** %6, align 8
  %17 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.zr36060*
  store %struct.zr36060* %19, %struct.zr36060** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %23 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %187 [
    i32 136, label %29
    i32 141, label %43
    i32 134, label %53
    i32 135, label %69
    i32 128, label %69
    i32 129, label %70
    i32 137, label %73
    i32 130, label %85
    i32 138, label %104
    i32 131, label %115
    i32 140, label %127
    i32 133, label %142
    i32 139, label %157
    i32 132, label %172
  ]

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %192

36:                                               ; preds = %29
  %37 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %38 = call i32 @zr36060_read_status(%struct.zr36060* %37)
  %39 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %40 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %190

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %192

50:                                               ; preds = %43
  %51 = load i32, i32* @CODEC_MODE_BJPG, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %190

53:                                               ; preds = %4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %192

60:                                               ; preds = %53
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CODEC_MODE_BJPG, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %192

68:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %192

69:                                               ; preds = %4, %4
  store i32 0, i32* %5, align 4
  br label %192

70:                                               ; preds = %4
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %192

73:                                               ; preds = %4
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 4
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %192

80:                                               ; preds = %73
  %81 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %82 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %190

85:                                               ; preds = %4
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 4
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EFAULT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %192

92:                                               ; preds = %85
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %96 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %98 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 6
  %101 = ashr i32 %100, 3
  %102 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %103 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  br label %190

104:                                              ; preds = %4
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ne i64 %106, 4
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %192

111:                                              ; preds = %104
  %112 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %113 = call i32 @zr36060_read_scalefactor(%struct.zr36060* %112)
  %114 = load i32*, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  br label %190

115:                                              ; preds = %4
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %117, 4
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @EFAULT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %192

122:                                              ; preds = %115
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %126 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %190

127:                                              ; preds = %4
  %128 = load i8*, i8** %9, align 8
  %129 = bitcast i8* %128 to %struct.jpeg_app_marker*
  store %struct.jpeg_app_marker* %129, %struct.jpeg_app_marker** %12, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ne i64 %131, 4
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* @EFAULT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %192

136:                                              ; preds = %127
  %137 = load %struct.jpeg_app_marker*, %struct.jpeg_app_marker** %12, align 8
  %138 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %139 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %138, i32 0, i32 5
  %140 = bitcast %struct.jpeg_app_marker* %137 to i8*
  %141 = bitcast %struct.jpeg_app_marker* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 4, i1 false)
  br label %190

142:                                              ; preds = %4
  %143 = load i8*, i8** %9, align 8
  %144 = bitcast i8* %143 to %struct.jpeg_app_marker*
  store %struct.jpeg_app_marker* %144, %struct.jpeg_app_marker** %13, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 4
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %192

151:                                              ; preds = %142
  %152 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %153 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %152, i32 0, i32 5
  %154 = load %struct.jpeg_app_marker*, %struct.jpeg_app_marker** %13, align 8
  %155 = bitcast %struct.jpeg_app_marker* %153 to i8*
  %156 = bitcast %struct.jpeg_app_marker* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 4, i1 false)
  br label %190

157:                                              ; preds = %4
  %158 = load i8*, i8** %9, align 8
  %159 = bitcast i8* %158 to %struct.jpeg_com_marker*
  store %struct.jpeg_com_marker* %159, %struct.jpeg_com_marker** %14, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp ne i64 %161, 4
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* @EFAULT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %192

166:                                              ; preds = %157
  %167 = load %struct.jpeg_com_marker*, %struct.jpeg_com_marker** %14, align 8
  %168 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %169 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %168, i32 0, i32 4
  %170 = bitcast %struct.jpeg_com_marker* %167 to i8*
  %171 = bitcast %struct.jpeg_com_marker* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 4, i1 false)
  br label %190

172:                                              ; preds = %4
  %173 = load i8*, i8** %9, align 8
  %174 = bitcast i8* %173 to %struct.jpeg_com_marker*
  store %struct.jpeg_com_marker* %174, %struct.jpeg_com_marker** %15, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = icmp ne i64 %176, 4
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i32, i32* @EFAULT, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %192

181:                                              ; preds = %172
  %182 = load %struct.zr36060*, %struct.zr36060** %10, align 8
  %183 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %182, i32 0, i32 4
  %184 = load %struct.jpeg_com_marker*, %struct.jpeg_com_marker** %15, align 8
  %185 = bitcast %struct.jpeg_com_marker* %183 to i8*
  %186 = bitcast %struct.jpeg_com_marker* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 4, i1 false)
  br label %190

187:                                              ; preds = %4
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %192

190:                                              ; preds = %181, %166, %151, %136, %122, %111, %92, %80, %50, %36
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %190, %187, %178, %163, %148, %133, %119, %108, %89, %77, %70, %69, %68, %65, %57, %47, %33
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @zr36060_read_status(%struct.zr36060*) #1

declare dso_local i32 @zr36060_read_scalefactor(%struct.zr36060*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
