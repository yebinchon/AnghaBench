; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_setfpreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_setfpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_fpreg = type { i32 }
%struct.kvm_pt_regs = type { i32 }

@IA64_FIRST_ROTATING_FR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setfpreg(i64 %0, %struct.ia64_fpreg* %1, %struct.kvm_pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ia64_fpreg*, align 8
  %6 = alloca %struct.kvm_pt_regs*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.ia64_fpreg* %1, %struct.ia64_fpreg** %5, align 8
  store %struct.kvm_pt_regs* %2, %struct.kvm_pt_regs** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @IA64_FIRST_ROTATING_FR, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i64, i64* @IA64_FIRST_ROTATING_FR, align 8
  %12 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @fph_index(%struct.kvm_pt_regs* %12, i64 %13)
  %15 = add i64 %11, %14
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %10, %3
  %17 = load i64, i64* %4, align 8
  switch i64 %17, label %396 [
    i64 2, label %18
    i64 3, label %21
    i64 4, label %24
    i64 5, label %27
    i64 6, label %30
    i64 7, label %33
    i64 8, label %36
    i64 9, label %39
    i64 10, label %42
    i64 11, label %45
    i64 12, label %48
    i64 13, label %51
    i64 14, label %54
    i64 15, label %57
    i64 16, label %60
    i64 17, label %63
    i64 18, label %66
    i64 19, label %69
    i64 20, label %72
    i64 21, label %75
    i64 22, label %78
    i64 23, label %81
    i64 24, label %84
    i64 25, label %87
    i64 26, label %90
    i64 27, label %93
    i64 28, label %96
    i64 29, label %99
    i64 30, label %102
    i64 31, label %105
    i64 32, label %108
    i64 33, label %111
    i64 34, label %114
    i64 35, label %117
    i64 36, label %120
    i64 37, label %123
    i64 38, label %126
    i64 39, label %129
    i64 40, label %132
    i64 41, label %135
    i64 42, label %138
    i64 43, label %141
    i64 44, label %144
    i64 45, label %147
    i64 46, label %150
    i64 47, label %153
    i64 48, label %156
    i64 49, label %159
    i64 50, label %162
    i64 51, label %165
    i64 52, label %168
    i64 53, label %171
    i64 54, label %174
    i64 55, label %177
    i64 56, label %180
    i64 57, label %183
    i64 58, label %186
    i64 59, label %189
    i64 60, label %192
    i64 61, label %195
    i64 62, label %198
    i64 63, label %201
    i64 64, label %204
    i64 65, label %207
    i64 66, label %210
    i64 67, label %213
    i64 68, label %216
    i64 69, label %219
    i64 70, label %222
    i64 71, label %225
    i64 72, label %228
    i64 73, label %231
    i64 74, label %234
    i64 75, label %237
    i64 76, label %240
    i64 77, label %243
    i64 78, label %246
    i64 79, label %249
    i64 80, label %252
    i64 81, label %255
    i64 82, label %258
    i64 83, label %261
    i64 84, label %264
    i64 85, label %267
    i64 86, label %270
    i64 87, label %273
    i64 88, label %276
    i64 89, label %279
    i64 90, label %282
    i64 91, label %285
    i64 92, label %288
    i64 93, label %291
    i64 94, label %294
    i64 95, label %297
    i64 96, label %300
    i64 97, label %303
    i64 98, label %306
    i64 99, label %309
    i64 100, label %312
    i64 101, label %315
    i64 102, label %318
    i64 103, label %321
    i64 104, label %324
    i64 105, label %327
    i64 106, label %330
    i64 107, label %333
    i64 108, label %336
    i64 109, label %339
    i64 110, label %342
    i64 111, label %345
    i64 112, label %348
    i64 113, label %351
    i64 114, label %354
    i64 115, label %357
    i64 116, label %360
    i64 117, label %363
    i64 118, label %366
    i64 119, label %369
    i64 120, label %372
    i64 121, label %375
    i64 122, label %378
    i64 123, label %381
    i64 124, label %384
    i64 125, label %387
    i64 126, label %390
    i64 127, label %393
  ]

18:                                               ; preds = %16
  %19 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %20 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 2, %struct.ia64_fpreg* %19)
  br label %396

