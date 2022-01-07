; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_alloc_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_alloc_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@pinmux_lock = common dso_local global i32 0, align 4
@pins = common dso_local global i8* null, align 8
@pinmux = common dso_local global i32 0, align 4
@regi_pinmux = common dso_local global i32 0, align 4
@rw_hwprot = common dso_local global i32 0, align 4
@clkgen = common dso_local global i32 0, align 4
@regi_clkgen = common dso_local global i32 0, align 4
@rw_clk_ctrl = common dso_local global i32 0, align 4
@regk_clkgen_yes = common dso_local global i8* null, align 8
@PORT_B = common dso_local global i32 0, align 4
@pinmux_fixed = common dso_local global i32 0, align 4
@regk_pinmux_yes = common dso_local global i8* null, align 8
@PORT_C = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_alloc_fixed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @pinmux_lock, i64 %10)
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %13 = load i8*, i8** @pins, align 8
  %14 = call i32 @memcpy(i8* %12, i8* %13, i32 8)
  %15 = call i32 (...) @crisv32_pinmux_init()
  %16 = load i32, i32* @pinmux, align 4
  %17 = load i32, i32* @regi_pinmux, align 4
  %18 = load i32, i32* @rw_hwprot, align 4
  call void @REG_RD(%struct.TYPE_5__* sret %6, i32 %16, i32 %17, i32 %18)
  %19 = load i32, i32* @clkgen, align 4
  %20 = load i32, i32* @regi_clkgen, align 4
  %21 = load i32, i32* @rw_clk_ctrl, align 4
  call void @REG_RD(%struct.TYPE_5__* sret %7, i32 %19, i32 %20, i32 %21)
  %22 = load i32, i32* %2, align 4
  switch i32 %22, label %194 [
    i32 147, label %23
    i32 146, label %39
    i32 129, label %45
    i32 130, label %54
    i32 128, label %69
    i32 135, label %78
    i32 134, label %86
    i32 133, label %94
    i32 132, label %102
    i32 131, label %110
    i32 139, label %118
    i32 138, label %121
    i32 137, label %127
    i32 136, label %133
    i32 145, label %139
    i32 144, label %145
    i32 143, label %151
    i32 142, label %163
    i32 141, label %170
    i32 140, label %182
  ]

