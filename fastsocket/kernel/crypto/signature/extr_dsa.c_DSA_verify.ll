; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_dsa.c_DSA_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_dsa.c_DSA_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DSA_verify assertion failed [0 < r < q]\0A\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"DSA_verify assertion failed [0 < s < q]\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSA_verify(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i32*], align 16
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %3
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load i32**, i32*** %6, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i32**, i32*** %7, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32**, i32*** %7, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32**, i32*** %7, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32**, i32*** %7, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %43, %38, %33, %28, %23, %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %199

56:                                               ; preds = %48
  %57 = load i32**, i32*** %7, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %8, align 8
  %60 = load i32**, i32*** %7, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %9, align 8
  %63 = load i32**, i32*** %7, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %10, align 8
  %66 = load i32**, i32*** %7, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 3
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %11, align 8
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %12, align 8
  %72 = load i32**, i32*** %6, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i64 @mpi_cmp_ui(i32* %75, i32 0)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %56
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @mpi_cmp(i32* %79, i32* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78, %56
  %84 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EKEYREJECTED, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %199

87:                                               ; preds = %78
  %88 = load i32*, i32** %13, align 8
  %89 = call i64 @mpi_cmp_ui(i32* %88, i32 0)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @mpi_cmp(i32* %92, i32* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91, %87
  %97 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EKEYREJECTED, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %199

100:                                              ; preds = %91
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %20, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @mpi_get_nlimbs(i32* %103)
  %105 = call i32* @mpi_alloc(i32 %104)
  store i32* %105, i32** %14, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %189

109:                                              ; preds = %100
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @mpi_get_nlimbs(i32* %110)
  %112 = call i32* @mpi_alloc(i32 %111)
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %189

116:                                              ; preds = %109
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @mpi_get_nlimbs(i32* %117)
  %119 = call i32* @mpi_alloc(i32 %118)
  store i32* %119, i32** %16, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %189

123:                                              ; preds = %116
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @mpi_get_nlimbs(i32* %124)
  %126 = call i32* @mpi_alloc(i32 %125)
  store i32* %126, i32** %17, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  br label %189

130:                                              ; preds = %123
  %131 = load i32*, i32** %14, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i64 @mpi_invm(i32* %131, i32* %132, i32* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %189

137:                                              ; preds = %130
  %138 = load i32*, i32** %15, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = call i64 @mpi_mulm(i32* %138, i32* %139, i32* %140, i32* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %189

145:                                              ; preds = %137
  %146 = load i32*, i32** %16, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = call i64 @mpi_mulm(i32* %146, i32* %147, i32* %148, i32* %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %189

153:                                              ; preds = %145
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  store i32* %154, i32** %155, align 16
  %156 = load i32*, i32** %15, align 8
  %157 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  store i32* %156, i32** %157, align 16
  %158 = load i32*, i32** %11, align 8
  %159 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  store i32* %158, i32** %159, align 8
  %160 = load i32*, i32** %16, align 8
  %161 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 1
  store i32* %160, i32** %161, align 8
  %162 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 2
  store i32* null, i32** %162, align 16
  %163 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 2
  store i32* null, i32** %163, align 16
  %164 = load i32*, i32** %17, align 8
  %165 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %166 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %167 = load i32*, i32** %8, align 8
  %168 = call i64 @mpi_mulpowm(i32* %164, i32** %165, i32** %166, i32* %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %153
  br label %189

171:                                              ; preds = %153
  %172 = load i32*, i32** %17, align 8
  %173 = load i32*, i32** %17, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = call i64 @mpi_fdiv_r(i32* %172, i32* %173, i32* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %189

178:                                              ; preds = %171
  %179 = load i32*, i32** %17, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = call i64 @mpi_cmp(i32* %179, i32* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %187

184:                                              ; preds = %178
  %185 = load i32, i32* @EKEYREJECTED, align 4
  %186 = sub nsw i32 0, %185
  br label %187

187:                                              ; preds = %184, %183
  %188 = phi i32 [ 0, %183 ], [ %186, %184 ]
  store i32 %188, i32* %20, align 4
  br label %189

189:                                              ; preds = %187, %177, %170, %152, %144, %136, %129, %122, %115, %108
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @mpi_free(i32* %190)
  %192 = load i32*, i32** %15, align 8
  %193 = call i32 @mpi_free(i32* %192)
  %194 = load i32*, i32** %16, align 8
  %195 = call i32 @mpi_free(i32* %194)
  %196 = load i32*, i32** %17, align 8
  %197 = call i32 @mpi_free(i32* %196)
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %189, %96, %83, %53
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i64 @mpi_cmp_ui(i32*, i32) #1

declare dso_local i64 @mpi_cmp(i32*, i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32* @mpi_alloc(i32) #1

declare dso_local i32 @mpi_get_nlimbs(i32*) #1

declare dso_local i64 @mpi_invm(i32*, i32*, i32*) #1

declare dso_local i64 @mpi_mulm(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mpi_mulpowm(i32*, i32**, i32**, i32*) #1

declare dso_local i64 @mpi_fdiv_r(i32*, i32*, i32*) #1

declare dso_local i32 @mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
