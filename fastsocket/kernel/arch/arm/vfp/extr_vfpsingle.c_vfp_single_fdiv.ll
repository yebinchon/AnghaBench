; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_fdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"VFP: s%u = %08x\0A\00", align 1
@VFP_NAN = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@FPSCR_DZC = common dso_local global i32 0, align 4
@vfp_single_default_qnan = common dso_local global %struct.vfp_single zeroinitializer, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_single_fdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_fdiv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_single, align 4
  %11 = alloca %struct.vfp_single, align 4
  %12 = alloca %struct.vfp_single, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vfp_get_float(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @vfp_single_unpack(%struct.vfp_single* %11, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @vfp_single_unpack(%struct.vfp_single* %12, i32 %25)
  %27 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %28, %30
  %32 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = call i32 @vfp_single_type(%struct.vfp_single* %11)
  store i32 %33, i32* %16, align 4
  %34 = call i32 @vfp_single_type(%struct.vfp_single* %12)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @VFP_NAN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  br label %150

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @VFP_NAN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %158

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @VFP_INFINITY, align 4
  %51 = load i32, i32* @VFP_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %169

56:                                               ; preds = %46
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @VFP_INFINITY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %166

62:                                               ; preds = %56
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @VFP_ZERO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %164

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @VFP_INFINITY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @VFP_ZERO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68
  br label %161

79:                                               ; preds = %73
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @VFP_DENORMAL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %11)
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @VFP_DENORMAL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %12)
  br label %93

93:                                               ; preds = %91, %86
  %94 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %12, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %95, %97
  %99 = add nsw i32 %98, 127
  %100 = sub nsw i32 %99, 1
  %101 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %12, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %12, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 2, %108
  %110 = icmp sle i32 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %93
  %112 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %93
  %119 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 32
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %12, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @do_div(i32 %122, i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 63
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %118
  %133 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %12, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %134, %136
  %138 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 32
  %141 = icmp ne i32 %137, %140
  %142 = zext i1 %141 to i32
  %143 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %132, %118
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @vfp_single_normaliseround(i32 %147, %struct.vfp_single* %10, i32 %148, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %149, i32* %5, align 4
  br label %174

150:                                              ; preds = %39
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @vfp_propagate_nan(%struct.vfp_single* %10, %struct.vfp_single* %11, %struct.vfp_single* %12, i32 %151)
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %166, %161, %158, %150
  %154 = call i32 @vfp_single_pack(%struct.vfp_single* %10)
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @vfp_put_float(i32 %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %5, align 4
  br label %174

158:                                              ; preds = %45
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @vfp_propagate_nan(%struct.vfp_single* %10, %struct.vfp_single* %12, %struct.vfp_single* %11, i32 %159)
  store i32 %160, i32* %13, align 4
  br label %153

161:                                              ; preds = %78
  %162 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  store i32 0, i32* %163, align 4
  br label %153

164:                                              ; preds = %67
  %165 = load i32, i32* @FPSCR_DZC, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %164, %61
  %167 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  store i32 255, i32* %167, align 4
  %168 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 2
  store i32 0, i32* %168, align 4
  br label %153

169:                                              ; preds = %55
  %170 = call i32 @vfp_single_pack(%struct.vfp_single* @vfp_single_default_qnan)
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @vfp_put_float(i32 %170, i32 %171)
  %173 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %169, %153, %146
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @vfp_get_float(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_type(%struct.vfp_single*) #1

declare dso_local i32 @vfp_single_normalise_denormal(%struct.vfp_single*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @vfp_single_normaliseround(i32, %struct.vfp_single*, i32, i32, i8*) #1

declare dso_local i32 @vfp_propagate_nan(%struct.vfp_single*, %struct.vfp_single*, %struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_put_float(i32, i32) #1

declare dso_local i32 @vfp_single_pack(%struct.vfp_single*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
