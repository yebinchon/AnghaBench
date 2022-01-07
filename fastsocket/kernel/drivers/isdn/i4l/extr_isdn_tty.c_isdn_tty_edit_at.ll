; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_edit_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_edit_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i64 }

@REG_CR = common dso_local global i64 0, align 8
@REG_LF = common dso_local global i64 0, align 8
@REG_ECHO = common dso_local global i64 0, align 8
@BIT_ECHO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@REG_BS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_6__*)* @isdn_tty_edit_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_tty_edit_at(i8* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %242, %3
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %247

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %9, align 1
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i8, i8* %9, align 1
  %24 = sext i8 %23 to i32
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* @REG_CR, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %18
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* @REG_LF, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %35, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %33, %18
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* @REG_ECHO, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i32, i32* @BIT_ECHO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load i8, i8* %9, align 1
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %63, i8* %64, align 1
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = call i32 @isdn_tty_at_cout(i8* %66, %struct.TYPE_6__* %67)
  br label %69

69:                                               ; preds = %62, %44
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp uge i64 %72, 2
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = call i32 @isdn_tty_parse_at(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %80, %74, %69
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %242

86:                                               ; preds = %33
  %87 = load i8, i8* %9, align 1
  %88 = sext i8 %87 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* @REG_BS, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %88, %95
  br i1 %96, label %97, label %142

97:                                               ; preds = %86
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* @REG_BS, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp slt i32 %104, 128
  br i1 %105, label %106, label %142

106:                                              ; preds = %97
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ugt i64 %109, 2
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %141, label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i64, i64* @REG_ECHO, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = load i32, i32* @BIT_ECHO, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = call i32 @isdn_tty_at_cout(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %138)
  br label %140

140:                                              ; preds = %137, %126
  br label %141

141:                                              ; preds = %140, %111
  br label %242

142:                                              ; preds = %97, %86
  %143 = load i8, i8* %9, align 1
  %144 = call i64 @cmdchar(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %241

146:                                              ; preds = %142
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* @REG_ECHO, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i32, i32* @BIT_ECHO, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %146
  %158 = load i8, i8* %9, align 1
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %158, i8* %159, align 1
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %160, align 1
  %161 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = call i32 @isdn_tty_at_cout(i8* %161, %struct.TYPE_6__* %162)
  br label %164

164:                                              ; preds = %157, %146
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ult i64 %167, 255
  br i1 %168, label %169, label %240

169:                                              ; preds = %164
  %170 = load i8, i8* %9, align 1
  %171 = call signext i8 @my_toupper(i8 signext %170)
  store i8 %171, i8* %9, align 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  switch i64 %174, label %222 [
    i64 1, label %175
    i64 0, label %200
  ]

175:                                              ; preds = %169
  %176 = load i8, i8* %9, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 84
  br i1 %178, label %179, label %196

179:                                              ; preds = %175
  %180 = load i8, i8* %9, align 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 %180, i8* %187, align 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %192, align 8
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  store i8 0, i8* %195, align 1
  br label %239

196:                                              ; preds = %175
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %169, %199
  %201 = load i8, i8* %9, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 65
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load i8, i8* %9, align 1
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  store i8 %205, i8* %212, align 1
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = getelementptr inbounds i8, i8* %215, i64 %219
  store i8 0, i8* %220, align 1
  br label %221

221:                                              ; preds = %204, %200
  br label %239

222:                                              ; preds = %169
  %223 = load i8, i8* %9, align 1
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  store i8 %223, i8* %230, align 1
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %235, align 8
  %238 = getelementptr inbounds i8, i8* %233, i64 %237
  store i8 0, i8* %238, align 1
  br label %239

239:                                              ; preds = %222, %221, %179
  br label %240

240:                                              ; preds = %239, %164
  br label %241

241:                                              ; preds = %240, %142
  br label %242

242:                                              ; preds = %241, %141, %83
  %243 = load i8*, i8** %4, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %4, align 8
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %11, align 4
  br label %15

247:                                              ; preds = %15
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

declare dso_local i32 @isdn_tty_at_cout(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isdn_tty_parse_at(%struct.TYPE_6__*) #1

declare dso_local i64 @cmdchar(i8 signext) #1

declare dso_local signext i8 @my_toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
