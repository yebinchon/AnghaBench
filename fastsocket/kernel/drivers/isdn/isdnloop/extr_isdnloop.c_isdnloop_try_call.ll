; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/isdnloop/extr_isdnloop.c_isdnloop_try_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/isdnloop/extr_isdnloop.c_isdnloop_try_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8**, i8**, i32*, i32*, %struct.TYPE_11__*, i32, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@cards = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@si2bit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, %struct.TYPE_12__*)* @isdnloop_try_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdnloop_try_call(%struct.TYPE_11__* %0, i8* %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [32 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cards, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = call i32 @isdnloop_parse_setup(i8* %18, %struct.TYPE_12__* %19)
  br label %21

21:                                               ; preds = %187, %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %191

24:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %184, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %187

28:                                               ; preds = %25
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = icmp eq %struct.TYPE_11__* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %184

37:                                               ; preds = %32, %28
  store i32 0, i32* %13, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %101 [
    i32 128, label %41
    i32 129, label %66
  ]

41:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strcmp(i8* %52, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %45
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %42

65:                                               ; preds = %42
  br label %101

66:                                               ; preds = %37
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %15, align 8
  br label %74

74:                                               ; preds = %97, %66
  %75 = load i8*, i8** %15, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %84, i8 signext %86)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @strcmp(i8* %88, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %15, align 8
  br label %74

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %37, %65
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %183

104:                                              ; preds = %101
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %111, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = icmp ne %struct.TYPE_11__* %115, null
  br i1 %116, label %173, label %117

117:                                              ; preds = %104
  %118 = load i32*, i32** @si2bit, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %125, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %117
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 6
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  store i32 3, i32* %5, align 4
  br label %192

140:                                              ; preds = %117
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 7
  %144 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %144, i64 %146
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %147, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %148, i32* %154, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 7
  %158 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %158, i64 %160
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %161, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 6
  %171 = load i64, i64* %11, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  store i32 0, i32* %5, align 4
  br label %192

173:                                              ; preds = %104
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 6
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i32 1, i32* %5, align 4
  br label %192

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %101
  br label %184

184:                                              ; preds = %183, %36
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %25

187:                                              ; preds = %25
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  store %struct.TYPE_11__* %190, %struct.TYPE_11__** %10, align 8
  br label %21

191:                                              ; preds = %21
  store i32 2, i32* %5, align 4
  br label %192

192:                                              ; preds = %191, %180, %140, %135
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @isdnloop_parse_setup(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8 signext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
