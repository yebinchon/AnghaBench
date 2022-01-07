; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_precalculate_bars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_precalculate_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8** }
%struct.vivi_fh = type { i64, i8**, %struct.TYPE_3__*, %struct.vivi_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.vivi_dev = type { i64 }

@bars = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivi_fh*)* @precalculate_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precalculate_bars(%struct.vivi_fh* %0) #0 {
  %2 = alloca %struct.vivi_fh*, align 8
  %3 = alloca %struct.vivi_dev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vivi_fh* %0, %struct.vivi_fh** %2, align 8
  %9 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %10 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %9, i32 0, i32 3
  %11 = load %struct.vivi_dev*, %struct.vivi_dev** %10, align 8
  store %struct.vivi_dev* %11, %struct.vivi_dev** %3, align 8
  %12 = load %struct.vivi_dev*, %struct.vivi_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %16 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %161, %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %164

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bars, align 8
  %22 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %23 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %4, align 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bars, align 8
  %35 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %36 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %5, align 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bars, align 8
  %48 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %49 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %6, align 1
  store i32 0, i32* %8, align 4
  %60 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %61 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %92 [
    i32 128, label %65
    i32 129, label %65
    i32 131, label %66
    i32 130, label %66
    i32 133, label %79
    i32 132, label %79
  ]

65:                                               ; preds = %20, %20
  store i32 1, i32* %8, align 4
  br label %92

66:                                               ; preds = %20, %20
  %67 = load i8, i8* %4, align 1
  %68 = zext i8 %67 to i32
  %69 = ashr i32 %68, 3
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %4, align 1
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i32
  %73 = ashr i32 %72, 2
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %5, align 1
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 3
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %6, align 1
  br label %92

79:                                               ; preds = %20, %20
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = ashr i32 %81, 3
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %4, align 1
  %84 = load i8, i8* %5, align 1
  %85 = zext i8 %84 to i32
  %86 = ashr i32 %85, 3
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %5, align 1
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 3
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %6, align 1
  br label %92

92:                                               ; preds = %20, %79, %66, %65
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load i8, i8* %4, align 1
  %97 = load i8, i8* %5, align 1
  %98 = load i8, i8* %6, align 1
  %99 = call zeroext i8 @TO_Y(i8 zeroext %96, i8 zeroext %97, i8 zeroext %98)
  %100 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %101 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %99, i8* %107, align 1
  %108 = load i8, i8* %4, align 1
  %109 = load i8, i8* %5, align 1
  %110 = load i8, i8* %6, align 1
  %111 = call zeroext i8 @TO_U(i8 zeroext %108, i8 zeroext %109, i8 zeroext %110)
  %112 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %113 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8 %111, i8* %119, align 1
  %120 = load i8, i8* %4, align 1
  %121 = load i8, i8* %5, align 1
  %122 = load i8, i8* %6, align 1
  %123 = call zeroext i8 @TO_V(i8 zeroext %120, i8 zeroext %121, i8 zeroext %122)
  %124 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %125 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 %123, i8* %131, align 1
  br label %160

132:                                              ; preds = %92
  %133 = load i8, i8* %4, align 1
  %134 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %135 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 %133, i8* %141, align 1
  %142 = load i8, i8* %5, align 1
  %143 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %144 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %143, i32 0, i32 1
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8 %142, i8* %150, align 1
  %151 = load i8, i8* %6, align 1
  %152 = load %struct.vivi_fh*, %struct.vivi_fh** %2, align 8
  %153 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %152, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8 %151, i8* %159, align 1
  br label %160

160:                                              ; preds = %132, %95
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %17

164:                                              ; preds = %17
  ret void
}

declare dso_local zeroext i8 @TO_Y(i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local zeroext i8 @TO_U(i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local zeroext i8 @TO_V(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
