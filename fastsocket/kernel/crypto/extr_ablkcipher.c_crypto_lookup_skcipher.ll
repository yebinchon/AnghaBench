; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_lookup_skcipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_lookup_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_GIVCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TESTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (i8*, i32, i32)* @crypto_lookup_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_lookup_skcipher(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %9, i32 %10, i32 %11)
  store %struct.crypto_alg* %12, %struct.crypto_alg** %8, align 8
  %13 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %14 = call i64 @IS_ERR(%struct.crypto_alg* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %17, %struct.crypto_alg** %4, align 8
  br label %124

18:                                               ; preds = %3
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %20 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @CRYPTO_ALG_TYPE_GIVCIPHER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %27, %struct.crypto_alg** %4, align 8
  br label %124

28:                                               ; preds = %18
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %30 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %38 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %48

42:                                               ; preds = %28
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %44 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %49, %struct.crypto_alg** %4, align 8
  br label %124

50:                                               ; preds = %42, %36
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %52 = call i32 @crypto_mod_put(%struct.crypto_alg* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %53, i32 %56, i32 %60)
  store %struct.crypto_alg* %61, %struct.crypto_alg** %8, align 8
  %62 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %63 = call i64 @IS_ERR(%struct.crypto_alg* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %66, %struct.crypto_alg** %4, align 8
  br label %124

67:                                               ; preds = %50
  %68 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %69 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @CRYPTO_ALG_TYPE_GIVCIPHER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %67
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = xor i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = xor i32 %81, -1
  %83 = xor i32 %80, %82
  %84 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %89 = call i32 @crypto_mod_put(%struct.crypto_alg* %88)
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.crypto_alg* @ERR_PTR(i32 %91)
  store %struct.crypto_alg* %92, %struct.crypto_alg** %8, align 8
  br label %93

93:                                               ; preds = %87, %75
  %94 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %94, %struct.crypto_alg** %4, align 8
  br label %124

95:                                               ; preds = %67
  %96 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %97 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %105 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  br label %113

108:                                              ; preds = %95
  %109 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %110 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i32 [ %107, %103 ], [ %112, %108 ]
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @BUG_ON(i32 %117)
  %119 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @crypto_givcipher_default(%struct.crypto_alg* %119, i32 %120, i32 %121)
  %123 = call %struct.crypto_alg* @ERR_PTR(i32 %122)
  store %struct.crypto_alg* %123, %struct.crypto_alg** %4, align 8
  br label %124

124:                                              ; preds = %113, %93, %65, %48, %26, %16
  %125 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  ret %struct.crypto_alg* %125
}

declare dso_local %struct.crypto_alg* @crypto_alg_mod_lookup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_givcipher_default(%struct.crypto_alg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
