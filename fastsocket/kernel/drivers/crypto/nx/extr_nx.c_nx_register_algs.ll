; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_register_algs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@nx_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NX_OF_FLAG_MASK_READY = common dso_local global i64 0, align 8
@NX_OKAY = common dso_local global i32 0, align 4
@nx_ecb_aes_alg = common dso_local global i32 0, align 4
@nx_cbc_aes_alg = common dso_local global i32 0, align 4
@nx_ctr_aes_alg = common dso_local global i32 0, align 4
@nx_ctr3686_aes_alg = common dso_local global i32 0, align 4
@nx_gcm_aes_alg = common dso_local global i32 0, align 4
@nx_gcm4106_aes_alg = common dso_local global i32 0, align 4
@nx_ccm_aes_alg = common dso_local global i32 0, align 4
@nx_ccm4309_aes_alg = common dso_local global i32 0, align 4
@nx_shash_sha256_alg = common dso_local global i32 0, align 4
@nx_shash_sha512_alg = common dso_local global i32 0, align 4
@nx_shash_aes_xcbc_alg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nx_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_register_algs() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 0, i32 0), align 8
  %3 = load i64, i64* @NX_OF_FLAG_MASK_READY, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %89

6:                                                ; preds = %0
  %7 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 1), i32 0, i32 4)
  %8 = call i32 @NX_DEBUGFS_INIT(%struct.TYPE_5__* @nx_driver)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %89

12:                                               ; preds = %6
  %13 = load i32, i32* @NX_OKAY, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 0, i32 1), align 8
  %14 = call i32 @crypto_register_alg(i32* @nx_ecb_aes_alg)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %89

18:                                               ; preds = %12
  %19 = call i32 @crypto_register_alg(i32* @nx_cbc_aes_alg)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %87

23:                                               ; preds = %18
  %24 = call i32 @crypto_register_alg(i32* @nx_ctr_aes_alg)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %85

28:                                               ; preds = %23
  %29 = call i32 @crypto_register_alg(i32* @nx_ctr3686_aes_alg)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %83

33:                                               ; preds = %28
  %34 = call i32 @crypto_register_alg(i32* @nx_gcm_aes_alg)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %81

38:                                               ; preds = %33
  %39 = call i32 @crypto_register_alg(i32* @nx_gcm4106_aes_alg)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %79

43:                                               ; preds = %38
  %44 = call i32 @crypto_register_alg(i32* @nx_ccm_aes_alg)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %77

48:                                               ; preds = %43
  %49 = call i32 @crypto_register_alg(i32* @nx_ccm4309_aes_alg)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %75

53:                                               ; preds = %48
  %54 = call i32 @crypto_register_shash(i32* @nx_shash_sha256_alg)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %73

58:                                               ; preds = %53
  %59 = call i32 @crypto_register_shash(i32* @nx_shash_sha512_alg)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %71

63:                                               ; preds = %58
  %64 = call i32 @crypto_register_shash(i32* @nx_shash_aes_xcbc_alg)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %69

68:                                               ; preds = %63
  br label %89

69:                                               ; preds = %67
  %70 = call i32 @crypto_unregister_shash(i32* @nx_shash_sha512_alg)
  br label %71

71:                                               ; preds = %69, %62
  %72 = call i32 @crypto_unregister_shash(i32* @nx_shash_sha256_alg)
  br label %73

73:                                               ; preds = %71, %57
  %74 = call i32 @crypto_unregister_alg(i32* @nx_ccm4309_aes_alg)
  br label %75

75:                                               ; preds = %73, %52
  %76 = call i32 @crypto_unregister_alg(i32* @nx_ccm_aes_alg)
  br label %77

77:                                               ; preds = %75, %47
  %78 = call i32 @crypto_unregister_alg(i32* @nx_gcm4106_aes_alg)
  br label %79

79:                                               ; preds = %77, %42
  %80 = call i32 @crypto_unregister_alg(i32* @nx_gcm_aes_alg)
  br label %81

81:                                               ; preds = %79, %37
  %82 = call i32 @crypto_unregister_alg(i32* @nx_ctr3686_aes_alg)
  br label %83

83:                                               ; preds = %81, %32
  %84 = call i32 @crypto_unregister_alg(i32* @nx_ctr_aes_alg)
  br label %85

85:                                               ; preds = %83, %27
  %86 = call i32 @crypto_unregister_alg(i32* @nx_cbc_aes_alg)
  br label %87

87:                                               ; preds = %85, %22
  %88 = call i32 @crypto_unregister_alg(i32* @nx_ecb_aes_alg)
  br label %89

89:                                               ; preds = %87, %68, %17, %11, %5
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NX_DEBUGFS_INIT(%struct.TYPE_5__*) #1

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i32 @crypto_register_shash(i32*) #1

declare dso_local i32 @crypto_unregister_shash(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
