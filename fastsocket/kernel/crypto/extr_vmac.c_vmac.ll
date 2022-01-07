; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmac_ctx_t = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8*, i64*, %struct.vmac_ctx_t*)* @vmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmac(i8* %0, i32 %1, i8* %2, i64* %3, %struct.vmac_ctx_t* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.vmac_ctx_t*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.vmac_ctx_t* %4, %struct.vmac_ctx_t** %10, align 8
  %16 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %10, align 8
  %17 = getelementptr inbounds %struct.vmac_ctx_t, %struct.vmac_ctx_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %11, align 8
  %20 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %10, align 8
  %21 = getelementptr inbounds %struct.vmac_ctx_t, %struct.vmac_ctx_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 15
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 1
  store i32 %28, i32* %15, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %5
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %37, %5
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %11, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %48, i64* %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 %54, i64* %56, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = bitcast i64* %57 to i8*
  %59 = getelementptr inbounds i8, i8* %58, i64 15
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 254
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  %64 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %10, align 8
  %65 = getelementptr inbounds %struct.vmac_ctx_t, %struct.vmac_ctx_t* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = load i64*, i64** %11, align 8
  %70 = bitcast i64* %69 to i8*
  %71 = call i32 @crypto_cipher_encrypt_one(i32 %66, i8* %68, i8* %70)
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 1, %72
  %74 = trunc i32 %73 to i8
  %75 = zext i8 %74 to i32
  %76 = load i64*, i64** %11, align 8
  %77 = bitcast i64* %76 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 15
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %80, %75
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

83:                                               ; preds = %45, %37
  %84 = load i64*, i64** %12, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = call i64 @be64_to_cpup(i64* %87)
  store i64 %88, i64* %13, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %10, align 8
  %92 = getelementptr inbounds %struct.vmac_ctx_t, %struct.vmac_ctx_t* %91, i32 0, i32 0
  %93 = call i64 @vhash(i8* %89, i32 %90, i64* null, %struct.TYPE_2__* %92)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i64 @le64_to_cpu(i64 %96)
  ret i64 %97
}

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i8*, i8*) #1

declare dso_local i64 @be64_to_cpup(i64*) #1

declare dso_local i64 @vhash(i8*, i32, i64*, %struct.TYPE_2__*) #1

declare dso_local i64 @le64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
