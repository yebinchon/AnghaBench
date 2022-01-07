; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/math-emu/extr_udivmodti4.c__fp_udivmodti4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/math-emu/extr_udivmodti4.c__fp_udivmodti4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_FP_W_TYPE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_fp_udivmodti4(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @udiv_qrnnd(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %14, align 4
  br label %53

35:                                               ; preds = %24
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = sdiv i32 1, %39
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @udiv_qrnnd(i32 %42, i32 %43, i32 0, i32 %44, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @udiv_qrnnd(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %28
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %167

55:                                               ; preds = %6
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %16, align 4
  br label %166

62:                                               ; preds = %55
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @count_leading_zeros(i32 %63, i32 %64)
  %66 = load i32, i32* %18, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72, %68
  store i32 1, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @sub_ddmmss(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %76
  store i32 0, i32* %14, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %16, align 4
  br label %165

88:                                               ; preds = %62
  %89 = load i32, i32* @_FP_W_TYPE_SIZE, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %18, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %17, align 4
  %97 = ashr i32 %95, %96
  %98 = or i32 %94, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %18, align 4
  %101 = shl i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %17, align 4
  %104 = ashr i32 %102, %103
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %18, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %17, align 4
  %110 = ashr i32 %108, %109
  %111 = or i32 %107, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %18, align 4
  %114 = shl i32 %112, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @udiv_qrnnd(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @umul_ppmm(i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %88
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133, %88
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @sub_ddmmss(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %133, %129
  store i32 0, i32* %14, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %20, align 4
  %154 = call i32 @sub_ddmmss(i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %17, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %18, align 4
  %160 = ashr i32 %158, %159
  %161 = or i32 %157, %160
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %18, align 4
  %164 = ashr i32 %162, %163
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %147, %85
  br label %166

166:                                              ; preds = %165, %59
  br label %167

167:                                              ; preds = %166, %53
  %168 = load i32, i32* %13, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %8, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  ret void
}

declare dso_local i32 @udiv_qrnnd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @count_leading_zeros(i32, i32) #1

declare dso_local i32 @sub_ddmmss(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @umul_ppmm(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
