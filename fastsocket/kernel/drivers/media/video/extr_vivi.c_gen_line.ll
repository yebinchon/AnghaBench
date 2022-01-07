; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_gen_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_gen_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivi_fh = type { i32 }

@TSTAMP_MAX_Y = common dso_local global i32 0, align 4
@TSTAMP_INPUT_X = common dso_local global i32 0, align 4
@TSTAMP_MIN_Y = common dso_local global i32 0, align 4
@rom8x16_bits = common dso_local global i32* null, align 8
@WHITE = common dso_local global i32 0, align 4
@BLACK = common dso_local global i32 0, align 4
@TSTAMP_MIN_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivi_fh*, i8*, i32, i32, i32, i32, i32, i8*)* @gen_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_line(%struct.vivi_fh* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.vivi_fh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vivi_fh* %0, %struct.vivi_fh** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %49, %8
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %32, %33
  %35 = mul nsw i32 %34, 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  %38 = sdiv i32 %35, %37
  %39 = srem i32 %38, 8
  store i32 %39, i32* %23, align 4
  %40 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %23, align 4
  %46 = call i32 @gen_twopix(%struct.vivi_fh* %40, i8* %44, i32 %45)
  %47 = load i32, i32* %20, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %20, align 4
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %17, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load i32, i32* @TSTAMP_MAX_Y, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %199

57:                                               ; preds = %52
  %58 = load i32, i32* @TSTAMP_INPUT_X, align 4
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = add nsw i32 %58, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %199

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @TSTAMP_MIN_Y, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @TSTAMP_MAX_Y, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load i32*, i32** @rom8x16_bits, align 8
  %75 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  %76 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 16
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @TSTAMP_MIN_Y, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %74, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* @TSTAMP_INPUT_X, align 4
  store i32 %86, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %87

87:                                               ; preds = %116, %73
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %88, 7
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %18, align 4
  %93 = sub nsw i32 7, %92
  %94 = shl i32 1, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* @WHITE, align 4
  %104 = call i32 @gen_twopix(%struct.vivi_fh* %98, i8* %102, i32 %103)
  br label %113

105:                                              ; preds = %90
  %106 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* @BLACK, align 4
  %112 = call i32 @gen_twopix(%struct.vivi_fh* %106, i8* %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %97
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %87

119:                                              ; preds = %87
  br label %120

120:                                              ; preds = %119, %69, %65
  %121 = load i32, i32* @TSTAMP_MIN_X, align 4
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = add nsw i32 %121, %123
  %125 = load i32, i32* %12, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %199

128:                                              ; preds = %120
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @TSTAMP_MIN_Y, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %198

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @TSTAMP_MAX_Y, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %198

136:                                              ; preds = %132
  %137 = load i32, i32* @TSTAMP_MIN_X, align 4
  store i32 %137, i32* %19, align 4
  %138 = load i8*, i8** %16, align 8
  store i8* %138, i8** %21, align 8
  br label %139

139:                                              ; preds = %194, %136
  %140 = load i8*, i8** %21, align 8
  %141 = load i8, i8* %140, align 1
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %143, label %197

143:                                              ; preds = %139
  %144 = load i32*, i32** @rom8x16_bits, align 8
  %145 = load i8*, i8** %21, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = sub nsw i32 %147, 48
  %149 = mul nsw i32 %148, 16
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* @TSTAMP_MIN_Y, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %144, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %22, align 4
  store i32 0, i32* %18, align 4
  br label %157

157:                                              ; preds = %190, %143
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %158, 7
  br i1 %159, label %160, label %193

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %19, align 4
  %163 = mul nsw i32 %162, 2
  %164 = add nsw i32 %161, %163
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %18, align 4
  %167 = sub nsw i32 7, %166
  %168 = shl i32 1, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %160
  %172 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = load i32, i32* %20, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i32, i32* @WHITE, align 4
  %178 = call i32 @gen_twopix(%struct.vivi_fh* %172, i8* %176, i32 %177)
  br label %187

179:                                              ; preds = %160
  %180 = load %struct.vivi_fh*, %struct.vivi_fh** %9, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i32, i32* @BLACK, align 4
  %186 = call i32 @gen_twopix(%struct.vivi_fh* %180, i8* %184, i32 %185)
  br label %187

187:                                              ; preds = %179, %171
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %19, align 4
  br label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %18, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %18, align 4
  br label %157

193:                                              ; preds = %157
  br label %194

194:                                              ; preds = %193
  %195 = load i8*, i8** %21, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %21, align 8
  br label %139

197:                                              ; preds = %139
  br label %198

198:                                              ; preds = %197, %132, %128
  br label %199

199:                                              ; preds = %198, %127, %64, %56
  ret void
}

declare dso_local i32 @gen_twopix(%struct.vivi_fh*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
