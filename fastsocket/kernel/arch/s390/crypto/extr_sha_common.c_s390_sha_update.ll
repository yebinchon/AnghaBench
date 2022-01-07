; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_sha_common.c_s390_sha_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_sha_common.c_s390_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_sha_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_sha_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.s390_sha_ctx* %12, %struct.s390_sha_ctx** %7, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @crypto_shash_blocksize(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %20, 1
  %22 = and i32 %19, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %111

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %34
  %38 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  %48 = call i32 @memcpy(i32* %43, i32* %44, i32 %47)
  %49 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @crypt_s390_kimd(i32 %51, i32 %54, i32* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub i32 %65, %66
  %68 = load i32*, i32** %5, align 8
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = sub i32 %74, %73
  store i32 %75, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %37, %34
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %89, 1
  %91 = xor i32 %90, -1
  %92 = and i32 %88, %91
  %93 = call i32 @crypt_s390_kimd(i32 %83, i32 %86, i32* %87, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub i32 %96, 1
  %98 = xor i32 %97, -1
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %94, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %80, %76
  br label %111

111:                                              ; preds = %110, %33
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %7, align 8
  %116 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @memcpy(i32* %120, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %114, %111
  ret i32 0
}

declare dso_local %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_blocksize(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypt_s390_kimd(i32, i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
