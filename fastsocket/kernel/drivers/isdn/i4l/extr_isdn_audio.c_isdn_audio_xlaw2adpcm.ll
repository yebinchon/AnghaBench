; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_audio.c_isdn_audio_xlaw2adpcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_audio.c_isdn_audio_xlaw2adpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@isdn_audio_alaw_to_s16 = common dso_local global i32* null, align 8
@isdn_audio_ulaw_to_s16 = common dso_local global i32* null, align 8
@bitmask = common dso_local global i32* null, align 8
@Mx = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdn_audio_xlaw2adpcm(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %146, %5
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %10, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %147

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 1, %34
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32*, i32** @isdn_audio_alaw_to_s16, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %18, align 4
  br label %60

49:                                               ; preds = %32
  %50 = load i32*, i32** @isdn_audio_ulaw_to_s16, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 2
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %49, %38
  %61 = load i32, i32* %18, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %18, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %18, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %68

84:                                               ; preds = %76
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %88, 15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 8, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %87, %84
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = call i32 @isdn_audio_put_bits(i32 %93, i32 %94, %struct.TYPE_4__* %95, i8** %9, i32* %14)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 %98, 1
  %100 = ashr i32 %97, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 -1, i32 1
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** @bitmask, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %15, align 4
  %114 = shl i32 %113, 1
  %115 = add nsw i32 %114, 1
  %116 = mul nsw i32 %112, %115
  %117 = load i32, i32* %12, align 4
  %118 = mul nsw i32 %116, %117
  %119 = ashr i32 %118, 1
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %92
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %125, %92
  %129 = load i32, i32* %12, align 4
  %130 = load i32**, i32*** @Mx, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %130, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %129, %139
  %141 = add nsw i32 %140, 8192
  %142 = ashr i32 %141, 14
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 5
  br i1 %144, label %145, label %146

145:                                              ; preds = %128
  store i32 5, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %128
  br label %28

147:                                              ; preds = %28
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %14, align 4
  ret i32 %154
}

declare dso_local i32 @isdn_audio_put_bits(i32, i32, %struct.TYPE_4__*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
