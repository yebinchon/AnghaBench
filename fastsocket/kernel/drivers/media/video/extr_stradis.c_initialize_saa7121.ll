; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_initialize_saa7121.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_initialize_saa7121.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@init7121pal = common dso_local global i32* null, align 8
@init7121ntsc = common dso_local global i32* null, align 8
@SAA7146_PSR = common dso_local global i32 0, align 4
@INIT7121LEN = common dso_local global i32 0, align 4
@NewCard = common dso_local global i64 0, align 8
@PALFirstActive = common dso_local global i32 0, align 4
@NTSCFirstActive = common dso_local global i32 0, align 4
@PALLastActive = common dso_local global i32 0, align 4
@NTSCLastActive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*, i32)* @initialize_saa7121 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_saa7121(%struct.saa7146* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.saa7146* %0, %struct.saa7146** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @init7121pal, align 8
  store i32* %11, i32** %7, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** @init7121ntsc, align 8
  store i32* %13, i32** %7, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* @SAA7146_PSR, align 4
  %16 = call i32 @saaread(i32 %15)
  %17 = and i32 %16, 8
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %221, %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @INIT7121LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %224

22:                                               ; preds = %18
  %23 = load i64, i64* @NewCard, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %139

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 58
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %35 = call i32 @I2CWrite(%struct.saa7146* %34, i32 136, i32 58, i32 19, i32 2)
  br label %138

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 107
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %46 = call i32 @I2CWrite(%struct.saa7146* %45, i32 136, i32 107, i32 32, i32 2)
  br label %137

47:                                               ; preds = %36
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 108
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 9, i32 245
  %61 = call i32 @I2CWrite(%struct.saa7146* %56, i32 136, i32 108, i32 %60, i32 2)
  br label %136

62:                                               ; preds = %47
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 109
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 32, i32 0
  %76 = call i32 @I2CWrite(%struct.saa7146* %71, i32 136, i32 109, i32 %75, i32 2)
  br label %135

77:                                               ; preds = %62
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 122
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @PALFirstActive, align 4
  %91 = sub nsw i32 %90, 1
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @NTSCFirstActive, align 4
  %94 = sub nsw i32 %93, 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i32 [ %91, %89 ], [ %94, %92 ]
  %97 = call i32 @I2CWrite(%struct.saa7146* %86, i32 136, i32 122, i32 %96, i32 2)
  br label %134

98:                                               ; preds = %77
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = mul nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 123
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @PALLastActive, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @NTSCLastActive, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 @I2CWrite(%struct.saa7146* %107, i32 136, i32 123, i32 %115, i32 2)
  br label %133

117:                                              ; preds = %98
  %118 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %5, align 4
  %127 = mul nsw i32 %126, 2
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @I2CWrite(%struct.saa7146* %118, i32 136, i32 %124, i32 %131, i32 2)
  br label %133

133:                                              ; preds = %117, %114
  br label %134

134:                                              ; preds = %133, %95
  br label %135

135:                                              ; preds = %134, %70
  br label %136

136:                                              ; preds = %135, %55
  br label %137

137:                                              ; preds = %136, %44
  br label %138

138:                                              ; preds = %137, %33
  br label %220

139:                                              ; preds = %22
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %5, align 4
  %142 = mul nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 107
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 %153, 2
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, 9
  %160 = call i32 @I2CWrite(%struct.saa7146* %151, i32 136, i32 107, i32 %159, i32 2)
  br label %219

161:                                              ; preds = %147, %139
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 122
  br i1 %168, label %169, label %182

169:                                              ; preds = %161
  %170 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @PALFirstActive, align 4
  %175 = sub nsw i32 %174, 1
  br label %179

176:                                              ; preds = %169
  %177 = load i32, i32* @NTSCFirstActive, align 4
  %178 = sub nsw i32 %177, 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i32 [ %175, %173 ], [ %178, %176 ]
  %181 = call i32 @I2CWrite(%struct.saa7146* %170, i32 136, i32 122, i32 %180, i32 2)
  br label %218

182:                                              ; preds = %161
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %5, align 4
  %185 = mul nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 123
  br i1 %189, label %190, label %201

190:                                              ; preds = %182
  %191 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @PALLastActive, align 4
  br label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @NTSCLastActive, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %200 = call i32 @I2CWrite(%struct.saa7146* %191, i32 136, i32 123, i32 %199, i32 2)
  br label %217

201:                                              ; preds = %182
  %202 = load %struct.saa7146*, %struct.saa7146** %3, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %5, align 4
  %205 = mul nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %5, align 4
  %211 = mul nsw i32 %210, 2
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @I2CWrite(%struct.saa7146* %202, i32 136, i32 %208, i32 %215, i32 2)
  br label %217

217:                                              ; preds = %201, %198
  br label %218

218:                                              ; preds = %217, %179
  br label %219

219:                                              ; preds = %218, %150
  br label %220

220:                                              ; preds = %219, %138
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %18

224:                                              ; preds = %18
  ret void
}

declare dso_local i32 @saaread(i32) #1

declare dso_local i32 @I2CWrite(%struct.saa7146*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
