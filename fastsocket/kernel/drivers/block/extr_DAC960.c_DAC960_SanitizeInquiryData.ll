; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_SanitizeInquiryData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_SanitizeInquiryData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i8*, i8*, i8*)* @DAC960_SanitizeInquiryData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_SanitizeInquiryData(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 31
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %185

24:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %15, align 1
  %37 = load i8, i8* %15, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %38, 32
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i8, i8* %15, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 %42, 126
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8, i8* %15, align 1
  %46 = zext i8 %45 to i32
  br label %48

47:                                               ; preds = %40, %29
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 32, %47 ]
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %50, i8* %54, align 1
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  store i8 0, i8* %60, align 1
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %91, %58
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 8
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %16, align 1
  %73 = load i8, i8* %16, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sge i32 %74, 32
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load i8, i8* %16, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sle i32 %78, 126
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8, i8* %16, align 1
  %82 = zext i8 %81 to i32
  br label %84

83:                                               ; preds = %76, %65
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %82, %80 ], [ 32, %83 ]
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %61

94:                                               ; preds = %61
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  store i8 0, i8* %96, align 1
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %127, %94
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %99, 8
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  store i8 %108, i8* %17, align 1
  %109 = load i8, i8* %17, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sge i32 %110, 32
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load i8, i8* %17, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sle i32 %114, 126
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i8, i8* %17, align 1
  %118 = zext i8 %117 to i32
  br label %120

119:                                              ; preds = %112, %101
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 32, %119 ]
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 %122, i8* %126, align 1
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %97

130:                                              ; preds = %97
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 8
  store i8 0, i8* %132, align 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 31
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %185

138:                                              ; preds = %130
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ugt i64 %143, 8
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 8, i32* %13, align 4
  br label %146

146:                                              ; preds = %145, %138
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %177, %146
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %147
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  store i8 %158, i8* %18, align 1
  %159 = load i8, i8* %18, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp sge i32 %160, 32
  br i1 %161, label %162, label %169

162:                                              ; preds = %151
  %163 = load i8, i8* %18, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp sle i32 %164, 126
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i8, i8* %18, align 1
  %168 = zext i8 %167 to i32
  br label %170

169:                                              ; preds = %162, %151
  br label %170

170:                                              ; preds = %169, %166
  %171 = phi i32 [ %168, %166 ], [ 32, %169 ]
  %172 = trunc i32 %171 to i8
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 %172, i8* %176, align 1
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %147

180:                                              ; preds = %147
  %181 = load i8*, i8** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 0, i8* %184, align 1
  br label %185

185:                                              ; preds = %180, %137, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
