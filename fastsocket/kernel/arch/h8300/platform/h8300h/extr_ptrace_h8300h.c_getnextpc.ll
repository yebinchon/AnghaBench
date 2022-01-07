; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_getnextpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_ptrace_h8300h.c_getnextpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.optable* }
%struct.optable = type { i8, i8, i64, i32 }
%struct.task_struct = type { i32 }

@optables = common dso_local global %struct.TYPE_2__* null, align 8
@PT_USP = common dso_local global i32 0, align 4
@PT_ER0 = common dso_local global i32 0, align 4
@PT_ER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.task_struct*, i16*)* @getnextpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @getnextpc(%struct.task_struct* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.optable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i16* %1, i16** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.optable*, %struct.optable** %15, align 8
  store %struct.optable* %16, %struct.optable** %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i16*, i16** %5, align 8
  %22 = bitcast i16* %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %8, align 1
  br label %26

26:                                               ; preds = %179, %2
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.optable*, %struct.optable** %6, align 8
  %30 = getelementptr inbounds %struct.optable, %struct.optable* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = and i32 %28, %32
  %34 = load %struct.optable*, %struct.optable** %6, align 8
  %35 = getelementptr inbounds %struct.optable, %struct.optable* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %175

39:                                               ; preds = %26
  %40 = load %struct.optable*, %struct.optable** %6, align 8
  %41 = getelementptr inbounds %struct.optable, %struct.optable* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %46 = load %struct.optable*, %struct.optable** %6, align 8
  %47 = getelementptr inbounds %struct.optable, %struct.optable* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.optable*, %struct.optable** %51, align 8
  store %struct.optable* %52, %struct.optable** %6, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %54 = load %struct.optable*, %struct.optable** %6, align 8
  %55 = getelementptr inbounds %struct.optable, %struct.optable* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  %64 = load i8, i8* %62, align 1
  store i8 %64, i8* %8, align 1
  br label %174

65:                                               ; preds = %39
  %66 = load %struct.optable*, %struct.optable** %6, align 8
  %67 = getelementptr inbounds %struct.optable, %struct.optable* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %173 [
    i32 132, label %69
    i32 133, label %75
    i32 134, label %82
    i32 128, label %92
    i32 131, label %102
    i32 130, label %124
    i32 129, label %147
  ]

69:                                               ; preds = %65
  %70 = load i16*, i16** %5, align 8
  %71 = load %struct.optable*, %struct.optable** %6, align 8
  %72 = getelementptr inbounds %struct.optable, %struct.optable* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i16, i16* %70, i64 %73
  store i16* %74, i16** %3, align 8
  br label %184

75:                                               ; preds = %65
  %76 = load i16*, i16** %5, align 8
  %77 = bitcast i16* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = and i64 %79, 16777215
  %81 = inttoptr i64 %80 to i16*
  store i16* %81, i16** %3, align 8
  br label %184

82:                                               ; preds = %65
  %83 = load i16*, i16** %5, align 8
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 255
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = inttoptr i64 %88 to i64*
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i16*
  store i16* %91, i16** %3, align 8
  br label %184

92:                                               ; preds = %65
  %93 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %94 = load i32, i32* @PT_USP, align 4
  %95 = call i64 @h8300_get_reg(%struct.task_struct* %93, i32 %94)
  %96 = inttoptr i64 %95 to i64*
  store i64* %96, i64** %10, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 16777215
  %101 = inttoptr i64 %100 to i16*
  store i16* %101, i16** %3, align 8
  br label %184

102:                                              ; preds = %65
  %103 = load i16*, i16** %5, align 8
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 7
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %112 = load i32, i32* @PT_ER0, align 4
  %113 = call i64 @h8300_get_reg(%struct.task_struct* %111, i32 %112)
  store i64 %113, i64* %9, align 8
  br label %121

114:                                              ; preds = %102
  %115 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @PT_ER1, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i64 @h8300_get_reg(%struct.task_struct* %115, i32 %119)
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %114, %110
  %122 = load i64, i64* %9, align 8
  %123 = inttoptr i64 %122 to i16*
  store i16* %123, i16** %3, align 8
  br label %184

124:                                              ; preds = %65
  %125 = load i8, i8* %8, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 85
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %130 = load i8, i8* %8, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 15
  %133 = trunc i32 %132 to i8
  %134 = call i32 @isbranch(%struct.task_struct* %129, i8 zeroext %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %128, %124
  %137 = load i16*, i16** %5, align 8
  %138 = ptrtoint i16* %137 to i64
  %139 = load i8*, i8** %7, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i64
  %142 = add i64 %138, %141
  %143 = inttoptr i64 %142 to i16*
  store i16* %143, i16** %5, align 8
  br label %144

144:                                              ; preds = %136, %128
  %145 = load i16*, i16** %5, align 8
  %146 = getelementptr inbounds i16, i16* %145, i64 1
  store i16* %146, i16** %3, align 8
  br label %184

147:                                              ; preds = %65
  %148 = load i8, i8* %8, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 92
  br i1 %150, label %161, label %151

151:                                              ; preds = %147
  %152 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 240
  %157 = ashr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = call i32 @isbranch(%struct.task_struct* %152, i8 zeroext %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %151, %147
  %162 = load i16*, i16** %5, align 8
  %163 = ptrtoint i16* %162 to i64
  %164 = load i16*, i16** %5, align 8
  %165 = getelementptr inbounds i16, i16* %164, i64 1
  %166 = load i16, i16* %165, align 2
  %167 = sext i16 %166 to i64
  %168 = add i64 %163, %167
  %169 = inttoptr i64 %168 to i16*
  store i16* %169, i16** %5, align 8
  br label %170

170:                                              ; preds = %161, %151
  %171 = load i16*, i16** %5, align 8
  %172 = getelementptr inbounds i16, i16* %171, i64 2
  store i16* %172, i16** %3, align 8
  br label %184

173:                                              ; preds = %65
  br label %174

174:                                              ; preds = %173, %44
  br label %178

175:                                              ; preds = %26
  %176 = load %struct.optable*, %struct.optable** %6, align 8
  %177 = getelementptr inbounds %struct.optable, %struct.optable* %176, i32 1
  store %struct.optable* %177, %struct.optable** %6, align 8
  br label %178

178:                                              ; preds = %175, %174
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %11, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %26, label %183

183:                                              ; preds = %179
  store i16* null, i16** %3, align 8
  br label %184

184:                                              ; preds = %183, %170, %144, %121, %92, %82, %75, %69
  %185 = load i16*, i16** %3, align 8
  ret i16* %185
}

declare dso_local i64 @h8300_get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @isbranch(%struct.task_struct*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
