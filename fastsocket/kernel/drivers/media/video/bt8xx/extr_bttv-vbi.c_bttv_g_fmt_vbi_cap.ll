; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-vbi.c_bttv_g_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-vbi.c_bttv_g_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_tvnorm = type { i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i8**, i32 }
%struct.bttv_fh = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.bttv_tvnorm*, %struct.TYPE_11__ }
%struct.TYPE_7__ = type { i64 }

@bttv_tvnorms = common dso_local global %struct.bttv_tvnorm* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_g_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.bttv_fh*, align 8
  %8 = alloca %struct.bttv_tvnorm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.bttv_fh*
  store %struct.bttv_fh* %13, %struct.bttv_fh** %7, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %18 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_11__* %16 to i8*
  %21 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %23 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %24 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %22, i64 %27
  store %struct.bttv_tvnorm* %28, %struct.bttv_tvnorm** %8, align 8
  %29 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %30 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %31 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %32, align 8
  %34 = icmp ne %struct.bttv_tvnorm* %29, %33
  br i1 %34, label %35, label %147

35:                                               ; preds = %3
  %36 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %37 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %42 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %40, %45
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %49 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %143, %35
  %56 = load i32, i32* %10, align 4
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %146

58:                                               ; preds = %55
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %69 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %67, %74
  %76 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %77 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %78, align 8
  %80 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %75, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i8* @min(i32 %87, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %91, i32* %99, align 4
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %110, %119
  %121 = call i8* @min(i32 %109, i32 %120)
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %121, i8** %129, align 8
  %130 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %131 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %8, align 8
  %136 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %134, %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %58
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %55

146:                                              ; preds = %55
  br label %147

147:                                              ; preds = %146, %3
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @min(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
