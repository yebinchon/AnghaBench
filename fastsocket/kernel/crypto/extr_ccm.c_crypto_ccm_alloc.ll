; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { i32 }
%struct.rtattr = type { i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ctr(%s)\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ccm(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @crypto_ccm_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @crypto_ccm_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %10 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %18 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %17, i64 1
  %19 = load %struct.rtattr*, %struct.rtattr** %18, align 8
  %20 = call i8* @crypto_attr_alg_name(%struct.rtattr* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.crypto_instance* @ERR_PTR(i32 %27)
  store %struct.crypto_instance* %28, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %53

29:                                               ; preds = %1
  %30 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @snprintf(i8* %13, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @ENAMETOOLONG, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.crypto_instance* @ERR_PTR(i32 %37)
  store %struct.crypto_instance* %38, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %53

39:                                               ; preds = %29
  %40 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @snprintf(i8* %16, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @ENAMETOOLONG, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.crypto_instance* @ERR_PTR(i32 %47)
  store %struct.crypto_instance* %48, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call %struct.crypto_instance* @crypto_ccm_alloc_common(%struct.rtattr** %50, i8* %16, i8* %13, i8* %51)
  store %struct.crypto_instance* %52, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %45, %35, %26
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @crypto_attr_alg_name(%struct.rtattr*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.crypto_instance* @crypto_ccm_alloc_common(%struct.rtattr**, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
