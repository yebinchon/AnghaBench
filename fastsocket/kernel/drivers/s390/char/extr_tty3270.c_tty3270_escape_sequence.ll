; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_escape_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_escape_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"\1B[?6c\00", align 1
@TAX_RESET = common dso_local global i32 0, align 4
@TAC_RESET = common dso_local global i32 0, align 4
@ESCAPE_NPAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0n\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i8)* @tty3270_escape_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_escape_sequence(%struct.tty3270* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [40 x i8], align 16
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %7 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 27
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %16 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %10
  br label %404

18:                                               ; preds = %2
  %19 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %114

23:                                               ; preds = %18
  %24 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %113 [
    i32 91, label %28
    i32 69, label %31
    i32 77, label %36
    i32 68, label %39
    i32 90, label %42
    i32 55, label %47
    i32 56, label %68
    i32 99, label %92
  ]

28:                                               ; preds = %23
  %29 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  br label %113

31:                                               ; preds = %23
  %32 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %33 = call i32 @tty3270_cr(%struct.tty3270* %32)
  %34 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %35 = call i32 @tty3270_lf(%struct.tty3270* %34)
  br label %113

36:                                               ; preds = %23
  %37 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %38 = call i32 @tty3270_ri(%struct.tty3270* %37)
  br label %113

39:                                               ; preds = %23
  %40 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %41 = call i32 @tty3270_lf(%struct.tty3270* %40)
  br label %113

42:                                               ; preds = %23
  %43 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %44 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kbd_puts_queue(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %113

47:                                               ; preds = %23
  %48 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %49 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %52 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %54 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %57 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %59 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %62 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %64 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %67 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  br label %113

68:                                               ; preds = %23
  %69 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %70 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %71 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @tty3270_convert_line(%struct.tty3270* %69, i32 %72)
  %74 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %75 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %76 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %79 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @tty3270_goto_xy(%struct.tty3270* %74, i32 %77, i32 %80)
  %82 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %83 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %86 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %88 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %91 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  br label %113

92:                                               ; preds = %23
  %93 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %94 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %96 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %98 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %97, i32 0, i32 3
  store i32 0, i32* %98, align 4
  %99 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %100 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* @TAX_RESET, align 4
  %102 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %103 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %105 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %104, i32 0, i32 11
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @TAC_RESET, align 4
  %107 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %108 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %110 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %109, i32 0, i32 9
  store i32 %106, i32* %110, align 4
  %111 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %112 = call i32 @tty3270_erase_display(%struct.tty3270* %111, i32 2)
  br label %113

113:                                              ; preds = %23, %92, %68, %47, %42, %39, %36, %31, %28
  br label %404

114:                                              ; preds = %18
  %115 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %116 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %121 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %120, i32 0, i32 0
  store i32 3, i32* %121, align 8
  %122 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %123 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @memset(i32* %124, i32 0, i32 8)
  %126 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %127 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %126, i32 0, i32 6
  store i32 0, i32* %127, align 8
  %128 = load i8, i8* %4, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 63
  %131 = zext i1 %130 to i32
  %132 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %133 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %135 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %119
  br label %404

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %139, %114
  %141 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %142 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %194

145:                                              ; preds = %140
  %146 = load i8, i8* %4, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 59
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %151 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ESCAPE_NPAR, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %158 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %404

161:                                              ; preds = %149, %145
  %162 = load i8, i8* %4, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sge i32 %163, 48
  br i1 %164, label %165, label %193

165:                                              ; preds = %161
  %166 = load i8, i8* %4, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sle i32 %167, 57
  br i1 %168, label %169, label %193

169:                                              ; preds = %165
  %170 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %171 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %170, i32 0, i32 5
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %174 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 10
  store i32 %179, i32* %177, align 4
  %180 = load i8, i8* %4, align 1
  %181 = sext i8 %180 to i32
  %182 = sub nsw i32 %181, 48
  %183 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %184 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %187 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %182
  store i32 %192, i32* %190, align 4
  br label %404

193:                                              ; preds = %165, %161
  br label %194

194:                                              ; preds = %193, %140
  %195 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %196 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  %197 = load i8, i8* %4, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 110
  br i1 %199, label %200, label %242

200:                                              ; preds = %194
  %201 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %202 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %242, label %205

205:                                              ; preds = %200
  %206 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %207 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 5
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %214 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %213, i32 0, i32 12
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @kbd_puts_queue(i32 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %241

217:                                              ; preds = %205
  %218 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %219 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 6
  br i1 %223, label %224, label %240

224:                                              ; preds = %217
  %225 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %226 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %227 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  %230 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %231 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  %234 = call i32 @sprintf(i8* %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %229, i32 %233)
  %235 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %236 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %239 = call i32 @kbd_puts_queue(i32 %237, i8* %238)
  br label %240

240:                                              ; preds = %224, %217
  br label %241

241:                                              ; preds = %240, %212
  br label %404

242:                                              ; preds = %200, %194
  %243 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %244 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  br label %404

248:                                              ; preds = %242
  %249 = load i8, i8* %4, align 1
  %250 = sext i8 %249 to i32
  switch i32 %250, label %404 [
    i32 109, label %251
    i32 72, label %254
    i32 102, label %254
    i32 100, label %263
    i32 65, label %272
    i32 70, label %272
    i32 66, label %284
    i32 101, label %284
    i32 69, label %284
    i32 67, label %296
    i32 97, label %296
    i32 68, label %308
    i32 71, label %320
    i32 96, label %320
    i32 88, label %328
    i32 74, label %333
    i32 75, label %341
    i32 80, label %349
    i32 64, label %354
    i32 115, label %359
    i32 117, label %380
  ]

251:                                              ; preds = %248
  %252 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %253 = call i32 @tty3270_set_attributes(%struct.tty3270* %252)
  br label %404

254:                                              ; preds = %248, %248
  %255 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %256 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %257 = call i32 @tty3270_getpar(%struct.tty3270* %256, i32 1)
  %258 = sub nsw i32 %257, 1
  %259 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %260 = call i32 @tty3270_getpar(%struct.tty3270* %259, i32 0)
  %261 = sub nsw i32 %260, 1
  %262 = call i32 @tty3270_goto_xy(%struct.tty3270* %255, i32 %258, i32 %261)
  br label %404

263:                                              ; preds = %248
  %264 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %265 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %266 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %269 = call i32 @tty3270_getpar(%struct.tty3270* %268, i32 0)
  %270 = sub nsw i32 %269, 1
  %271 = call i32 @tty3270_goto_xy(%struct.tty3270* %264, i32 %267, i32 %270)
  br label %404

272:                                              ; preds = %248, %248
  %273 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %274 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %275 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %278 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %281 = call i32 @tty3270_getpar(%struct.tty3270* %280, i32 0)
  %282 = sub nsw i32 %279, %281
  %283 = call i32 @tty3270_goto_xy(%struct.tty3270* %273, i32 %276, i32 %282)
  br label %404

284:                                              ; preds = %248, %248, %248
  %285 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %286 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %287 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %290 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %293 = call i32 @tty3270_getpar(%struct.tty3270* %292, i32 0)
  %294 = add nsw i32 %291, %293
  %295 = call i32 @tty3270_goto_xy(%struct.tty3270* %285, i32 %288, i32 %294)
  br label %404

296:                                              ; preds = %248, %248
  %297 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %298 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %299 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %302 = call i32 @tty3270_getpar(%struct.tty3270* %301, i32 0)
  %303 = add nsw i32 %300, %302
  %304 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %305 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @tty3270_goto_xy(%struct.tty3270* %297, i32 %303, i32 %306)
  br label %404

308:                                              ; preds = %248
  %309 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %310 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %311 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %314 = call i32 @tty3270_getpar(%struct.tty3270* %313, i32 0)
  %315 = sub nsw i32 %312, %314
  %316 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %317 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @tty3270_goto_xy(%struct.tty3270* %309, i32 %315, i32 %318)
  br label %404

320:                                              ; preds = %248, %248
  %321 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %322 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %323 = call i32 @tty3270_getpar(%struct.tty3270* %322, i32 0)
  %324 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %325 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @tty3270_goto_xy(%struct.tty3270* %321, i32 %323, i32 %326)
  br label %404

328:                                              ; preds = %248
  %329 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %330 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %331 = call i32 @tty3270_getpar(%struct.tty3270* %330, i32 0)
  %332 = call i32 @tty3270_erase_characters(%struct.tty3270* %329, i32 %331)
  br label %404

333:                                              ; preds = %248
  %334 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %335 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %336 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %335, i32 0, i32 5
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @tty3270_erase_display(%struct.tty3270* %334, i32 %339)
  br label %404

341:                                              ; preds = %248
  %342 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %343 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %344 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %343, i32 0, i32 5
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @tty3270_erase_line(%struct.tty3270* %342, i32 %347)
  br label %404

349:                                              ; preds = %248
  %350 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %351 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %352 = call i32 @tty3270_getpar(%struct.tty3270* %351, i32 0)
  %353 = call i32 @tty3270_delete_characters(%struct.tty3270* %350, i32 %352)
  br label %404

354:                                              ; preds = %248
  %355 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %356 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %357 = call i32 @tty3270_getpar(%struct.tty3270* %356, i32 0)
  %358 = call i32 @tty3270_insert_characters(%struct.tty3270* %355, i32 %357)
  br label %404

359:                                              ; preds = %248
  %360 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %361 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %364 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 4
  %365 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %366 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %369 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %368, i32 0, i32 3
  store i32 %367, i32* %369, align 4
  %370 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %371 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %370, i32 0, i32 11
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %374 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %373, i32 0, i32 10
  store i32 %372, i32* %374, align 8
  %375 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %376 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %375, i32 0, i32 9
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %379 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %378, i32 0, i32 8
  store i32 %377, i32* %379, align 8
  br label %404

380:                                              ; preds = %248
  %381 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %382 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %383 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @tty3270_convert_line(%struct.tty3270* %381, i32 %384)
  %386 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %387 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %388 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %391 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @tty3270_goto_xy(%struct.tty3270* %386, i32 %389, i32 %392)
  %394 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %395 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %394, i32 0, i32 10
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %398 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %397, i32 0, i32 11
  store i32 %396, i32* %398, align 4
  %399 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %400 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %403 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %402, i32 0, i32 9
  store i32 %401, i32* %403, align 4
  br label %404

404:                                              ; preds = %17, %113, %138, %156, %169, %241, %247, %248, %380, %359, %354, %349, %341, %333, %328, %320, %308, %296, %284, %272, %263, %254, %251
  ret void
}

declare dso_local i32 @tty3270_cr(%struct.tty3270*) #1

declare dso_local i32 @tty3270_lf(%struct.tty3270*) #1

declare dso_local i32 @tty3270_ri(%struct.tty3270*) #1

declare dso_local i32 @kbd_puts_queue(i32, i8*) #1

declare dso_local i32 @tty3270_convert_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_goto_xy(%struct.tty3270*, i32, i32) #1

declare dso_local i32 @tty3270_erase_display(%struct.tty3270*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @tty3270_set_attributes(%struct.tty3270*) #1

declare dso_local i32 @tty3270_getpar(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_erase_characters(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_erase_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_delete_characters(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_insert_characters(%struct.tty3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
