; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_gen_twopix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_gen_twopix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivi_fh = type { i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivi_fh*, i8*, i32)* @gen_twopix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_twopix(%struct.vivi_fh* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.vivi_fh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.vivi_fh* %0, %struct.vivi_fh** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.vivi_fh*, %struct.vivi_fh** %4, align 8
  %13 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %7, align 1
  %21 = load %struct.vivi_fh*, %struct.vivi_fh** %4, align 8
  %22 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %8, align 1
  %30 = load %struct.vivi_fh*, %struct.vivi_fh** %4, align 8
  %31 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %9, align 1
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %165, %3
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %168

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load %struct.vivi_fh*, %struct.vivi_fh** %4, align 8
  %48 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %164 [
    i32 128, label %52
    i32 129, label %64
    i32 131, label %76
    i32 130, label %98
    i32 133, label %120
    i32 132, label %142
  ]

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %63 [
    i32 0, label %54
    i32 2, label %54
    i32 1, label %57
    i32 3, label %60
  ]

54:                                               ; preds = %52, %52
  %55 = load i8, i8* %7, align 1
  %56 = load i8*, i8** %10, align 8
  store i8 %55, i8* %56, align 1
  br label %63

57:                                               ; preds = %52
  %58 = load i8, i8* %8, align 1
  %59 = load i8*, i8** %10, align 8
  store i8 %58, i8* %59, align 1
  br label %63

60:                                               ; preds = %52
  %61 = load i8, i8* %9, align 1
  %62 = load i8*, i8** %10, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %52, %60, %57, %54
  br label %164

64:                                               ; preds = %42
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %75 [
    i32 1, label %66
    i32 3, label %66
    i32 0, label %69
    i32 2, label %72
  ]

66:                                               ; preds = %64, %64
  %67 = load i8, i8* %7, align 1
  %68 = load i8*, i8** %10, align 8
  store i8 %67, i8* %68, align 1
  br label %75

69:                                               ; preds = %64
  %70 = load i8, i8* %8, align 1
  %71 = load i8*, i8** %10, align 8
  store i8 %70, i8* %71, align 1
  br label %75

72:                                               ; preds = %64
  %73 = load i8, i8* %9, align 1
  %74 = load i8*, i8** %10, align 8
  store i8 %73, i8* %74, align 1
  br label %75

75:                                               ; preds = %64, %72, %69, %66
  br label %164

76:                                               ; preds = %42
  %77 = load i32, i32* %11, align 4
  switch i32 %77, label %97 [
    i32 0, label %78
    i32 2, label %78
    i32 1, label %87
    i32 3, label %87
  ]

78:                                               ; preds = %76, %76
  %79 = load i8, i8* %8, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 5
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %81, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %10, align 8
  store i8 %85, i8* %86, align 1
  br label %97

87:                                               ; preds = %76, %76
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 3
  %91 = load i8, i8* %8, align 1
  %92 = zext i8 %91 to i32
  %93 = ashr i32 %92, 3
  %94 = or i32 %90, %93
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %10, align 8
  store i8 %95, i8* %96, align 1
  br label %97

97:                                               ; preds = %76, %87, %78
  br label %164

98:                                               ; preds = %42
  %99 = load i32, i32* %11, align 4
  switch i32 %99, label %119 [
    i32 0, label %100
    i32 2, label %100
    i32 1, label %110
    i32 3, label %110
  ]

100:                                              ; preds = %98, %98
  %101 = load i8, i8* %7, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 3
  %104 = load i8, i8* %8, align 1
  %105 = zext i8 %104 to i32
  %106 = ashr i32 %105, 3
  %107 = or i32 %103, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %10, align 8
  store i8 %108, i8* %109, align 1
  br label %119

110:                                              ; preds = %98, %98
  %111 = load i8, i8* %8, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 5
  %114 = load i8, i8* %9, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %10, align 8
  store i8 %117, i8* %118, align 1
  br label %119

119:                                              ; preds = %98, %110, %100
  br label %164

120:                                              ; preds = %42
  %121 = load i32, i32* %11, align 4
  switch i32 %121, label %141 [
    i32 0, label %122
    i32 2, label %122
    i32 1, label %131
    i32 3, label %131
  ]

122:                                              ; preds = %120, %120
  %123 = load i8, i8* %8, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 5
  %126 = load i8, i8* %9, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %125, %127
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %10, align 8
  store i8 %129, i8* %130, align 1
  br label %141

131:                                              ; preds = %120, %120
  %132 = load i8, i8* %7, align 1
  %133 = zext i8 %132 to i32
  %134 = shl i32 %133, 2
  %135 = load i8, i8* %8, align 1
  %136 = zext i8 %135 to i32
  %137 = ashr i32 %136, 3
  %138 = or i32 %134, %137
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %10, align 8
  store i8 %139, i8* %140, align 1
  br label %141

141:                                              ; preds = %120, %131, %122
  br label %164

142:                                              ; preds = %42
  %143 = load i32, i32* %11, align 4
  switch i32 %143, label %163 [
    i32 0, label %144
    i32 2, label %144
    i32 1, label %154
    i32 3, label %154
  ]

144:                                              ; preds = %142, %142
  %145 = load i8, i8* %7, align 1
  %146 = zext i8 %145 to i32
  %147 = shl i32 %146, 2
  %148 = load i8, i8* %8, align 1
  %149 = zext i8 %148 to i32
  %150 = ashr i32 %149, 3
  %151 = or i32 %147, %150
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %10, align 8
  store i8 %152, i8* %153, align 1
  br label %163

154:                                              ; preds = %142, %142
  %155 = load i8, i8* %8, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, 5
  %158 = load i8, i8* %9, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %157, %159
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %10, align 8
  store i8 %161, i8* %162, align 1
  br label %163

163:                                              ; preds = %142, %154, %144
  br label %164

164:                                              ; preds = %42, %163, %141, %119, %97, %75, %63
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %39

168:                                              ; preds = %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
