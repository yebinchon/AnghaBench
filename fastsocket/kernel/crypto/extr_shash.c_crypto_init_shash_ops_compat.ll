; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_init_shash_ops_compat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_init_shash_ops_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg*, %struct.hash_tfm }
%struct.crypto_alg = type { i32 }
%struct.hash_tfm = type { i32, i32, i32, i32, i32, i32 }
%struct.shash_alg = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@crypto_shash_type = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@crypto_exit_shash_ops_compat = common dso_local global i32 0, align 4
@shash_compat_init = common dso_local global i32 0, align 4
@shash_compat_update = common dso_local global i32 0, align 4
@shash_compat_final = common dso_local global i32 0, align 4
@shash_compat_digest = common dso_local global i32 0, align 4
@shash_compat_setkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_init_shash_ops_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_shash_ops_compat(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.hash_tfm*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca %struct.shash_alg*, align 8
  %7 = alloca %struct.shash_desc**, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.shash_desc*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 2
  store %struct.hash_tfm* %11, %struct.hash_tfm** %4, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %12, i32 0, i32 1
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  store %struct.crypto_alg* %14, %struct.crypto_alg** %5, align 8
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %16 = call %struct.shash_alg* @__crypto_shash_alg(%struct.crypto_alg* %15)
  store %struct.shash_alg* %16, %struct.shash_alg** %6, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %18 = call %struct.shash_desc** @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.shash_desc** %18, %struct.shash_desc*** %7, align 8
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %20 = call i32 @crypto_mod_get(%struct.crypto_alg* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %78

25:                                               ; preds = %1
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %27 = call %struct.crypto_shash* @crypto_create_tfm(%struct.crypto_alg* %26, i32* @crypto_shash_type)
  store %struct.crypto_shash* %27, %struct.crypto_shash** %8, align 8
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %29 = call i64 @IS_ERR(%struct.crypto_shash* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %33 = call i32 @crypto_mod_put(%struct.crypto_alg* %32)
  %34 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %35 = call i32 @PTR_ERR(%struct.crypto_shash* %34)
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %25
  %37 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %38 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %37)
  %39 = add i64 8, %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.shash_desc* @kmalloc(i64 %39, i32 %40)
  store %struct.shash_desc* %41, %struct.shash_desc** %9, align 8
  %42 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %43 = icmp ne %struct.shash_desc* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %46 = call i32 @crypto_free_shash(%struct.crypto_shash* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %78

49:                                               ; preds = %36
  %50 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %51 = load %struct.shash_desc**, %struct.shash_desc*** %7, align 8
  store %struct.shash_desc* %50, %struct.shash_desc** %51, align 8
  %52 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %53 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %54 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %53, i32 0, i32 0
  store %struct.crypto_shash* %52, %struct.crypto_shash** %54, align 8
  %55 = load i32, i32* @crypto_exit_shash_ops_compat, align 4
  %56 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %57 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @shash_compat_init, align 4
  %59 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %60 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @shash_compat_update, align 4
  %62 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %63 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @shash_compat_final, align 4
  %65 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %66 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @shash_compat_digest, align 4
  %68 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %69 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @shash_compat_setkey, align 4
  %71 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %72 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.shash_alg*, %struct.shash_alg** %6, align 8
  %74 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hash_tfm*, %struct.hash_tfm** %4, align 8
  %77 = getelementptr inbounds %struct.hash_tfm, %struct.hash_tfm* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %49, %44, %31, %22
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.shash_alg* @__crypto_shash_alg(%struct.crypto_alg*) #1

declare dso_local %struct.shash_desc** @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_shash* @crypto_create_tfm(%struct.crypto_alg*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local %struct.shash_desc* @kmalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