21:                                               ; preds = %16
  %22 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %23 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 3, %struct.ia64_fpreg* %22)
  br label %396

24:                                               ; preds = %16
  %25 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %26 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 4, %struct.ia64_fpreg* %25)
  br label %396

27:                                               ; preds = %16
  %28 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %29 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 5, %struct.ia64_fpreg* %28)
  br label %396

30:                                               ; preds = %16
  %31 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %32 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 6, %struct.ia64_fpreg* %31)
  br label %396

33:                                               ; preds = %16
  %34 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %35 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 7, %struct.ia64_fpreg* %34)
  br label %396

36:                                               ; preds = %16
  %37 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %38 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 8, %struct.ia64_fpreg* %37)
  br label %396

39:                                               ; preds = %16
  %40 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %41 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 9, %struct.ia64_fpreg* %40)
  br label %396

42:                                               ; preds = %16
  %43 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %44 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 10, %struct.ia64_fpreg* %43)
  br label %396

45:                                               ; preds = %16
  %46 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %47 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 11, %struct.ia64_fpreg* %46)
  br label %396

48:                                               ; preds = %16
  %49 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %50 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 12, %struct.ia64_fpreg* %49)
  br label %396

51:                                               ; preds = %16
  %52 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %53 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 13, %struct.ia64_fpreg* %52)
  br label %396

54:                                               ; preds = %16
  %55 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %56 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 14, %struct.ia64_fpreg* %55)
  br label %396

57:                                               ; preds = %16
  %58 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %59 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 15, %struct.ia64_fpreg* %58)
  br label %396

60:                                               ; preds = %16
  %61 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %62 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 16, %struct.ia64_fpreg* %61)
  br label %396

63:                                               ; preds = %16
  %64 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %65 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 17, %struct.ia64_fpreg* %64)
  br label %396

66:                                               ; preds = %16
  %67 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %68 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 18, %struct.ia64_fpreg* %67)
  br label %396

69:                                               ; preds = %16
  %70 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %71 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 19, %struct.ia64_fpreg* %70)
  br label %396

72:                                               ; preds = %16
  %73 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %74 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 20, %struct.ia64_fpreg* %73)
  br label %396

75:                                               ; preds = %16
  %76 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %77 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 21, %struct.ia64_fpreg* %76)
  br label %396

78:                                               ; preds = %16
  %79 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %80 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 22, %struct.ia64_fpreg* %79)
  br label %396

81:                                               ; preds = %16
  %82 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %83 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 23, %struct.ia64_fpreg* %82)
  br label %396

84:                                               ; preds = %16
  %85 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %86 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 24, %struct.ia64_fpreg* %85)
  br label %396

87:                                               ; preds = %16
  %88 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %89 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 25, %struct.ia64_fpreg* %88)
  br label %396

90:                                               ; preds = %16
  %91 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %92 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 26, %struct.ia64_fpreg* %91)
  br label %396

93:                                               ; preds = %16
  %94 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %95 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 27, %struct.ia64_fpreg* %94)
  br label %396

96:                                               ; preds = %16
  %97 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %98 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 28, %struct.ia64_fpreg* %97)
  br label %396

99:                                               ; preds = %16
  %100 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %101 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 29, %struct.ia64_fpreg* %100)
  br label %396

102:                                              ; preds = %16
  %103 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %104 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 30, %struct.ia64_fpreg* %103)
  br label %396

105:                                              ; preds = %16
  %106 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %107 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 31, %struct.ia64_fpreg* %106)
  br label %396

108:                                              ; preds = %16
  %109 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %110 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 32, %struct.ia64_fpreg* %109)
  br label %396

111:                                              ; preds = %16
  %112 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %113 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 33, %struct.ia64_fpreg* %112)
  br label %396

