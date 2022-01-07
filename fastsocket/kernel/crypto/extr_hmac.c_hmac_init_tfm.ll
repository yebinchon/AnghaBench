; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i64 }
%struct.crypto_shash = type { i64 }
%struct.crypto_instance = type { i32 }
%struct.crypto_shash_spawn = type { i32 }
%struct.hmac_ctx = type { %struct.crypto_shash* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @hmac_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_shash*, align 8
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca %struct.crypto_instance*, align 8
  %7 = alloca %struct.crypto_shash_spawn*, align 8
  %8 = alloca %struct.hmac_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = call %struct.crypto_shash* @__crypto_shash_cast(%struct.crypto_tfm* %9)
  store %struct.crypto_shash* %10, %struct.crypto_shash** %4, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.crypto_instance*
  store %struct.crypto_instance* %15, %struct.crypto_instance** %6, align 8
  %16 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  %17 = call %struct.crypto_shash_spawn* @crypto_instance_ctx(%struct.crypto_instance* %16)
  store %struct.crypto_shash_spawn* %17, %struct.crypto_shash_spawn** %7, align 8
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %19 = call %struct.hmac_ctx* @hmac_ctx(%struct.crypto_shash* %18)
  store %struct.hmac_ctx* %19, %struct.hmac_ctx** %8, align 8
  %20 = load %struct.crypto_shash_spawn*, %struct.crypto_shash_spawn** %7, align 8
  %21 = call %struct.crypto_shash* @crypto_spawn_shash(%struct.crypto_shash_spawn* %20)
  store %struct.crypto_shash* %21, %struct.crypto_shash** %5, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %23 = call i64 @IS_ERR(%struct.crypto_shash* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.crypto_shash* %26)
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %1
  %29 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %30 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %29)
  %31 = add i64 4, %30
  %32 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %33 = getelementptr inbounds %struct.crypto_shash, %struct.crypto_shash* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %35 = load %struct.hmac_ctx*, %struct.hmac_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %35, i32 0, i32 0
  store %struct.crypto_shash* %34, %struct.crypto_shash** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.crypto_shash* @__crypto_shash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_shash_spawn* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.hmac_ctx* @hmac_ctx(%struct.crypto_shash*) #1

declare dso_local %struct.crypto_shash* @crypto_spawn_shash(%struct.crypto_shash_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