23:                                               ; preds = %1
  %24 = load i8*, i8** @regk_clkgen_yes, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 25
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @regk_clkgen_yes, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 26
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @PORT_B, align 4
  %29 = load i32, i32* @pinmux_fixed, align 4
  %30 = call i32 @crisv32_pinmux_alloc(i32 %28, i32 8, i32 23, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @PORT_B, align 4
  %32 = load i32, i32* @pinmux_fixed, align 4
  %33 = call i32 @crisv32_pinmux_alloc(i32 %31, i32 24, i32 25, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i8*, i8** @regk_pinmux_yes, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 24
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 25
  store i8* %36, i8** %38, align 8
  br label %197

39:                                               ; preds = %1
  %40 = load i32, i32* @PORT_B, align 4
  %41 = load i32, i32* @pinmux_fixed, align 4
  %42 = call i32 @crisv32_pinmux_alloc(i32 %40, i32 0, i32 7, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i8*, i8** @regk_pinmux_yes, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 23
  store i8* %43, i8** %44, align 8
  br label %197

45:                                               ; preds = %1
  %46 = load i8*, i8** @regk_clkgen_yes, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 21
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 22
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @PORT_B, align 4
  %50 = load i32, i32* @pinmux_fixed, align 4
  %51 = call i32 @crisv32_pinmux_alloc(i32 %49, i32 27, i32 29, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i8*, i8** @regk_pinmux_yes, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 19
  store i8* %52, i8** %53, align 8
  br label %197

54:                                               ; preds = %1
  %55 = load i8*, i8** @regk_clkgen_yes, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 21
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 22
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @PORT_B, align 4
  %59 = load i32, i32* @pinmux_fixed, align 4
  %60 = call i32 @crisv32_pinmux_alloc(i32 %58, i32 27, i32 31, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @PORT_C, align 4
  %62 = load i32, i32* @pinmux_fixed, align 4
  %63 = call i32 @crisv32_pinmux_alloc(i32 %61, i32 0, i32 15, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i8*, i8** @regk_pinmux_yes, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 19
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 20
  store i8* %66, i8** %68, align 8
  br label %197

69:                                               ; preds = %1
  %70 = load i8*, i8** @regk_clkgen_yes, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 18
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @PORT_A, align 4
  %73 = load i32, i32* @pinmux_fixed, align 4
  %74 = call i32 @crisv32_pinmux_alloc(i32 %72, i32 8, i32 18, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i8*, i8** @regk_pinmux_yes, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 16
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 17
  store i8* %75, i8** %77, align 8
  br label %197

78:                                               ; preds = %1
  %79 = load i8*, i8** @regk_clkgen_yes, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* @PORT_A, align 4
  %82 = load i32, i32* @pinmux_fixed, align 4
  %83 = call i32 @crisv32_pinmux_alloc(i32 %81, i32 24, i32 25, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i8*, i8** @regk_pinmux_yes, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 15
  store i8* %84, i8** %85, align 8
  br label %197

86:                                               ; preds = %1
  %87 = load i8*, i8** @regk_clkgen_yes, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @PORT_A, align 4
  %90 = load i32, i32* @pinmux_fixed, align 4
  %91 = call i32 @crisv32_pinmux_alloc(i32 %89, i32 26, i32 27, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i8*, i8** @regk_pinmux_yes, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 14
  store i8* %92, i8** %93, align 8
  br label %197

94:                                               ; preds = %1
  %95 = load i8*, i8** @regk_clkgen_yes, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @PORT_A, align 4
  %98 = load i32, i32* @pinmux_fixed, align 4
  %99 = call i32 @crisv32_pinmux_alloc(i32 %97, i32 28, i32 29, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i8*, i8** @regk_pinmux_yes, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 13
  store i8* %100, i8** %101, align 8
  br label %197

102:                                              ; preds = %1
  %103 = load i8*, i8** @regk_clkgen_yes, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* @PORT_A, align 4
  %106 = load i32, i32* @pinmux_fixed, align 4
  %107 = call i32 @crisv32_pinmux_alloc(i32 %105, i32 30, i32 31, i32 %106)
  store i32 %107, i32* %3, align 4
  %108 = load i8*, i8** @regk_pinmux_yes, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 12
  store i8* %108, i8** %109, align 8
  br label %197

110:                                              ; preds = %1
  %111 = load i8*, i8** @regk_clkgen_yes, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* @PORT_A, align 4
  %114 = load i32, i32* @pinmux_fixed, align 4
  %115 = call i32 @crisv32_pinmux_alloc(i32 %113, i32 19, i32 23, i32 %114)
  store i32 %115, i32* %3, align 4
  %116 = load i8*, i8** @regk_pinmux_yes, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 10
  store i8* %116, i8** %117, align 8
  br label %197

118:                                              ; preds = %1
  %119 = load i8*, i8** @regk_pinmux_yes, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 9
  store i8* %119, i8** %120, align 8
  store i32 0, i32* %3, align 4
  br label %197

121:                                              ; preds = %1
  %122 = load i32, i32* @PORT_A, align 4
  %123 = load i32, i32* @pinmux_fixed, align 4
  %124 = call i32 @crisv32_pinmux_alloc(i32 %122, i32 30, i32 30, i32 %123)
  store i32 %124, i32* %3, align 4
  %125 = load i8*, i8** @regk_pinmux_yes, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  store i8* %125, i8** %126, align 8
  br label %197

127:                                              ; preds = %1
  %128 = load i32, i32* @PORT_A, align 4
  %129 = load i32, i32* @pinmux_fixed, align 4
  %130 = call i32 @crisv32_pinmux_alloc(i32 %128, i32 31, i32 31, i32 %129)
  store i32 %130, i32* %3, align 4
  %131 = load i8*, i8** @regk_pinmux_yes, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  store i8* %131, i8** %132, align 8
  br label %197

133:                                              ; preds = %1
  %134 = load i32, i32* @PORT_B, align 4
  %135 = load i32, i32* @pinmux_fixed, align 4
  %136 = call i32 @crisv32_pinmux_alloc(i32 %134, i32 26, i32 26, i32 %135)
  store i32 %136, i32* %3, align 4
  %137 = load i8*, i8** @regk_pinmux_yes, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  store i8* %137, i8** %138, align 8
  br label %197

139:                                              ; preds = %1
  %140 = load i32, i32* @PORT_A, align 4
  %141 = load i32, i32* @pinmux_fixed, align 4
  %142 = call i32 @crisv32_pinmux_alloc(i32 %140, i32 0, i32 1, i32 %141)
  store i32 %142, i32* %3, align 4
  %143 = load i8*, i8** @regk_pinmux_yes, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i8* %143, i8** %144, align 8
  br label %197

145:                                              ; preds = %1
  %146 = load i32, i32* @PORT_A, align 4
  %147 = load i32, i32* @pinmux_fixed, align 4
  %148 = call i32 @crisv32_pinmux_alloc(i32 %146, i32 2, i32 3, i32 %147)
  store i32 %148, i32* %3, align 4
  %149 = load i8*, i8** @regk_pinmux_yes, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %149, i8** %150, align 8
  br label %197

151:                                              ; preds = %1
  %152 = load i32, i32* @PORT_A, align 4
  %153 = load i32, i32* @pinmux_fixed, align 4
  %154 = call i32 @crisv32_pinmux_alloc(i32 %152, i32 2, i32 3, i32 %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* @PORT_A, align 4
  %156 = load i32, i32* @pinmux_fixed, align 4
  %157 = call i32 @crisv32_pinmux_alloc(i32 %155, i32 7, i32 7, i32 %156)
  %158 = load i32, i32* %3, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %3, align 4
  %160 = load i8*, i8** @regk_pinmux_yes, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i8* %160, i8** %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  br label %197

163:                                              ; preds = %1
  %164 = load i32, i32* @PORT_A, align 4
  %165 = load i32, i32* @pinmux_fixed, align 4
  %166 = call i32 @crisv32_pinmux_alloc(i32 %164, i32 2, i32 4, i32 %165)
  store i32 %166, i32* %3, align 4
  %167 = load i8*, i8** @regk_pinmux_yes, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i8* %167, i8** %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  br label %197

170:                                              ; preds = %1
  %171 = load i32, i32* @PORT_A, align 4
  %172 = load i32, i32* @pinmux_fixed, align 4
  %173 = call i32 @crisv32_pinmux_alloc(i32 %171, i32 2, i32 3, i32 %172)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* @PORT_A, align 4
  %175 = load i32, i32* @pinmux_fixed, align 4
  %176 = call i32 @crisv32_pinmux_alloc(i32 %174, i32 5, i32 5, i32 %175)
  %177 = load i32, i32* %3, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %3, align 4
  %179 = load i8*, i8** @regk_pinmux_yes, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i8* %179, i8** %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %197

182:                                              ; preds = %1
  %183 = load i32, i32* @PORT_A, align 4
  %184 = load i32, i32* @pinmux_fixed, align 4
  %185 = call i32 @crisv32_pinmux_alloc(i32 %183, i32 2, i32 3, i32 %184)
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* @PORT_A, align 4
  %187 = load i32, i32* @pinmux_fixed, align 4
  %188 = call i32 @crisv32_pinmux_alloc(i32 %186, i32 6, i32 6, i32 %187)
  %189 = load i32, i32* %3, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %3, align 4
  %191 = load i8*, i8** @regk_pinmux_yes, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* %191, i8** %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  br label %197

194:                                              ; preds = %1
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %194, %182, %170, %163, %151, %145, %139, %133, %127, %121, %118, %110, %102, %94, %86, %78, %69, %54, %45, %39, %23
  %198 = load i32, i32* %3, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @pinmux, align 4
  %202 = load i32, i32* @regi_pinmux, align 4
  %203 = load i32, i32* @rw_hwprot, align 4
  %204 = call i32 @REG_WR(i32 %201, i32 %202, i32 %203, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %6)
  %205 = load i32, i32* @clkgen, align 4
  %206 = load i32, i32* @regi_clkgen, align 4
  %207 = load i32, i32* @rw_clk_ctrl, align 4
  %208 = call i32 @REG_WR(i32 %205, i32 %206, i32 %207, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %7)
  br label %213

209:                                              ; preds = %197
  %210 = load i8*, i8** @pins, align 8
  %211 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %212 = call i32 @memcpy(i8* %210, i8* %211, i32 8)
  br label %213

213:                                              ; preds = %209, %200
  %214 = load i64, i64* %5, align 8
  %215 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %214)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crisv32_pinmux_init(...) #1

declare dso_local void @REG_RD(%struct.TYPE_5__* sret, i32, i32, i32) #1

declare dso_local i32 @crisv32_pinmux_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