114:                                              ; preds = %16
  %115 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %116 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 34, %struct.ia64_fpreg* %115)
  br label %396

117:                                              ; preds = %16
  %118 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %119 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 35, %struct.ia64_fpreg* %118)
  br label %396

120:                                              ; preds = %16
  %121 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %122 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 36, %struct.ia64_fpreg* %121)
  br label %396

123:                                              ; preds = %16
  %124 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %125 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 37, %struct.ia64_fpreg* %124)
  br label %396

126:                                              ; preds = %16
  %127 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %128 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 38, %struct.ia64_fpreg* %127)
  br label %396

129:                                              ; preds = %16
  %130 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %131 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 39, %struct.ia64_fpreg* %130)
  br label %396

132:                                              ; preds = %16
  %133 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %134 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 40, %struct.ia64_fpreg* %133)
  br label %396

135:                                              ; preds = %16
  %136 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %137 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 41, %struct.ia64_fpreg* %136)
  br label %396

138:                                              ; preds = %16
  %139 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %140 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 42, %struct.ia64_fpreg* %139)
  br label %396

141:                                              ; preds = %16
  %142 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %143 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 43, %struct.ia64_fpreg* %142)
  br label %396

144:                                              ; preds = %16
  %145 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %146 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 44, %struct.ia64_fpreg* %145)
  br label %396

147:                                              ; preds = %16
  %148 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %149 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 45, %struct.ia64_fpreg* %148)
  br label %396

150:                                              ; preds = %16
  %151 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %152 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 46, %struct.ia64_fpreg* %151)
  br label %396

153:                                              ; preds = %16
  %154 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %155 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 47, %struct.ia64_fpreg* %154)
  br label %396

156:                                              ; preds = %16
  %157 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %158 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 48, %struct.ia64_fpreg* %157)
  br label %396

159:                                              ; preds = %16
  %160 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %161 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 49, %struct.ia64_fpreg* %160)
  br label %396

162:                                              ; preds = %16
  %163 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %164 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 50, %struct.ia64_fpreg* %163)
  br label %396

165:                                              ; preds = %16
  %166 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %167 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 51, %struct.ia64_fpreg* %166)
  br label %396

168:                                              ; preds = %16
  %169 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %170 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 52, %struct.ia64_fpreg* %169)
  br label %396

171:                                              ; preds = %16
  %172 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %173 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 53, %struct.ia64_fpreg* %172)
  br label %396

174:                                              ; preds = %16
  %175 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %176 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 54, %struct.ia64_fpreg* %175)
  br label %396

177:                                              ; preds = %16
  %178 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %179 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 55, %struct.ia64_fpreg* %178)
  br label %396

180:                                              ; preds = %16
  %181 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %182 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 56, %struct.ia64_fpreg* %181)
  br label %396

183:                                              ; preds = %16
  %184 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %185 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 57, %struct.ia64_fpreg* %184)
  br label %396

186:                                              ; preds = %16
  %187 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %188 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 58, %struct.ia64_fpreg* %187)
  br label %396

189:                                              ; preds = %16
  %190 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %191 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 59, %struct.ia64_fpreg* %190)
  br label %396

192:                                              ; preds = %16
  %193 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %194 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 60, %struct.ia64_fpreg* %193)
  br label %396

195:                                              ; preds = %16
  %196 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %197 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 61, %struct.ia64_fpreg* %196)
  br label %396

198:                                              ; preds = %16
  %199 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %200 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 62, %struct.ia64_fpreg* %199)
  br label %396

201:                                              ; preds = %16
  %202 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %203 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 63, %struct.ia64_fpreg* %202)
  br label %396

204:                                              ; preds = %16
  %205 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %206 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 64, %struct.ia64_fpreg* %205)
  br label %396

207:                                              ; preds = %16
  %208 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %209 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 65, %struct.ia64_fpreg* %208)
  br label %396

210:                                              ; preds = %16
  %211 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %212 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 66, %struct.ia64_fpreg* %211)
  br label %396

213:                                              ; preds = %16
  %214 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %215 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 67, %struct.ia64_fpreg* %214)
  br label %396

