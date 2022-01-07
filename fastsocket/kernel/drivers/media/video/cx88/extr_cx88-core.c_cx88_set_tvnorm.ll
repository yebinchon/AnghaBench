; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_set_tvnorm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_set_tvnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@xtal = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@VideoFormatNTSCJapan = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@VideoFormatNTSC443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@VideoFormatPALM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@VideoFormatPALN = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@VideoFormatPALNC = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@VideoFormatPAL60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@VideoFormatNTSC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@VideoFormatSECAM = common dso_local global i32 0, align 4
@VideoFormatPAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"set_tvnorm: \22%s\22 fsc8=%d adc=%d vdec=%d db/dr=%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_INPUT_FORMAT  0x%08x [old=0x%08x]\0A\00", align 1
@MO_INPUT_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_OUTPUT_FORMAT 0x%08x [old=0x%08x]\0A\00", align 1
@MO_OUTPUT_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_SCONV_REG     0x%08x [old=0x%08x]\0A\00", align 1
@MO_SCONV_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_SUB_STEP      0x%08x [old=0x%08x]\0A\00", align 1
@MO_SUB_STEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"set_tvnorm: MO_SUB_STEP_DR   0x%08x [old=0x%08x]\0A\00", align 1
@MO_SUB_STEP_DR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [72 x i8] c"set_tvnorm: MO_AGC_BURST     0x%08x [old=0x%08x,bdelay=%d,agcdelay=%d]\0A\00", align 1
@MO_AGC_BURST = common dso_local global i32 0, align 4
@HLNotchFilter4xFsc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"set_tvnorm: MO_HTOTAL        0x%08x [old=0x%08x,htotal=%d]\0A\00", align 1
@MO_HTOTAL = common dso_local global i32 0, align 4
@MO_VBI_PACKET = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_set_tvnorm(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %18 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @norm_fsc8(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @xtal, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @VideoFormatNTSCJapan, align 4
  store i32 %30, i32* %14, align 4
  store i32 404684808, i32* %15, align 4
  br label %89

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @VideoFormatNTSC443, align 4
  store i32 %37, i32* %14, align 4
  store i32 404684808, i32* %15, align 4
  br label %88

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @VideoFormatPALM, align 4
  store i32 %44, i32* %14, align 4
  store i32 471793672, i32* %15, align 4
  br label %87

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @VideoFormatPALN, align 4
  store i32 %51, i32* %14, align 4
  store i32 471793672, i32* %15, align 4
  br label %86

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @VideoFormatPALNC, align 4
  store i32 %58, i32* %14, align 4
  store i32 471793672, i32* %15, align 4
  br label %85

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @VideoFormatPAL60, align 4
  store i32 %65, i32* %14, align 4
  store i32 404684808, i32* %15, align 4
  br label %84

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @V4L2_STD_NTSC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @VideoFormatNTSC, align 4
  store i32 %72, i32* %14, align 4
  store i32 404684808, i32* %15, align 4
  br label %83

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @V4L2_STD_SECAM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  store i32 34000000, i32* %8, align 4
  store i32 35250000, i32* %9, align 4
  %79 = load i32, i32* @VideoFormatSECAM, align 4
  store i32 %79, i32* %14, align 4
  store i32 404684808, i32* %15, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @VideoFormatPAL, align 4
  store i32 %81, i32* %14, align 4
  store i32 404684808, i32* %15, align 4
  br label %82

82:                                               ; preds = %80, %78
  br label %83

83:                                               ; preds = %82, %71
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %36
  br label %89

89:                                               ; preds = %88, %29
  %90 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %91 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @v4l2_norm_to_name(i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @set_pll(%struct.cx88_core* %100, i32 2, i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %105 = call i32 @cx_read(i32 %104)
  %106 = and i32 %105, 15
  %107 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @V4L2_STD_SECAM, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %89
  %114 = load i32, i32* %14, align 4
  br label %118

115:                                              ; preds = %89
  %116 = load i32, i32* %14, align 4
  %117 = or i32 %116, 1024
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi i32 [ %114, %113 ], [ %117, %115 ]
  %120 = call i32 @cx_andor(i32 %108, i32 1039, i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @MO_OUTPUT_FORMAT, align 4
  %123 = call i32 @cx_read(i32 %122)
  %124 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %123)
  %125 = load i32, i32* @MO_OUTPUT_FORMAT, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @cx_write(i32 %125, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = mul nsw i32 %128, 131072
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @do_div(i32 %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @MO_SCONV_REG, align 4
  %135 = call i32 @cx_read(i32 %134)
  %136 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i32, i32* @MO_SCONV_REG, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @cx_write(i32 %137, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %140, 4194304
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @do_div(i32 %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @MO_SUB_STEP, align 4
  %147 = call i32 @cx_read(i32 %146)
  %148 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %147)
  %149 = load i32, i32* @MO_SUB_STEP, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @cx_write(i32 %149, i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 %152, 4194304
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @do_div(i32 %154, i32 %155)
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @MO_SUB_STEP_DR, align 4
  %159 = call i32 @cx_read(i32 %158)
  %160 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32 %159)
  %161 = load i32, i32* @MO_SUB_STEP_DR, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @cx_write(i32 %161, i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = mul nsw i32 %164, 65
  %166 = sdiv i32 %165, 20000000
  %167 = add nsw i32 %166, 21
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %7, align 4
  %169 = mul nsw i32 %168, 68
  %170 = sdiv i32 %169, 20000000
  %171 = add nsw i32 %170, 15
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  %173 = shl i32 %172, 8
  %174 = load i32, i32* %12, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @MO_AGC_BURST, align 4
  %177 = call i32 @cx_read(i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %175, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* @MO_AGC_BURST, align 4
  %182 = load i32, i32* %11, align 4
  %183 = shl i32 %182, 8
  %184 = load i32, i32* %12, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @cx_write(i32 %181, i32 %185)
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @norm_htotal(i32 %187)
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 %188, %189
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @do_div(i32 %191, i32 %192)
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @HLNotchFilter4xFsc, align 4
  %196 = shl i32 %195, 11
  %197 = or i32 %194, %196
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @MO_HTOTAL, align 4
  %200 = call i32 @cx_read(i32 %199)
  %201 = load i32, i32* %10, align 4
  %202 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %200, i32 %201)
  %203 = load i32, i32* @MO_HTOTAL, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @cx_write(i32 %203, i32 %204)
  %206 = load i32, i32* @MO_VBI_PACKET, align 4
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @norm_vbipack(i32 %207)
  %209 = or i32 20480, %208
  %210 = call i32 @cx_write(i32 %206, i32 %209)
  %211 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %212 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %213 = call i32 @cx88_set_scale(%struct.cx88_core* %211, i32 320, i32 240, i32 %212)
  %214 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %215 = call i32 @set_tvaudio(%struct.cx88_core* %214)
  %216 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %217 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %218 = load i32, i32* @s_std, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @call_all(%struct.cx88_core* %216, %struct.cx88_core* %217, i32 %218, i32 %219)
  ret i32 0
}

declare dso_local i32 @norm_fsc8(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @v4l2_norm_to_name(i32) #1

declare dso_local i32 @set_pll(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @norm_htotal(i32) #1

declare dso_local i32 @norm_vbipack(i32) #1

declare dso_local i32 @cx88_set_scale(%struct.cx88_core*, i32, i32, i32) #1

declare dso_local i32 @set_tvaudio(%struct.cx88_core*) #1

declare dso_local i32 @call_all(%struct.cx88_core*, %struct.cx88_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
