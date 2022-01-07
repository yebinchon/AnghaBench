; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_crypt_s390.h_crypt_s390_func_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_crypt_s390.h_crypt_s390_func_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_S390_MSA = common dso_local global i32 0, align 4
@CRYPT_S390_MSA3 = common dso_local global i32 0, align 4
@CRYPT_S390_MSA4 = common dso_local global i32 0, align 4
@CRYPT_S390_OP_MASK = common dso_local global i32 0, align 4
@KM_QUERY = common dso_local global i32 0, align 4
@KMC_QUERY = common dso_local global i32 0, align 4
@KIMD_QUERY = common dso_local global i32 0, align 4
@KLMD_QUERY = common dso_local global i32 0, align 4
@KMAC_QUERY = common dso_local global i32 0, align 4
@KMCTR_QUERY = common dso_local global i32 0, align 4
@CRYPT_S390_FUNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @crypt_s390_func_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_s390_func_available(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i64], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CRYPT_S390_MSA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = call i64 (...) @stfl()
  %15 = and i64 %14, 16384
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %107

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CRYPT_S390_MSA3, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CRYPT_S390_MSA4, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %30 = call i64 @stfle(i64* %29, i32 2)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %107

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CRYPT_S390_MSA3, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, 2251799813685248
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %107

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CRYPT_S390_MSA4, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = and i64 %52, 1125899906842624
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %107

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CRYPT_S390_OP_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %84 [
    i32 131, label %60
    i32 129, label %64
    i32 133, label %68
    i32 132, label %72
    i32 130, label %76
    i32 128, label %80
  ]

60:                                               ; preds = %56
  %61 = load i32, i32* @KM_QUERY, align 4
  %62 = bitcast [16 x i8]* %7 to i8**
  %63 = call i32 @crypt_s390_km(i32 %61, i8** %62, i32* null, i32* null, i32 0)
  store i32 %63, i32* %8, align 4
  br label %85

64:                                               ; preds = %56
  %65 = load i32, i32* @KMC_QUERY, align 4
  %66 = bitcast [16 x i8]* %7 to i8**
  %67 = call i32 @crypt_s390_kmc(i32 %65, i8** %66, i32* null, i32* null, i32 0)
  store i32 %67, i32* %8, align 4
  br label %85

68:                                               ; preds = %56
  %69 = load i32, i32* @KIMD_QUERY, align 4
  %70 = bitcast [16 x i8]* %7 to i8**
  %71 = call i32 @crypt_s390_kimd(i32 %69, i8** %70, i32* null, i32 0)
  store i32 %71, i32* %8, align 4
  br label %85

72:                                               ; preds = %56
  %73 = load i32, i32* @KLMD_QUERY, align 4
  %74 = bitcast [16 x i8]* %7 to i8**
  %75 = call i32 @crypt_s390_klmd(i32 %73, i8** %74, i32* null, i32 0)
  store i32 %75, i32* %8, align 4
  br label %85

76:                                               ; preds = %56
  %77 = load i32, i32* @KMAC_QUERY, align 4
  %78 = bitcast [16 x i8]* %7 to i8**
  %79 = call i32 @crypt_s390_kmac(i32 %77, i8** %78, i32* null, i32 0)
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %56
  %81 = load i32, i32* @KMCTR_QUERY, align 4
  %82 = bitcast [16 x i8]* %7 to i8**
  %83 = call i32 @crypt_s390_kmctr(i32 %81, i8** %82, i32* null, i32* null, i32 0, i32* null)
  store i32 %83, i32* %8, align 4
  br label %85

84:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %107

85:                                               ; preds = %80, %76, %72, %68, %64, %60
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %107

89:                                               ; preds = %85
  %90 = load i32, i32* @CRYPT_S390_FUNC_MASK, align 4
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 127
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = ashr i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, 7
  %103 = ashr i32 128, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %89, %88, %84, %55, %44, %32, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @stfl(...) #1

declare dso_local i64 @stfle(i64*, i32) #1

declare dso_local i32 @crypt_s390_km(i32, i8**, i32*, i32*, i32) #1

declare dso_local i32 @crypt_s390_kmc(i32, i8**, i32*, i32*, i32) #1

declare dso_local i32 @crypt_s390_kimd(i32, i8**, i32*, i32) #1

declare dso_local i32 @crypt_s390_klmd(i32, i8**, i32*, i32) #1

declare dso_local i32 @crypt_s390_kmac(i32, i8**, i32*, i32) #1

declare dso_local i32 @crypt_s390_kmctr(i32, i8**, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