216:                                              ; preds = %16
  %217 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %218 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 68, %struct.ia64_fpreg* %217)
  br label %396

219:                                              ; preds = %16
  %220 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %221 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 69, %struct.ia64_fpreg* %220)
  br label %396

222:                                              ; preds = %16
  %223 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %224 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 70, %struct.ia64_fpreg* %223)
  br label %396

225:                                              ; preds = %16
  %226 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %227 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 71, %struct.ia64_fpreg* %226)
  br label %396

228:                                              ; preds = %16
  %229 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %230 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 72, %struct.ia64_fpreg* %229)
  br label %396

231:                                              ; preds = %16
  %232 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %233 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 73, %struct.ia64_fpreg* %232)
  br label %396

234:                                              ; preds = %16
  %235 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %236 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 74, %struct.ia64_fpreg* %235)
  br label %396

237:                                              ; preds = %16
  %238 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %239 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 75, %struct.ia64_fpreg* %238)
  br label %396

240:                                              ; preds = %16
  %241 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %242 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 76, %struct.ia64_fpreg* %241)
  br label %396

243:                                              ; preds = %16
  %244 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %245 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 77, %struct.ia64_fpreg* %244)
  br label %396

246:                                              ; preds = %16
  %247 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %248 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 78, %struct.ia64_fpreg* %247)
  br label %396

249:                                              ; preds = %16
  %250 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %251 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 79, %struct.ia64_fpreg* %250)
  br label %396

252:                                              ; preds = %16
  %253 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %254 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 80, %struct.ia64_fpreg* %253)
  br label %396

255:                                              ; preds = %16
  %256 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %257 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 81, %struct.ia64_fpreg* %256)
  br label %396

258:                                              ; preds = %16
  %259 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %260 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 82, %struct.ia64_fpreg* %259)
  br label %396

261:                                              ; preds = %16
  %262 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %263 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 83, %struct.ia64_fpreg* %262)
  br label %396

264:                                              ; preds = %16
  %265 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %266 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 84, %struct.ia64_fpreg* %265)
  br label %396

267:                                              ; preds = %16
  %268 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %269 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 85, %struct.ia64_fpreg* %268)
  br label %396

270:                                              ; preds = %16
  %271 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %272 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 86, %struct.ia64_fpreg* %271)
  br label %396

273:                                              ; preds = %16
  %274 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %275 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 87, %struct.ia64_fpreg* %274)
  br label %396

276:                                              ; preds = %16
  %277 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %278 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 88, %struct.ia64_fpreg* %277)
  br label %396

279:                                              ; preds = %16
  %280 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %281 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 89, %struct.ia64_fpreg* %280)
  br label %396

282:                                              ; preds = %16
  %283 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %284 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 90, %struct.ia64_fpreg* %283)
  br label %396

285:                                              ; preds = %16
  %286 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %287 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 91, %struct.ia64_fpreg* %286)
  br label %396

288:                                              ; preds = %16
  %289 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %290 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 92, %struct.ia64_fpreg* %289)
  br label %396

291:                                              ; preds = %16
  %292 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %293 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 93, %struct.ia64_fpreg* %292)
  br label %396

294:                                              ; preds = %16
  %295 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %296 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 94, %struct.ia64_fpreg* %295)
  br label %396

297:                                              ; preds = %16
  %298 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %299 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 95, %struct.ia64_fpreg* %298)
  br label %396

300:                                              ; preds = %16
  %301 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %302 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 96, %struct.ia64_fpreg* %301)
  br label %396

303:                                              ; preds = %16
  %304 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %305 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 97, %struct.ia64_fpreg* %304)
  br label %396

306:                                              ; preds = %16
  %307 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %308 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 98, %struct.ia64_fpreg* %307)
  br label %396

309:                                              ; preds = %16
  %310 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %311 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 99, %struct.ia64_fpreg* %310)
  br label %396

312:                                              ; preds = %16
  %313 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %314 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 100, %struct.ia64_fpreg* %313)
  br label %396

