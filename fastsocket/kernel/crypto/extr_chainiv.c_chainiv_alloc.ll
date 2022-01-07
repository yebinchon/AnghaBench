; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_chainiv_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_chainiv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rtattr = type { i32 }
%struct.crypto_attr_type = type { %struct.TYPE_4__, i32, i32 }

@chainiv_tmpl = common dso_local global i32 0, align 4
@chainiv_givencrypt_first = common dso_local global i32 0, align 4
@chainiv_init = common dso_local global i32 0, align 4
@skcipher_geniv_exit = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@async_chainiv_givencrypt_first = common dso_local global i32 0, align 4
@async_chainiv_init = common dso_local global i32 0, align 4
@async_chainiv_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @chainiv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @chainiv_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.rtattr**, align 8
  %4 = alloca %struct.crypto_attr_type*, align 8
  %5 = alloca %struct.crypto_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.rtattr** %0, %struct.rtattr*** %3, align 8
  %7 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %8 = call %struct.crypto_instance* @crypto_get_attr_type(%struct.rtattr** %7)
  %9 = bitcast %struct.crypto_instance* %8 to %struct.crypto_attr_type*
  store %struct.crypto_attr_type* %9, %struct.crypto_attr_type** %4, align 8
  %10 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %4, align 8
  %11 = bitcast %struct.crypto_attr_type* %10 to %struct.crypto_instance*
  %12 = call i32 @PTR_ERR(%struct.crypto_instance* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %4, align 8
  %14 = bitcast %struct.crypto_attr_type* %13 to %struct.crypto_instance*
  %15 = call i64 @IS_ERR(%struct.crypto_instance* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.crypto_instance* @ERR_PTR(i32 %18)
  store %struct.crypto_instance* %19, %struct.crypto_instance** %2, align 8
  br label %99

20:                                               ; preds = %1
  %21 = call i32 (...) @crypto_get_default_rng()
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.crypto_instance* @ERR_PTR(i32 %25)
  store %struct.crypto_instance* %26, %struct.crypto_instance** %2, align 8
  br label %99

27:                                               ; preds = %20
  %28 = load %struct.rtattr**, %struct.rtattr*** %3, align 8
  %29 = call %struct.crypto_instance* @skcipher_geniv_alloc(i32* @chainiv_tmpl, %struct.rtattr** %28, i32 0, i32 0)
  store %struct.crypto_instance* %29, %struct.crypto_instance** %5, align 8
  %30 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %31 = call i64 @IS_ERR(%struct.crypto_instance* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %97

34:                                               ; preds = %27
  %35 = load i32, i32* @chainiv_givencrypt_first, align 4
  %36 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %37 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* @chainiv_init, align 4
  %41 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %42 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @skcipher_geniv_exit, align 4
  %45 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %46 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.crypto_attr_type*, %struct.crypto_attr_type** %4, align 8
  %55 = getelementptr inbounds %struct.crypto_attr_type, %struct.crypto_attr_type* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @crypto_requires_sync(i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %34
  %60 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %61 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %62 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @async_chainiv_givencrypt_first, align 4
  %67 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %68 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* @async_chainiv_init, align 4
  %72 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %73 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @async_chainiv_exit, align 4
  %76 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %77 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %80 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  br label %82

82:                                               ; preds = %59, %34
  %83 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %84 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %89 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %97, %82
  %96 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  store %struct.crypto_instance* %96, %struct.crypto_instance** %2, align 8
  br label %99

97:                                               ; preds = %33
  %98 = call i32 (...) @crypto_put_default_rng()
  br label %95

99:                                               ; preds = %95, %24, %17
  %100 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  ret %struct.crypto_instance* %100
}

declare dso_local %struct.crypto_instance* @crypto_get_attr_type(%struct.rtattr**) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_instance*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #1

declare dso_local i32 @crypto_get_default_rng(...) #1

declare dso_local %struct.crypto_instance* @skcipher_geniv_alloc(i32*, %struct.rtattr**, i32, i32) #1

declare dso_local i32 @crypto_requires_sync(i32, i32) #1

declare dso_local i32 @crypto_put_default_rng(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
