; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_des_s390_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_des_s390_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_DEA_ENCRYPT = common dso_local global i32 0, align 4
@CRYPT_S390_MSA = common dso_local global i32 0, align 4
@KM_TDEA_128_ENCRYPT = common dso_local global i32 0, align 4
@KM_TDEA_192_ENCRYPT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@des_alg = common dso_local global i32 0, align 4
@ecb_des_alg = common dso_local global i32 0, align 4
@cbc_des_alg = common dso_local global i32 0, align 4
@des3_128_alg = common dso_local global i32 0, align 4
@ecb_des3_128_alg = common dso_local global i32 0, align 4
@cbc_des3_128_alg = common dso_local global i32 0, align 4
@des3_192_alg = common dso_local global i32 0, align 4
@ecb_des3_192_alg = common dso_local global i32 0, align 4
@cbc_des3_192_alg = common dso_local global i32 0, align 4
@KMCTR_DEA_ENCRYPT = common dso_local global i32 0, align 4
@CRYPT_S390_MSA4 = common dso_local global i32 0, align 4
@KMCTR_TDEA_192_ENCRYPT = common dso_local global i32 0, align 4
@ctr_des_alg = common dso_local global i32 0, align 4
@ctr_des3_alg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ctrblk = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @des_s390_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_s390_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @KM_DEA_ENCRYPT, align 4
  %4 = load i32, i32* @CRYPT_S390_MSA, align 4
  %5 = call i64 @crypt_s390_func_available(i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @KM_TDEA_128_ENCRYPT, align 4
  %9 = load i32, i32* @CRYPT_S390_MSA, align 4
  %10 = call i64 @crypt_s390_func_available(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* @KM_TDEA_192_ENCRYPT, align 4
  %14 = load i32, i32* @CRYPT_S390_MSA, align 4
  %15 = call i64 @crypt_s390_func_available(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %7, %0
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %125

20:                                               ; preds = %12
  %21 = call i32 @crypto_register_alg(i32* @des_alg)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %124

25:                                               ; preds = %20
  %26 = call i32 @crypto_register_alg(i32* @ecb_des_alg)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %122

30:                                               ; preds = %25
  %31 = call i32 @crypto_register_alg(i32* @cbc_des_alg)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %120

35:                                               ; preds = %30
  %36 = call i32 @crypto_register_alg(i32* @des3_128_alg)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %118

40:                                               ; preds = %35
  %41 = call i32 @crypto_register_alg(i32* @ecb_des3_128_alg)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %116

45:                                               ; preds = %40
  %46 = call i32 @crypto_register_alg(i32* @cbc_des3_128_alg)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %114

50:                                               ; preds = %45
  %51 = call i32 @crypto_register_alg(i32* @des3_192_alg)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %112

55:                                               ; preds = %50
  %56 = call i32 @crypto_register_alg(i32* @ecb_des3_192_alg)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %110

60:                                               ; preds = %55
  %61 = call i32 @crypto_register_alg(i32* @cbc_des3_192_alg)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %108

65:                                               ; preds = %60
  %66 = load i32, i32* @KMCTR_DEA_ENCRYPT, align 4
  %67 = load i32, i32* @CRYPT_S390_MSA, align 4
  %68 = load i32, i32* @CRYPT_S390_MSA4, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @crypt_s390_func_available(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %65
  %73 = load i32, i32* @KMCTR_TDEA_192_ENCRYPT, align 4
  %74 = load i32, i32* @CRYPT_S390_MSA, align 4
  %75 = load i32, i32* @CRYPT_S390_MSA4, align 4
  %76 = or i32 %74, %75
  %77 = call i64 @crypt_s390_func_available(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %72
  %80 = call i32 @crypto_register_alg(i32* @ctr_des_alg)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %106

84:                                               ; preds = %79
  %85 = call i32 @crypto_register_alg(i32* @ctr_des3_alg)
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %104

89:                                               ; preds = %84
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i64 @__get_free_page(i32 %90)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** @ctrblk, align 8
  %93 = load i32*, i32** @ctrblk, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %72, %65
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %2, align 4
  store i32 %101, i32* %1, align 4
  br label %125

102:                                              ; preds = %95
  %103 = call i32 @crypto_unregister_alg(i32* @ctr_des3_alg)
  br label %104

104:                                              ; preds = %102, %88
  %105 = call i32 @crypto_unregister_alg(i32* @ctr_des_alg)
  br label %106

106:                                              ; preds = %104, %83
  %107 = call i32 @crypto_unregister_alg(i32* @cbc_des3_192_alg)
  br label %108

108:                                              ; preds = %106, %64
  %109 = call i32 @crypto_unregister_alg(i32* @ecb_des3_192_alg)
  br label %110

110:                                              ; preds = %108, %59
  %111 = call i32 @crypto_unregister_alg(i32* @des3_192_alg)
  br label %112

112:                                              ; preds = %110, %54
  %113 = call i32 @crypto_unregister_alg(i32* @cbc_des3_128_alg)
  br label %114

114:                                              ; preds = %112, %49
  %115 = call i32 @crypto_unregister_alg(i32* @ecb_des3_128_alg)
  br label %116

116:                                              ; preds = %114, %44
  %117 = call i32 @crypto_unregister_alg(i32* @des3_128_alg)
  br label %118

118:                                              ; preds = %116, %39
  %119 = call i32 @crypto_unregister_alg(i32* @cbc_des_alg)
  br label %120

120:                                              ; preds = %118, %34
  %121 = call i32 @crypto_unregister_alg(i32* @ecb_des_alg)
  br label %122

122:                                              ; preds = %120, %29
  %123 = call i32 @crypto_unregister_alg(i32* @des_alg)
  br label %124

124:                                              ; preds = %122, %24
  br label %100

125:                                              ; preds = %100, %17
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i64 @crypt_s390_func_available(i32, i32) #1

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
