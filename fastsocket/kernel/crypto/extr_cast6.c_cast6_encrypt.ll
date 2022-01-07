; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast6.c_cast6_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast6.c_cast6_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cast6_ctx = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @cast6_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cast6_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cast6_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = call %struct.cast6_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.cast6_ctx* %14, %struct.cast6_ctx** %7, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %12, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @Q(i32* %47, i32* %48, i32* %49)
  %51 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %11, align 8
  %56 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %12, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @Q(i32* %61, i32* %62, i32* %63)
  %65 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %11, align 8
  %70 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 2
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %12, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @Q(i32* %75, i32* %76, i32* %77)
  %79 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 3
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %11, align 8
  %84 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 3
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %12, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %90 = load i32*, i32** %12, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @Q(i32* %89, i32* %90, i32* %91)
  %93 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 4
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %11, align 8
  %98 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 4
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %12, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @Q(i32* %103, i32* %104, i32* %105)
  %107 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %108 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 5
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %11, align 8
  %112 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %113 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 5
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %12, align 8
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %118 = load i32*, i32** %12, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @Q(i32* %117, i32* %118, i32* %119)
  %121 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %122 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 6
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %11, align 8
  %126 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %127 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %126, i32 0, i32 0
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 6
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %12, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %132 = load i32*, i32** %12, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @QBAR(i32* %131, i32* %132, i32* %133)
  %135 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %136 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 7
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %11, align 8
  %140 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %141 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %140, i32 0, i32 0
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 7
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %12, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %146 = load i32*, i32** %12, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @QBAR(i32* %145, i32* %146, i32* %147)
  %149 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %150 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 8
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %11, align 8
  %154 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %155 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 8
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %12, align 8
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %160 = load i32*, i32** %12, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @QBAR(i32* %159, i32* %160, i32* %161)
  %163 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %164 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %163, i32 0, i32 1
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 9
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %11, align 8
  %168 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %169 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %168, i32 0, i32 0
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 9
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %12, align 8
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %174 = load i32*, i32** %12, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @QBAR(i32* %173, i32* %174, i32* %175)
  %177 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %178 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %177, i32 0, i32 1
  %179 = load i32**, i32*** %178, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 10
  %181 = load i32*, i32** %180, align 8
  store i32* %181, i32** %11, align 8
  %182 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %183 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %182, i32 0, i32 0
  %184 = load i32**, i32*** %183, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 10
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %12, align 8
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %188 = load i32*, i32** %12, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @QBAR(i32* %187, i32* %188, i32* %189)
  %191 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %192 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %191, i32 0, i32 1
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 11
  %195 = load i32*, i32** %194, align 8
  store i32* %195, i32** %11, align 8
  %196 = load %struct.cast6_ctx*, %struct.cast6_ctx** %7, align 8
  %197 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %196, i32 0, i32 0
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 11
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %12, align 8
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @QBAR(i32* %201, i32* %202, i32* %203)
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %206 = load i32, i32* %205, align 16
  %207 = call i32 @cpu_to_be32(i32 %206)
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %207, i32* %209, align 4
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @cpu_to_be32(i32 %211)
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 %212, i32* %214, align 4
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @cpu_to_be32(i32 %216)
  %218 = load i32*, i32** %9, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  store i32 %217, i32* %219, align 4
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @cpu_to_be32(i32 %221)
  %223 = load i32*, i32** %9, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  store i32 %222, i32* %224, align 4
  ret void
}

declare dso_local %struct.cast6_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @Q(i32*, i32*, i32*) #1

declare dso_local i32 @QBAR(i32*, i32*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
