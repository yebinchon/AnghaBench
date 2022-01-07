; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_eseqiv.c_eseqiv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rtattr = type { i32 }

@eseqiv_tmpl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@eseqiv_givencrypt_first = common dso_local global i32 0, align 4
@eseqiv_init = common dso_local global i32 0, align 4
@skcipher_geniv_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @eseqiv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @eseqiv_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca i32, align 4
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %6 = call i32 (...) @crypto_get_default_rng()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.crypto_instance* @ERR_PTR(i32 %10)
  store %struct.crypto_instance* %11, %struct.crypto_instance** %2, align 8
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %14 = call %struct.crypto_instance* @skcipher_geniv_alloc(i32* @eseqiv_tmpl, %struct.rtattr** %13, i32 0, i32 0)
  store %struct.crypto_instance* %14, %struct.crypto_instance** %4, align 8
  %15 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %16 = call i64 @IS_ERR(%struct.crypto_instance* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %69

19:                                               ; preds = %12
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %23 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %28 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %64

33:                                               ; preds = %19
  %34 = load i32, i32* @eseqiv_givencrypt_first, align 4
  %35 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* @eseqiv_init, align 4
  %40 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @skcipher_geniv_exit, align 4
  %44 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %45 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %48 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 4, i32* %49, align 8
  %50 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %51 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %54
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  br label %62

62:                                               ; preds = %69, %33
  %63 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  store %struct.crypto_instance* %63, %struct.crypto_instance** %2, align 8
  br label %71

64:                                               ; preds = %32
  %65 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %66 = call i32 @skcipher_geniv_free(%struct.crypto_instance* %65)
  %67 = load i32, i32* %5, align 4
  %68 = call %struct.crypto_instance* @ERR_PTR(i32 %67)
  store %struct.crypto_instance* %68, %struct.crypto_instance** %4, align 8
  br label %69

69:                                               ; preds = %64, %18
  %70 = call i32 (...) @crypto_put_default_rng()
  br label %62

71:                                               ; preds = %62, %9
  %72 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %72
}

declare dso_local i32 @crypto_get_default_rng(...) #1

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_instance* @skcipher_geniv_alloc(i32*, %struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local i32 @skcipher_geniv_free(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_put_default_rng(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
