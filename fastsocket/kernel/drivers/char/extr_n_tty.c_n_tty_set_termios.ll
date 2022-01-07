; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ktermios = type { i32 }

@ICANON = common dso_local global i32 0, align 4
@TTY_HW_COOK_IN = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @n_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = icmp ne %struct.tty_struct* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %12 = icmp ne %struct.ktermios* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %16, %21
  %23 = load i32, i32* @ICANON, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %13, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 13
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 9
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %46 = call i64 @L_ICANON(%struct.tty_struct* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 3
  %56 = call i32 @wake_up_interruptible(i32* %55)
  br label %57

57:                                               ; preds = %53, %48, %44, %41
  %58 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %59 = call i64 @L_ICANON(%struct.tty_struct* %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @TTY_HW_COOK_IN, align 4
  %65 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 7
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %71 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %73 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %75 = call i32 @n_tty_set_room(%struct.tty_struct* %74)
  br label %306

76:                                               ; preds = %57
  %77 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %78 = call i64 @I_ISTRIP(%struct.tty_struct* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %116, label %80

80:                                               ; preds = %76
  %81 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %82 = call i64 @I_IUCLC(%struct.tty_struct* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %116, label %84

84:                                               ; preds = %80
  %85 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %86 = call i64 @I_IGNCR(%struct.tty_struct* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %116, label %88

88:                                               ; preds = %84
  %89 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %90 = call i64 @I_ICRNL(%struct.tty_struct* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %94 = call i64 @I_INLCR(%struct.tty_struct* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %92
  %97 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %98 = call i64 @L_ICANON(%struct.tty_struct* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %102 = call i64 @I_IXON(%struct.tty_struct* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  %105 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %106 = call i64 @L_ISIG(%struct.tty_struct* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %110 = call i64 @L_ECHO(%struct.tty_struct* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %114 = call i64 @I_PARMRK(%struct.tty_struct* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %259

116:                                              ; preds = %112, %108, %104, %100, %96, %92, %88, %84, %80, %76
  %117 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %118 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @memset(i32* %119, i32 0, i32 32)
  %121 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %122 = call i64 @I_IGNCR(%struct.tty_struct* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %116
  %125 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %126 = call i64 @I_ICRNL(%struct.tty_struct* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124, %116
  %129 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %130 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @set_bit(i8 signext 13, i32* %131)
  br label %133

133:                                              ; preds = %128, %124
  %134 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %135 = call i64 @I_INLCR(%struct.tty_struct* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %139 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @set_bit(i8 signext 10, i32* %140)
  br label %142

142:                                              ; preds = %137, %133
  %143 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %144 = call i64 @L_ICANON(%struct.tty_struct* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %209

146:                                              ; preds = %142
  %147 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %148 = call signext i8 @ERASE_CHAR(%struct.tty_struct* %147)
  %149 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %150 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @set_bit(i8 signext %148, i32* %151)
  %153 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %154 = call signext i8 @KILL_CHAR(%struct.tty_struct* %153)
  %155 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %156 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @set_bit(i8 signext %154, i32* %157)
  %159 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %160 = call signext i8 @EOF_CHAR(%struct.tty_struct* %159)
  %161 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %162 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @set_bit(i8 signext %160, i32* %163)
  %165 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %166 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @set_bit(i8 signext 10, i32* %167)
  %169 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %170 = call signext i8 @EOL_CHAR(%struct.tty_struct* %169)
  %171 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %172 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @set_bit(i8 signext %170, i32* %173)
  %175 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %176 = call i64 @L_IEXTEN(%struct.tty_struct* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %208

178:                                              ; preds = %146
  %179 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %180 = call signext i8 @WERASE_CHAR(%struct.tty_struct* %179)
  %181 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %182 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @set_bit(i8 signext %180, i32* %183)
  %185 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %186 = call signext i8 @LNEXT_CHAR(%struct.tty_struct* %185)
  %187 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %188 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @set_bit(i8 signext %186, i32* %189)
  %191 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %192 = call signext i8 @EOL2_CHAR(%struct.tty_struct* %191)
  %193 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %194 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @set_bit(i8 signext %192, i32* %195)
  %197 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %198 = call i64 @L_ECHO(%struct.tty_struct* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %178
  %201 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %202 = call signext i8 @REPRINT_CHAR(%struct.tty_struct* %201)
  %203 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %204 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @set_bit(i8 signext %202, i32* %205)
  br label %207

207:                                              ; preds = %200, %178
  br label %208

208:                                              ; preds = %207, %146
  br label %209

209:                                              ; preds = %208, %142
  %210 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %211 = call i64 @I_IXON(%struct.tty_struct* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %209
  %214 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %215 = call signext i8 @START_CHAR(%struct.tty_struct* %214)
  %216 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %217 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @set_bit(i8 signext %215, i32* %218)
  %220 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %221 = call signext i8 @STOP_CHAR(%struct.tty_struct* %220)
  %222 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %223 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @set_bit(i8 signext %221, i32* %224)
  br label %226

226:                                              ; preds = %213, %209
  %227 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %228 = call i64 @L_ISIG(%struct.tty_struct* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %249

230:                                              ; preds = %226
  %231 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %232 = call signext i8 @INTR_CHAR(%struct.tty_struct* %231)
  %233 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %234 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %233, i32 0, i32 6
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @set_bit(i8 signext %232, i32* %235)
  %237 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %238 = call signext i8 @QUIT_CHAR(%struct.tty_struct* %237)
  %239 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %240 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @set_bit(i8 signext %238, i32* %241)
  %243 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %244 = call signext i8 @SUSP_CHAR(%struct.tty_struct* %243)
  %245 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %246 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %245, i32 0, i32 6
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @set_bit(i8 signext %244, i32* %247)
  br label %249

249:                                              ; preds = %230, %226
  %250 = load i32, i32* @__DISABLED_CHAR, align 4
  %251 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %252 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %251, i32 0, i32 6
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @clear_bit(i32 %250, i32* %253)
  %255 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %256 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %255, i32 0, i32 1
  store i32 0, i32* %256, align 4
  %257 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %258 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %257, i32 0, i32 2
  store i32 0, i32* %258, align 8
  br label %297

259:                                              ; preds = %112
  %260 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %261 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %260, i32 0, i32 1
  store i32 1, i32* %261, align 4
  %262 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %263 = call i64 @I_IGNBRK(%struct.tty_struct* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %259
  %266 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %267 = call i32 @I_BRKINT(%struct.tty_struct* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %293, label %269

269:                                              ; preds = %265
  %270 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %271 = call i64 @I_PARMRK(%struct.tty_struct* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %293, label %273

273:                                              ; preds = %269, %259
  %274 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %275 = call i64 @I_IGNPAR(%struct.tty_struct* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %279 = call i32 @I_INPCK(%struct.tty_struct* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %277, %273
  %282 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %283 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %282, i32 0, i32 5
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %281
  %291 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %292 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %291, i32 0, i32 2
  store i32 1, i32* %292, align 8
  br label %296

293:                                              ; preds = %281, %277, %269, %265
  %294 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %295 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %294, i32 0, i32 2
  store i32 0, i32* %295, align 8
  br label %296

296:                                              ; preds = %293, %290
  br label %297

297:                                              ; preds = %296, %249
  %298 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %299 = call i32 @n_tty_set_room(%struct.tty_struct* %298)
  %300 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %301 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %300, i32 0, i32 4
  %302 = call i32 @wake_up_interruptible(i32* %301)
  %303 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %304 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %303, i32 0, i32 3
  %305 = call i32 @wake_up_interruptible(i32* %304)
  br label %306

306:                                              ; preds = %297, %69
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @L_ICANON(%struct.tty_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @n_tty_set_room(%struct.tty_struct*) #1

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNCR(%struct.tty_struct*) #1

declare dso_local i64 @I_ICRNL(%struct.tty_struct*) #1

declare dso_local i64 @I_INLCR(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @L_ISIG(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @set_bit(i8 signext, i32*) #1

declare dso_local signext i8 @ERASE_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @KILL_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @EOF_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @EOL_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local signext i8 @WERASE_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @LNEXT_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @EOL2_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @REPRINT_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @INTR_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @QUIT_CHAR(%struct.tty_struct*) #1

declare dso_local signext i8 @SUSP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i32 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i32 @I_INPCK(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
