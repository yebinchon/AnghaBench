; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_aead_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ixp_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_WEAK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @aead_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setup(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixp_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %11 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %10)
  store %struct.ixp_ctx* %11, %struct.ixp_ctx** %6, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* %14, i32** %7, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call %struct.TYPE_5__* @crypto_aead_alg(%struct.crypto_aead* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %131

29:                                               ; preds = %23, %2
  %30 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %30, i32 0, i32 0
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %36, i32 0, i32 7
  %38 = call i32 @reset_sa_dir(i32* %37)
  %39 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %39, i32 0, i32 6
  %41 = call i32 @reset_sa_dir(i32* %40)
  %42 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %43 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %42, i32 0, i32 0
  %44 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @setup_cipher(%struct.TYPE_4__* %43, i32 0, i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  br label %120

54:                                               ; preds = %29
  %55 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %55, i32 0, i32 0
  %57 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @setup_cipher(%struct.TYPE_4__* %56, i32 1, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %120

67:                                               ; preds = %54
  %68 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %69 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %68, i32 0, i32 0
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @setup_auth(%struct.TYPE_4__* %69, i32 0, i32 %70, i32 %73, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %120

82:                                               ; preds = %67
  %83 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %84 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %83, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @setup_auth(%struct.TYPE_4__* %84, i32 1, i32 %85, i32 %88, i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %120

97:                                               ; preds = %82
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CRYPTO_TFM_REQ_WEAK_KEY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %120

112:                                              ; preds = %103
  %113 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %114 = xor i32 %113, -1
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %109, %96, %81, %66, %53
  %121 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %121, i32 0, i32 1
  %123 = call i32 @atomic_dec_and_test(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %127 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %126, i32 0, i32 0
  %128 = call i32 @wait_for_completion(i32* %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %28
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.TYPE_5__* @crypto_aead_alg(%struct.crypto_aead*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reset_sa_dir(i32*) #1

declare dso_local i32 @setup_cipher(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @setup_auth(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
