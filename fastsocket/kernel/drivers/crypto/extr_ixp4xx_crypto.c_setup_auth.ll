; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_setup_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_setup_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ix_sa_dir = type { i8*, i32, i32, i32 }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir }
%struct.ix_hash_algo = type { i32, i32 }

@NPE_OP_HASH_ENABLE = common dso_local global i32 0, align 4
@NPE_OP_HASH_VERIFY = common dso_local global i32 0, align 4
@HMAC_OPAD_VALUE = common dso_local global i32 0, align 4
@HMAC_IPAD_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32, i32*, i32, i32)* @setup_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_auth(%struct.crypto_tfm* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ix_sa_dir*, align 8
  %22 = alloca %struct.ixp_ctx*, align 8
  %23 = alloca %struct.ix_hash_algo*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %25 = call %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %24)
  store %struct.ixp_ctx* %25, %struct.ixp_ctx** %22, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.ixp_ctx*, %struct.ixp_ctx** %22, align 8
  %30 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %29, i32 0, i32 1
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.ixp_ctx*, %struct.ixp_ctx** %22, align 8
  %33 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %32, i32 0, i32 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi %struct.ix_sa_dir* [ %30, %28 ], [ %33, %31 ]
  store %struct.ix_sa_dir* %35, %struct.ix_sa_dir** %21, align 8
  %36 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %37 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %40 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %17, align 8
  %44 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %45 = call %struct.ix_hash_algo* @ix_hash(%struct.crypto_tfm* %44)
  store %struct.ix_hash_algo* %45, %struct.ix_hash_algo** %23, align 8
  %46 = load %struct.ix_hash_algo*, %struct.ix_hash_algo** %23, align 8
  %47 = getelementptr inbounds %struct.ix_hash_algo, %struct.ix_hash_algo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 6
  %51 = or i32 %48, %50
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = call i32 @cpu_to_be32(i32 %52)
  %54 = load i8*, i8** %17, align 8
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %17, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load %struct.ix_hash_algo*, %struct.ix_hash_algo** %23, align 8
  %60 = getelementptr inbounds %struct.ix_hash_algo, %struct.ix_hash_algo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @memcpy(i8* %58, i32 %61, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i8*, i8** %17, align 8
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %17, align 8
  %68 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %69 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %72 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add i32 %70, %73
  %75 = zext i32 %74 to i64
  %76 = add i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %78, %79
  store i32 %80, i32* %15, align 4
  %81 = load i8*, i8** %17, align 8
  %82 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %83 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %86 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = ptrtoint i8* %81 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %95 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %98 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %96, %99
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %103 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @NPE_OP_HASH_ENABLE, align 4
  %107 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %108 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %34
  %114 = load i32, i32* @NPE_OP_HASH_VERIFY, align 4
  %115 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %116 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %34
  %120 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %121 = load i32, i32* @HMAC_OPAD_VALUE, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @register_chain_var(%struct.crypto_tfm* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32* %125, i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %19, align 4
  store i32 %131, i32* %7, align 4
  br label %141

132:                                              ; preds = %119
  %133 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %134 = load i32, i32* @HMAC_IPAD_VALUE, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @register_chain_var(%struct.crypto_tfm* %133, i32 %134, i32 %135, i32 %136, i32 %137, i32* %138, i32 %139)
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %132, %130
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.ix_hash_algo* @ix_hash(%struct.crypto_tfm*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @register_chain_var(%struct.crypto_tfm*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
