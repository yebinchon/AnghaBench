; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte.c_bte_unaligned_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte.c_bte_unaligned_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTE_SUCCESS = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BTEFAIL_NOTAVAIL = common dso_local global i64 0, align 8
@L1_CACHE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bte_unaligned_copy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @BTE_SUCCESS, align 8
  store i64 %26, i64* %5, align 8
  br label %210

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @L1_CACHE_BYTES, align 4
  %30 = mul nsw i32 3, %29
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc(i32 %31, i32 %32)
  store i8* %33, i8** %22, align 8
  %34 = load i8*, i8** %22, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i64, i64* @BTEFAIL_NOTAVAIL, align 8
  store i64 %37, i64* %5, align 8
  br label %210

38:                                               ; preds = %27
  %39 = load i8*, i8** %22, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = call i32 @L1_CACHE_ALIGN(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %21, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @L1_CACHE_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @L1_CACHE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %166

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @L1_CACHE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @L1_CACHE_BYTES, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @L1_CACHE_BYTES, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i32 [ %70, %67 ], [ %72, %71 ]
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* @L1_CACHE_BYTES, align 4
  store i32 %75, i32* %12, align 4
  br label %77

76:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %136

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @L1_CACHE_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* @L1_CACHE_BYTES, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %19, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %19, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %99, %100
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %81
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %135

110:                                              ; preds = %81
  %111 = load i32, i32* %19, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = load i8*, i8** %21, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = call i32 @ia64_tpa(i64 %116)
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @bte_copy(i32 %114, i32 %117, i32 %118, i32 %119, i32* null)
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* @BTE_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load i8*, i8** %22, align 8
  %126 = call i32 @kfree(i8* %125)
  %127 = load i64, i64* %20, align 8
  store i64 %127, i64* %5, align 8
  br label %210

128:                                              ; preds = %113
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @__va(i32 %129)
  %131 = load i8*, i8** %21, align 8
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @memcpy(i32 %130, i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %110
  br label %135

135:                                              ; preds = %134, %103
  br label %137

136:                                              ; preds = %77
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %139, %140
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %137
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %15, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load i32, i32* %19, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = call i64 @bte_copy(i32 %146, i32 %149, i32 %154, i32 %155, i32* null)
  store i64 %156, i64* %20, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* @BTE_SUCCESS, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %143
  %161 = load i8*, i8** %22, align 8
  %162 = call i32 @kfree(i8* %161)
  %163 = load i64, i64* %20, align 8
  store i64 %163, i64* %5, align 8
  br label %210

164:                                              ; preds = %143
  br label %165

165:                                              ; preds = %164, %137
  br label %179

166:                                              ; preds = %38
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @L1_CACHE_MASK, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @L1_CACHE_ALIGN(i32 %177)
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %166, %165
  %180 = load i32, i32* %15, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = load i8*, i8** %21, align 8
  %185 = ptrtoint i8* %184 to i64
  %186 = call i32 @ia64_tpa(i64 %185)
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i64 @bte_copy(i32 %183, i32 %186, i32 %187, i32 %188, i32* null)
  store i64 %189, i64* %20, align 8
  %190 = load i64, i64* %20, align 8
  %191 = load i64, i64* @BTE_SUCCESS, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load i8*, i8** %22, align 8
  %195 = call i32 @kfree(i8* %194)
  %196 = load i64, i64* %20, align 8
  store i64 %196, i64* %5, align 8
  br label %210

197:                                              ; preds = %182
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @__va(i32 %198)
  %200 = load i8*, i8** %21, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @memcpy(i32 %199, i8* %203, i32 %204)
  br label %206

206:                                              ; preds = %197, %179
  %207 = load i8*, i8** %22, align 8
  %208 = call i32 @kfree(i8* %207)
  %209 = load i64, i64* @BTE_SUCCESS, align 8
  store i64 %209, i64* %5, align 8
  br label %210

210:                                              ; preds = %206, %193, %160, %124, %36, %25
  %211 = load i64, i64* %5, align 8
  ret i64 %211
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i64 @bte_copy(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ia64_tpa(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__va(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
