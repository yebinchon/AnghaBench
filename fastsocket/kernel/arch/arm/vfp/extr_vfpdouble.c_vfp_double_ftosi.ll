; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_ftosi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_ftosi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i64, i32 }

@FPSCR_RMODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VDM\00", align 1
@VFP_DENORMAL = common dso_local global i32 0, align 4
@FPSCR_IDC = common dso_local global i32 0, align 4
@VFP_NAN = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_ROUND_NEAREST = common dso_local global i32 0, align 4
@FPSCR_ROUND_TOZERO = common dso_local global i32 0, align 4
@FPSCR_ROUND_PLUSINF = common dso_local global i32 0, align 4
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_ROUND_MINUSINF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"VFP: ftosi: d(s%d)=%08x exceptions=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_double_ftosi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_ftosi(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfp_double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FPSCR_RMODE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vfp_get_double(i32 %20)
  %22 = call i32 @vfp_double_unpack(%struct.vfp_double* %9, i32 %21)
  %23 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.vfp_double* %9)
  %24 = call i32 @vfp_double_type(%struct.vfp_double* %9)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @VFP_DENORMAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @FPSCR_IDC, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @VFP_NAN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  %39 = load i32, i32* @FPSCR_IOC, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %183

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 1055
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  store i32 2147483647, i32* %10, align 4
  %47 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = xor i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @FPSCR_IOC, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %182

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 1022
  br i1 %60, label %61, label %150

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 1086, %63
  store i32 %64, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %65 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 1
  %68 = load i32, i32* %14, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 65, %72
  %74 = shl i32 %71, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @FPSCR_ROUND_NEAREST, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %105

86:                                               ; preds = %61
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @FPSCR_ROUND_TOZERO, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  br label %104

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = xor i32 %95, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  store i32 -1, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = icmp ult i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %114, %111, %105
  %118 = load i32, i32* %10, align 4
  %119 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = add nsw i32 2147483647, %122
  %124 = icmp sgt i32 %118, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = add nsw i32 2147483647, %129
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* @FPSCR_IOC, align 4
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %142

134:                                              ; preds = %117
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* @FPSCR_IXC, align 4
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %125
  %143 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %146, %142
  br label %181

150:                                              ; preds = %57
  store i32 0, i32* %10, align 4
  %151 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %150
  %158 = load i32, i32* @FPSCR_IXC, align 4
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %179

169:                                              ; preds = %164, %157
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @FPSCR_ROUND_MINUSINF, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %9, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 -1, i32* %10, align 4
  br label %178

178:                                              ; preds = %177, %173, %169
  br label %179

179:                                              ; preds = %178, %168
  br label %180

180:                                              ; preds = %179, %150
  br label %181

181:                                              ; preds = %180, %149
  br label %182

182:                                              ; preds = %181, %53
  br label %183

183:                                              ; preds = %182, %38
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @vfp_put_float(i32 %188, i32 %189)
  %191 = load i32, i32* %11, align 4
  ret i32 %191
}

declare dso_local i32 @vfp_double_unpack(%struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_get_double(i32) #1

declare dso_local i32 @vfp_double_dump(i8*, %struct.vfp_double*) #1

declare dso_local i32 @vfp_double_type(%struct.vfp_double*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @vfp_put_float(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
