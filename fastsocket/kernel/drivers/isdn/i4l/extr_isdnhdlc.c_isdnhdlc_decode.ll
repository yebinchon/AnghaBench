; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdnhdlc.c_isdnhdlc_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdnhdlc.c_isdnhdlc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isdnhdlc_vars = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@isdnhdlc_decode.fast_flag = internal constant [9 x i8] c"\00\00\00 08<>?", align 1
@isdnhdlc_decode.fast_flag_value = internal constant [9 x i8] c"\00~\FC\F9\F3\E7\CF\9F?", align 1
@isdnhdlc_decode.fast_abort = internal constant [10 x i8] c"\00\00\80\C0\E0\F0\F8\FC\FE\FF", align 1
@HDLC_FRAMING_ERROR = common dso_local global i32 0, align 4
@HDLC_LENGTH_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdnhdlc_decode(%struct.isdnhdlc_vars* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.isdnhdlc_vars*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.isdnhdlc_vars* %0, %struct.isdnhdlc_vars** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %465, %6
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %466

20:                                               ; preds = %17
  %21 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %22 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %27 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i32 @bitrev8(i32 %33)
  %35 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %36 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %42 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %47 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %46, i32 0, i32 0
  store i32 8, i32* %47, align 8
  %48 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %49 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %48, i32 0, i32 12
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %54 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %43
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %60 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %464 [
    i32 128, label %62
    i32 133, label %63
    i32 129, label %78
    i32 132, label %118
    i32 131, label %149
    i32 130, label %180
    i32 134, label %395
  ]

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %471

63:                                               ; preds = %58
  %64 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %65 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %70 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %465

71:                                               ; preds = %63
  %72 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %73 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %72, i32 0, i32 3
  store i32 129, i32* %73, align 4
  %74 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %75 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %74, i32 0, i32 4
  store i32 0, i32* %75, align 8
  %76 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %77 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %76, i32 0, i32 0
  store i32 8, i32* %77, align 8
  br label %465

78:                                               ; preds = %58
  %79 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %80 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 128
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %86 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %85, i32 0, i32 3
  store i32 132, i32* %86, align 4
  %87 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %88 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %87, i32 0, i32 4
  store i32 0, i32* %88, align 8
  br label %109

89:                                               ; preds = %78
  %90 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %91 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %90, i32 0, i32 12
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %89
  %95 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %96 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = icmp sge i32 %98, 8
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %102 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %107 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %106, i32 0, i32 3
  store i32 133, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %100, %94, %89
  br label %109

109:                                              ; preds = %108, %84
  %110 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %111 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %115 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 8
  br label %465

118:                                              ; preds = %58
  %119 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %120 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, 128
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %126 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %130 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 6
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %135 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %134, i32 0, i32 3
  store i32 131, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %124
  br label %140

137:                                              ; preds = %118
  %138 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %139 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %138, i32 0, i32 4
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %136
  %141 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %142 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %146 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  br label %465

149:                                              ; preds = %58
  %150 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %151 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, 128
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %157 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %156, i32 0, i32 3
  store i32 129, i32* %157, align 4
  br label %171

158:                                              ; preds = %149
  %159 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %160 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %159, i32 0, i32 3
  store i32 130, i32* %160, align 4
  %161 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %162 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %161, i32 0, i32 5
  store i32 65535, i32* %162, align 4
  %163 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %164 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %163, i32 0, i32 6
  store i32 0, i32* %164, align 8
  %165 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %166 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %165, i32 0, i32 4
  store i32 0, i32* %166, align 8
  %167 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %168 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %167, i32 0, i32 7
  store i32 0, i32* %168, align 4
  %169 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %170 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %169, i32 0, i32 8
  store i32 0, i32* %170, align 8
  br label %171

171:                                              ; preds = %158, %155
  %172 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %173 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = shl i32 %174, 1
  store i32 %175, i32* %173, align 8
  %176 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %177 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  br label %465

180:                                              ; preds = %58
  %181 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %182 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, 128
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %245

186:                                              ; preds = %180
  %187 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %188 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %192 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %231 [
    i32 6, label %194
    i32 7, label %195
  ]

194:                                              ; preds = %186
  br label %244

195:                                              ; preds = %186
  %196 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %197 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* @HDLC_FRAMING_ERROR, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %205 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %204, i32 0, i32 12
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %227, label %208

208:                                              ; preds = %203
  %209 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %210 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %213 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [10 x i8], [10 x i8]* @isdnhdlc_decode.fast_abort, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %211, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %208
  %222 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %223 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %222, i32 0, i32 3
  store i32 133, i32* %223, align 4
  %224 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %225 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %224, i32 0, i32 0
  store i32 1, i32* %225, align 8
  br label %244

226:                                              ; preds = %208
  br label %230

227:                                              ; preds = %203
  %228 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %229 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %228, i32 0, i32 3
  store i32 129, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %226
  br label %244

231:                                              ; preds = %186
  %232 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %233 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = ashr i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %237 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, 128
  store i32 %239, i32* %237, align 8
  %240 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %241 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %231, %230, %221, %194
  br label %326

245:                                              ; preds = %180
  %246 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %247 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  switch i32 %248, label %314 [
    i32 5, label %249
    i32 6, label %250
  ]

249:                                              ; preds = %245
  br label %323

250:                                              ; preds = %245
  %251 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %252 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %257 = call i32 @check_frame(%struct.isdnhdlc_vars* %256)
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %255, %250
  %259 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %260 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %259, i32 0, i32 5
  store i32 65535, i32* %260, align 4
  %261 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %262 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %261, i32 0, i32 6
  store i32 0, i32* %262, align 8
  %263 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %264 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %263, i32 0, i32 7
  store i32 0, i32* %264, align 4
  %265 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %266 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %265, i32 0, i32 12
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %308, label %269

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %272 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %275 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [9 x i8], [9 x i8]* @isdnhdlc_decode.fast_flag, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = icmp eq i32 %273, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %270
  %283 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %284 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [9 x i8], [9 x i8]* @isdnhdlc_decode.fast_flag_value, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %291 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %290, i32 0, i32 10
  store i32 %289, i32* %291, align 8
  %292 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %293 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %292, i32 0, i32 3
  store i32 134, i32* %293, align 4
  %294 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %295 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %298 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %297, i32 0, i32 11
  store i32 %296, i32* %298, align 4
  %299 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %300 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  br label %306

301:                                              ; preds = %270
  %302 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %303 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %302, i32 0, i32 3
  store i32 130, i32* %303, align 4
  %304 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %305 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %304, i32 0, i32 8
  store i32 0, i32* %305, align 8
  br label %306

306:                                              ; preds = %301, %282
  br label %307

307:                                              ; preds = %306
  br label %313

308:                                              ; preds = %258
  %309 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %310 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %309, i32 0, i32 3
  store i32 130, i32* %310, align 4
  %311 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %312 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %311, i32 0, i32 8
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %308, %307
  br label %323

314:                                              ; preds = %245
  %315 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %316 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  %318 = ashr i32 %317, 1
  store i32 %318, i32* %316, align 8
  %319 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %320 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %314, %313, %249
  %324 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %325 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %324, i32 0, i32 4
  store i32 0, i32* %325, align 8
  br label %326

326:                                              ; preds = %323, %244
  %327 = load i32, i32* %14, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %345

329:                                              ; preds = %326
  %330 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %331 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %330, i32 0, i32 9
  store i32 0, i32* %331, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i32*, i32** %11, align 8
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 %334, %332
  store i32 %335, i32* %333, align 4
  %336 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %337 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = shl i32 %338, 1
  store i32 %339, i32* %337, align 8
  %340 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %341 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %341, align 8
  %344 = load i32, i32* %14, align 4
  store i32 %344, i32* %7, align 4
  br label %471

345:                                              ; preds = %326
  %346 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %347 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 8
  br i1 %349, label %350, label %386

350:                                              ; preds = %345
  %351 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %352 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %351, i32 0, i32 7
  store i32 0, i32* %352, align 4
  %353 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %354 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %353, i32 0, i32 8
  store i32 1, i32* %354, align 8
  %355 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %356 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %359 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @crc_ccitt_byte(i32 %357, i32 %360)
  %362 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %363 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 4
  %364 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %365 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %364, i32 0, i32 9
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %13, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %350
  %370 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %371 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  %373 = load i32*, i32** %12, align 8
  %374 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %375 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %374, i32 0, i32 9
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %375, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %373, i64 %378
  store i32 %372, i32* %379, align 4
  br label %385

380:                                              ; preds = %350
  %381 = load i32, i32* @HDLC_LENGTH_ERROR, align 4
  %382 = sub nsw i32 0, %381
  store i32 %382, i32* %14, align 4
  %383 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %384 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %383, i32 0, i32 9
  store i32 0, i32* %384, align 4
  br label %385

385:                                              ; preds = %380, %369
  br label %386

386:                                              ; preds = %385, %345
  %387 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %388 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = shl i32 %389, 1
  store i32 %390, i32* %388, align 8
  %391 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %392 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %392, align 8
  br label %465

395:                                              ; preds = %58
  %396 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %397 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %400 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %399, i32 0, i32 10
  %401 = load i32, i32* %400, align 8
  %402 = icmp eq i32 %398, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %395
  %404 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %405 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %404, i32 0, i32 0
  store i32 0, i32* %405, align 8
  br label %465

406:                                              ; preds = %395
  %407 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %408 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = icmp eq i32 %409, 255
  br i1 %410, label %411, label %416

411:                                              ; preds = %406
  %412 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %413 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %412, i32 0, i32 3
  store i32 133, i32* %413, align 4
  %414 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %415 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %414, i32 0, i32 0
  store i32 0, i32* %415, align 8
  br label %462

416:                                              ; preds = %406
  %417 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %418 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %417, i32 0, i32 11
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 8
  br i1 %420, label %421, label %424

421:                                              ; preds = %416
  %422 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %423 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %422, i32 0, i32 3
  store i32 131, i32* %423, align 4
  br label %465

424:                                              ; preds = %416
  br label %425

425:                                              ; preds = %424
  %426 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %427 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %426, i32 0, i32 11
  %428 = load i32, i32* %427, align 4
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [10 x i8], [10 x i8]* @isdnhdlc_decode.fast_abort, i64 0, i64 %430
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  %434 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %435 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %434, i32 0, i32 6
  store i32 %433, i32* %435, align 8
  %436 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %437 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %436, i32 0, i32 11
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %438, 2
  %440 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %441 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %440, i32 0, i32 4
  store i32 %439, i32* %441, align 8
  %442 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %443 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %425
  %447 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %448 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %447, i32 0, i32 4
  store i32 0, i32* %448, align 8
  br label %449

449:                                              ; preds = %446, %425
  %450 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %451 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %450, i32 0, i32 11
  %452 = load i32, i32* %451, align 4
  %453 = sub nsw i32 %452, 1
  %454 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %455 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %454, i32 0, i32 7
  store i32 %453, i32* %455, align 4
  %456 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %457 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %456, i32 0, i32 3
  store i32 130, i32* %457, align 4
  %458 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %459 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %458, i32 0, i32 8
  store i32 0, i32* %459, align 8
  br label %460

460:                                              ; preds = %449
  br label %461

461:                                              ; preds = %460
  br label %462

462:                                              ; preds = %461, %411
  br label %463

463:                                              ; preds = %462
  br label %465

464:                                              ; preds = %58
  br label %465

465:                                              ; preds = %464, %463, %421, %403, %386, %171, %140, %109, %71, %68
  br label %17

466:                                              ; preds = %17
  %467 = load i32, i32* %10, align 4
  %468 = load i32*, i32** %11, align 8
  %469 = load i32, i32* %468, align 4
  %470 = sub nsw i32 %469, %467
  store i32 %470, i32* %468, align 4
  store i32 0, i32* %7, align 4
  br label %471

471:                                              ; preds = %466, %329, %62
  %472 = load i32, i32* %7, align 4
  ret i32 %472
}

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @check_frame(%struct.isdnhdlc_vars*) #1

declare dso_local i32 @crc_ccitt_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
