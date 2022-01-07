; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_reg_add_sub.c_add_sub_specials.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_reg_add_sub.c_add_sub_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@TW_Denormal = common dso_local global i64 0, align 8
@FPU_Exception = common dso_local global i32 0, align 4
@TAG_Zero = common dso_local global i64 0, align 8
@CW_RC = common dso_local global i32 0, align 4
@RC_DOWN = common dso_local global i32 0, align 4
@SIGN_POS = common dso_local global i64 0, align 8
@SIGN_NEG = common dso_local global i64 0, align 8
@TAG_Valid = common dso_local global i64 0, align 8
@TAG_Empty = common dso_local global i64 0, align 8
@TAG_Special = common dso_local global i64 0, align 8
@TW_Infinity = common dso_local global i64 0, align 8
@EX_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64, %struct.TYPE_10__*, i64, i64, %struct.TYPE_10__*, i32, i32)* @add_sub_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sub_specials(%struct.TYPE_10__* %0, i64 %1, i64 %2, %struct.TYPE_10__* %3, i64 %4, i64 %5, %struct.TYPE_10__* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @TW_Denormal, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %9
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @TW_Denormal, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %9
  %29 = call i64 (...) @denormal_operand()
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @FPU_Exception, align 4
  store i32 %32, i32* %10, align 4
  br label %186

33:                                               ; preds = %28, %24
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @TAG_Zero, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @TAG_Zero, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %16, align 8
  %44 = xor i64 %42, %43
  store i64 %44, i64* %20, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = load i64, i64* @TAG_Zero, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @FPU_copy_to_regi(%struct.TYPE_10__* %45, i64 %46, i32 %47)
  %49 = load i64, i64* %20, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* @CW_RC, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @RC_DOWN, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @SIGN_POS, align 8
  br label %62

60:                                               ; preds = %51
  %61 = load i64, i64* @SIGN_NEG, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @setsign(%struct.TYPE_10__* %52, i64 %63)
  br label %69

65:                                               ; preds = %41
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @setsign(%struct.TYPE_10__* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i64, i64* @TAG_Zero, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %186

72:                                               ; preds = %37
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %75 = call i32 @reg_copy(%struct.TYPE_10__* %73, %struct.TYPE_10__* %74)
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* @TW_Denormal, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -2147483648
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %87 = call i32 @addexponent(%struct.TYPE_10__* %86, i32 1)
  %88 = load i64, i64* @TAG_Valid, align 8
  store i64 %88, i64* %15, align 8
  br label %96

89:                                               ; preds = %79, %72
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @TAG_Empty, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* @TAG_Special, align 8
  store i64 %94, i64* %15, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %85
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @setsign(%struct.TYPE_10__* %97, i64 %98)
  %100 = load i32, i32* %18, align 4
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @FPU_settagi(i32 %100, i64 %101)
  %103 = load i64, i64* %15, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %10, align 4
  br label %186

105:                                              ; preds = %33
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* @TAG_Zero, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %105
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %112 = call i32 @reg_copy(%struct.TYPE_10__* %110, %struct.TYPE_10__* %111)
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @TW_Denormal, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, -2147483648
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %124 = call i32 @addexponent(%struct.TYPE_10__* %123, i32 1)
  %125 = load i64, i64* @TAG_Valid, align 8
  store i64 %125, i64* %12, align 8
  br label %133

126:                                              ; preds = %116, %109
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* @TAG_Empty, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @TAG_Special, align 8
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %130, %126
  br label %133

133:                                              ; preds = %132, %122
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @setsign(%struct.TYPE_10__* %134, i64 %135)
  %137 = load i32, i32* %18, align 4
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @FPU_settagi(i32 %137, i64 %138)
  %140 = load i64, i64* %12, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %10, align 4
  br label %186

142:                                              ; preds = %105
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* @TW_Infinity, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %142
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* @TW_Infinity, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %16, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150, %146
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %156 = load i64, i64* @TAG_Special, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @FPU_copy_to_regi(%struct.TYPE_10__* %155, i64 %156, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %160 = load i64, i64* %13, align 8
  %161 = call i32 @setsign(%struct.TYPE_10__* %159, i64 %160)
  %162 = load i64, i64* %12, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  br label %186

164:                                              ; preds = %150
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @arith_invalid(i32 %165)
  store i32 %166, i32* %10, align 4
  br label %186

167:                                              ; preds = %142
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* @TW_Infinity, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %173 = load i64, i64* @TAG_Special, align 8
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @FPU_copy_to_regi(%struct.TYPE_10__* %172, i64 %173, i32 %174)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %177 = load i64, i64* %16, align 8
  %178 = call i32 @setsign(%struct.TYPE_10__* %176, i64 %177)
  %179 = load i64, i64* %15, align 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %10, align 4
  br label %186

181:                                              ; preds = %167
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* @FPU_Exception, align 4
  store i32 %185, i32* %10, align 4
  br label %186

186:                                              ; preds = %184, %171, %164, %154, %133, %96, %69, %31
  %187 = load i32, i32* %10, align 4
  ret i32 %187
}

declare dso_local i64 @denormal_operand(...) #1

declare dso_local i32 @FPU_copy_to_regi(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @setsign(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @reg_copy(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @addexponent(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @FPU_settagi(i32, i64) #1

declare dso_local i32 @arith_invalid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
