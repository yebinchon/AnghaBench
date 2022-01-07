; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_fcrypt.c_fcrypt_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_fcrypt.c_fcrypt_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.fcrypt_ctx = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @fcrypt_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcrypt_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcrypt_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %11 = call %struct.fcrypt_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.fcrypt_ctx* %11, %struct.fcrypt_ctx** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* %12, align 4
  %15 = ashr i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 %16, 7
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  %21 = ashr i32 %20, 1
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 %24, 7
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %26, align 4
  %29 = ashr i32 %28, 1
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 7
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  %36 = load i32, i32* %34, align 4
  %37 = ashr i32 %36, 1
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 15
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, 7
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  %48 = load i32, i32* %46, align 4
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 7
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %54, align 4
  %57 = ashr i32 %56, 1
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 7
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  %64 = load i32, i32* %62, align 4
  %65 = ashr i32 %64, 1
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 7
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %78 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ror56(i32 %81, i32 %82, i32 11)
  %84 = load i32, i32* %9, align 4
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %87 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* %85, i8** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ror56(i32 %90, i32 %91, i32 11)
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %96 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @ror56(i32 %99, i32 %100, i32 11)
  %102 = load i32, i32* %9, align 4
  %103 = call i8* @cpu_to_be32(i32 %102)
  %104 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %105 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 3
  store i8* %103, i8** %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ror56(i32 %108, i32 %109, i32 11)
  %111 = load i32, i32* %9, align 4
  %112 = call i8* @cpu_to_be32(i32 %111)
  %113 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %114 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 4
  store i8* %112, i8** %116, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @ror56(i32 %117, i32 %118, i32 11)
  %120 = load i32, i32* %9, align 4
  %121 = call i8* @cpu_to_be32(i32 %120)
  %122 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %123 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 5
  store i8* %121, i8** %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @ror56(i32 %126, i32 %127, i32 11)
  %129 = load i32, i32* %9, align 4
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %132 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 6
  store i8* %130, i8** %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @ror56(i32 %135, i32 %136, i32 11)
  %138 = load i32, i32* %9, align 4
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %141 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 7
  store i8* %139, i8** %143, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @ror56(i32 %144, i32 %145, i32 11)
  %147 = load i32, i32* %9, align 4
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %150 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 8
  store i8* %148, i8** %152, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @ror56(i32 %153, i32 %154, i32 11)
  %156 = load i32, i32* %9, align 4
  %157 = call i8* @cpu_to_be32(i32 %156)
  %158 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %159 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 9
  store i8* %157, i8** %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @ror56(i32 %162, i32 %163, i32 11)
  %165 = load i32, i32* %9, align 4
  %166 = call i8* @cpu_to_be32(i32 %165)
  %167 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %168 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %167, i32 0, i32 0
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 10
  store i8* %166, i8** %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @ror56(i32 %171, i32 %172, i32 11)
  %174 = load i32, i32* %9, align 4
  %175 = call i8* @cpu_to_be32(i32 %174)
  %176 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %177 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %176, i32 0, i32 0
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 11
  store i8* %175, i8** %179, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @ror56(i32 %180, i32 %181, i32 11)
  %183 = load i32, i32* %9, align 4
  %184 = call i8* @cpu_to_be32(i32 %183)
  %185 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %186 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %185, i32 0, i32 0
  %187 = load i8**, i8*** %186, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 12
  store i8* %184, i8** %188, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @ror56(i32 %189, i32 %190, i32 11)
  %192 = load i32, i32* %9, align 4
  %193 = call i8* @cpu_to_be32(i32 %192)
  %194 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %195 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %194, i32 0, i32 0
  %196 = load i8**, i8*** %195, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 13
  store i8* %193, i8** %197, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @ror56(i32 %198, i32 %199, i32 11)
  %201 = load i32, i32* %9, align 4
  %202 = call i8* @cpu_to_be32(i32 %201)
  %203 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %204 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %203, i32 0, i32 0
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 14
  store i8* %202, i8** %206, align 8
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @ror56(i32 %207, i32 %208, i32 11)
  %210 = load i32, i32* %9, align 4
  %211 = call i8* @cpu_to_be32(i32 %210)
  %212 = load %struct.fcrypt_ctx*, %struct.fcrypt_ctx** %7, align 8
  %213 = getelementptr inbounds %struct.fcrypt_ctx, %struct.fcrypt_ctx* %212, i32 0, i32 0
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 15
  store i8* %211, i8** %215, align 8
  ret i32 0
}

declare dso_local %struct.fcrypt_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ror56(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
