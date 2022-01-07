; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_base_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ccm.c_crypto_ccm_base_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { i32 }
%struct.rtattr = type { i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ccm_base(%s,%s)\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @crypto_ccm_base_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @crypto_ccm_base_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %10 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %15 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %14, i64 1
  %16 = load %struct.rtattr*, %struct.rtattr** %15, align 8
  %17 = call i8* @crypto_attr_alg_name(%struct.rtattr* %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @PTR_ERR(i8* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.crypto_instance* @ERR_PTR(i32 %24)
  store %struct.crypto_instance* %25, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %55

26:                                               ; preds = %1
  %27 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %28 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %27, i64 2
  %29 = load %struct.rtattr*, %struct.rtattr** %28, align 8
  %30 = call i8* @crypto_attr_alg_name(%struct.rtattr* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.crypto_instance* @ERR_PTR(i32 %37)
  store %struct.crypto_instance* %38, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %55

39:                                               ; preds = %26
  %40 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @snprintf(i8* %13, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @ENAMETOOLONG, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.crypto_instance* @ERR_PTR(i32 %48)
  store %struct.crypto_instance* %49, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %55

50:                                               ; preds = %39
  %51 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call %struct.crypto_instance* @crypto_ccm_alloc_common(%struct.rtattr** %51, i8* %13, i8* %52, i8* %53)
  store %struct.crypto_instance* %54, %struct.crypto_instance** %2, align 8
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %46, %36, %23
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @crypto_attr_alg_name(%struct.rtattr*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

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