315:                                              ; preds = %16
  %316 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %317 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 101, %struct.ia64_fpreg* %316)
  br label %396

318:                                              ; preds = %16
  %319 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %320 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 102, %struct.ia64_fpreg* %319)
  br label %396

321:                                              ; preds = %16
  %322 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %323 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 103, %struct.ia64_fpreg* %322)
  br label %396

324:                                              ; preds = %16
  %325 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %326 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 104, %struct.ia64_fpreg* %325)
  br label %396

327:                                              ; preds = %16
  %328 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %329 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 105, %struct.ia64_fpreg* %328)
  br label %396

330:                                              ; preds = %16
  %331 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %332 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 106, %struct.ia64_fpreg* %331)
  br label %396

333:                                              ; preds = %16
  %334 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %335 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 107, %struct.ia64_fpreg* %334)
  br label %396

336:                                              ; preds = %16
  %337 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %338 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 108, %struct.ia64_fpreg* %337)
  br label %396

339:                                              ; preds = %16
  %340 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %341 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 109, %struct.ia64_fpreg* %340)
  br label %396

342:                                              ; preds = %16
  %343 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %344 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 110, %struct.ia64_fpreg* %343)
  br label %396

345:                                              ; preds = %16
  %346 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %347 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 111, %struct.ia64_fpreg* %346)
  br label %396

348:                                              ; preds = %16
  %349 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %350 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 112, %struct.ia64_fpreg* %349)
  br label %396

351:                                              ; preds = %16
  %352 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %353 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 113, %struct.ia64_fpreg* %352)
  br label %396

354:                                              ; preds = %16
  %355 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %356 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 114, %struct.ia64_fpreg* %355)
  br label %396

357:                                              ; preds = %16
  %358 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %359 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 115, %struct.ia64_fpreg* %358)
  br label %396

360:                                              ; preds = %16
  %361 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %362 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 116, %struct.ia64_fpreg* %361)
  br label %396

363:                                              ; preds = %16
  %364 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %365 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 117, %struct.ia64_fpreg* %364)
  br label %396

366:                                              ; preds = %16
  %367 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %368 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 118, %struct.ia64_fpreg* %367)
  br label %396

369:                                              ; preds = %16
  %370 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %371 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 119, %struct.ia64_fpreg* %370)
  br label %396

372:                                              ; preds = %16
  %373 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %374 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 120, %struct.ia64_fpreg* %373)
  br label %396

375:                                              ; preds = %16
  %376 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %377 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 121, %struct.ia64_fpreg* %376)
  br label %396

378:                                              ; preds = %16
  %379 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %380 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 122, %struct.ia64_fpreg* %379)
  br label %396

381:                                              ; preds = %16
  %382 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %383 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 123, %struct.ia64_fpreg* %382)
  br label %396

384:                                              ; preds = %16
  %385 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %386 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 124, %struct.ia64_fpreg* %385)
  br label %396

387:                                              ; preds = %16
  %388 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %389 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 125, %struct.ia64_fpreg* %388)
  br label %396

390:                                              ; preds = %16
  %391 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %392 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 126, %struct.ia64_fpreg* %391)
  br label %396

393:                                              ; preds = %16
  %394 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %395 = call i32 (i32, %struct.ia64_fpreg*, ...) bitcast (i32 (...)* @ia64_ldf_fill to i32 (i32, %struct.ia64_fpreg*, ...)*)(i32 127, %struct.ia64_fpreg* %394)
  br label %396

396:                                              ; preds = %16, %393, %390, %387, %384, %381, %378, %375, %372, %369, %366, %363, %360, %357, %354, %351, %348, %345, %342, %339, %336, %333, %330, %327, %324, %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273, %270, %267, %264, %261, %258, %255, %252, %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %198, %195, %192, %189, %186, %183, %180, %177, %174, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18
  ret void
}

declare dso_local i64 @fph_index(%struct.kvm_pt_regs*, i64) #1

declare dso_local i32 @ia64_ldf_fill(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
