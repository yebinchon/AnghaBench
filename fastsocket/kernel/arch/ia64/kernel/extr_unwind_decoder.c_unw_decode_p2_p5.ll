; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_p2_p5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_p2_p5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P2 = common dso_local global i32 0, align 4
@P3 = common dso_local global i32 0, align 4
@UNW_REG_PSP = common dso_local global i32 0, align 4
@UNW_REG_RP = common dso_local global i32 0, align 4
@UNW_REG_PFS = common dso_local global i32 0, align 4
@UNW_REG_PR = common dso_local global i32 0, align 4
@UNW_REG_UNAT = common dso_local global i32 0, align 4
@UNW_REG_LC = common dso_local global i32 0, align 4
@UNW_REG_RNAT = common dso_local global i32 0, align 4
@UNW_REG_BSP = common dso_local global i32 0, align 4
@UNW_REG_BSPSTORE = common dso_local global i32 0, align 4
@UNW_REG_FPSR = common dso_local global i32 0, align 4
@P4 = common dso_local global i32 0, align 4
@P5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_p2_p5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_p2_p5(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %7, align 1
  %24 = load i32, i32* @P2, align 4
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 15
  %28 = shl i32 %27, 1
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %30, 7
  %32 = and i32 %31, 1
  %33 = or i32 %28, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 127
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @UNW_DEC_BR_GR(i32 %24, i8 zeroext %34, i8 zeroext %38, i8* %39)
  br label %190

41:                                               ; preds = %3
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %140

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %8, align 1
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 7
  %53 = shl i32 %52, 1
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 7
  %57 = and i32 %56, 1
  %58 = or i32 %53, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 127
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %10, align 1
  %64 = load i8, i8* %9, align 1
  %65 = zext i8 %64 to i32
  switch i32 %65, label %136 [
    i32 0, label %66
    i32 1, label %72
    i32 2, label %78
    i32 3, label %84
    i32 4, label %90
    i32 5, label %96
    i32 6, label %102
    i32 7, label %107
    i32 8, label %113
    i32 9, label %119
    i32 10, label %125
    i32 11, label %131
  ]

66:                                               ; preds = %46
  %67 = load i32, i32* @P3, align 4
  %68 = load i32, i32* @UNW_REG_PSP, align 4
  %69 = load i8, i8* %10, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @UNW_DEC_REG_GR(i32 %67, i32 %68, i8 zeroext %69, i8* %70)
  br label %139

72:                                               ; preds = %46
  %73 = load i32, i32* @P3, align 4
  %74 = load i32, i32* @UNW_REG_RP, align 4
  %75 = load i8, i8* %10, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @UNW_DEC_REG_GR(i32 %73, i32 %74, i8 zeroext %75, i8* %76)
  br label %139

78:                                               ; preds = %46
  %79 = load i32, i32* @P3, align 4
  %80 = load i32, i32* @UNW_REG_PFS, align 4
  %81 = load i8, i8* %10, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @UNW_DEC_REG_GR(i32 %79, i32 %80, i8 zeroext %81, i8* %82)
  br label %139

84:                                               ; preds = %46
  %85 = load i32, i32* @P3, align 4
  %86 = load i32, i32* @UNW_REG_PR, align 4
  %87 = load i8, i8* %10, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @UNW_DEC_REG_GR(i32 %85, i32 %86, i8 zeroext %87, i8* %88)
  br label %139

90:                                               ; preds = %46
  %91 = load i32, i32* @P3, align 4
  %92 = load i32, i32* @UNW_REG_UNAT, align 4
  %93 = load i8, i8* %10, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @UNW_DEC_REG_GR(i32 %91, i32 %92, i8 zeroext %93, i8* %94)
  br label %139

96:                                               ; preds = %46
  %97 = load i32, i32* @P3, align 4
  %98 = load i32, i32* @UNW_REG_LC, align 4
  %99 = load i8, i8* %10, align 1
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @UNW_DEC_REG_GR(i32 %97, i32 %98, i8 zeroext %99, i8* %100)
  br label %139

102:                                              ; preds = %46
  %103 = load i32, i32* @P3, align 4
  %104 = load i8, i8* %10, align 1
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @UNW_DEC_RP_BR(i32 %103, i8 zeroext %104, i8* %105)
  br label %139

107:                                              ; preds = %46
  %108 = load i32, i32* @P3, align 4
  %109 = load i32, i32* @UNW_REG_RNAT, align 4
  %110 = load i8, i8* %10, align 1
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @UNW_DEC_REG_GR(i32 %108, i32 %109, i8 zeroext %110, i8* %111)
  br label %139

113:                                              ; preds = %46
  %114 = load i32, i32* @P3, align 4
  %115 = load i32, i32* @UNW_REG_BSP, align 4
  %116 = load i8, i8* %10, align 1
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @UNW_DEC_REG_GR(i32 %114, i32 %115, i8 zeroext %116, i8* %117)
  br label %139

119:                                              ; preds = %46
  %120 = load i32, i32* @P3, align 4
  %121 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %122 = load i8, i8* %10, align 1
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @UNW_DEC_REG_GR(i32 %120, i32 %121, i8 zeroext %122, i8* %123)
  br label %139

125:                                              ; preds = %46
  %126 = load i32, i32* @P3, align 4
  %127 = load i32, i32* @UNW_REG_FPSR, align 4
  %128 = load i8, i8* %10, align 1
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @UNW_DEC_REG_GR(i32 %126, i32 %127, i8 zeroext %128, i8* %129)
  br label %139

131:                                              ; preds = %46
  %132 = load i32, i32* @P3, align 4
  %133 = load i8, i8* %10, align 1
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @UNW_DEC_PRIUNAT_GR(i32 %132, i8 zeroext %133, i8* %134)
  br label %139

136:                                              ; preds = %46
  %137 = load i8, i8* %9, align 1
  %138 = call i32 @UNW_DEC_BAD_CODE(i8 zeroext %137)
  br label %139

139:                                              ; preds = %136, %131, %125, %119, %113, %107, %102, %96, %90, %84, %78, %72, %66
  br label %189

140:                                              ; preds = %41
  %141 = load i8, i8* %5, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 7
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* @P4, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @UNW_DEC_SPILL_MASK(i32 %146, i8* %147, i8* %148)
  br label %188

150:                                              ; preds = %140
  %151 = load i8, i8* %5, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 7
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %184

155:                                              ; preds = %150
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  %158 = load i8, i8* %156, align 1
  %159 = zext i8 %158 to i32
  store i32 %159, i32* %13, align 4
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %4, align 8
  %162 = load i8, i8* %160, align 1
  %163 = zext i8 %162 to i32
  store i32 %163, i32* %14, align 4
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %4, align 8
  %166 = load i8, i8* %164, align 1
  %167 = zext i8 %166 to i32
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %13, align 4
  %169 = ashr i32 %168, 4
  %170 = and i32 %169, 15
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, 15
  %173 = shl i32 %172, 16
  %174 = load i32, i32* %14, align 4
  %175 = shl i32 %174, 8
  %176 = or i32 %173, %175
  %177 = load i32, i32* %15, align 4
  %178 = or i32 %176, %177
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* @P5, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @UNW_DEC_FRGR_MEM(i32 %179, i32 %180, i32 %181, i8* %182)
  br label %187

184:                                              ; preds = %150
  %185 = load i8, i8* %5, align 1
  %186 = call i32 @UNW_DEC_BAD_CODE(i8 zeroext %185)
  br label %187

187:                                              ; preds = %184, %155
  br label %188

188:                                              ; preds = %187, %145
  br label %189

189:                                              ; preds = %188, %139
  br label %190

190:                                              ; preds = %189, %20
  %191 = load i8*, i8** %4, align 8
  ret i8* %191
}

declare dso_local i32 @UNW_DEC_BR_GR(i32, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_REG_GR(i32, i32, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_RP_BR(i32, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_GR(i32, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_BAD_CODE(i8 zeroext) #1

declare dso_local i32 @UNW_DEC_SPILL_MASK(i32, i8*, i8*) #1

declare dso_local i32 @UNW_DEC_FRGR_MEM(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
