; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cryptd_instance_ctx = type { i32 }
%struct.hashd_instance_ctx = type { i32 }
%struct.aead_instance_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_instance*)* @cryptd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptd_free(%struct.crypto_instance* %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  %3 = alloca %struct.cryptd_instance_ctx*, align 8
  %4 = alloca %struct.hashd_instance_ctx*, align 8
  %5 = alloca %struct.aead_instance_ctx*, align 8
  store %struct.crypto_instance* %0, %struct.crypto_instance** %2, align 8
  %6 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %7 = call i8* @crypto_instance_ctx(%struct.crypto_instance* %6)
  %8 = bitcast i8* %7 to %struct.cryptd_instance_ctx*
  store %struct.cryptd_instance_ctx* %8, %struct.cryptd_instance_ctx** %3, align 8
  %9 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %10 = call i8* @crypto_instance_ctx(%struct.crypto_instance* %9)
  %11 = bitcast i8* %10 to %struct.hashd_instance_ctx*
  store %struct.hashd_instance_ctx* %11, %struct.hashd_instance_ctx** %4, align 8
  %12 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %13 = call i8* @crypto_instance_ctx(%struct.crypto_instance* %12)
  %14 = bitcast i8* %13 to %struct.aead_instance_ctx*
  store %struct.aead_instance_ctx* %14, %struct.aead_instance_ctx** %5, align 8
  %15 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %16 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %35 [
    i32 128, label %21
    i32 129, label %28
  ]

21:                                               ; preds = %1
  %22 = load %struct.hashd_instance_ctx*, %struct.hashd_instance_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.hashd_instance_ctx, %struct.hashd_instance_ctx* %22, i32 0, i32 0
  %24 = call i32 @crypto_drop_shash(i32* %23)
  %25 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %26 = call %struct.crypto_instance* @ahash_instance(%struct.crypto_instance* %25)
  %27 = call i32 @kfree(%struct.crypto_instance* %26)
  br label %41

28:                                               ; preds = %1
  %29 = load %struct.aead_instance_ctx*, %struct.aead_instance_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.aead_instance_ctx, %struct.aead_instance_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @crypto_drop_spawn(i32* %31)
  %33 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %34 = call i32 @kfree(%struct.crypto_instance* %33)
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.cryptd_instance_ctx*, %struct.cryptd_instance_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.cryptd_instance_ctx, %struct.cryptd_instance_ctx* %36, i32 0, i32 0
  %38 = call i32 @crypto_drop_spawn(i32* %37)
  %39 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %40 = call i32 @kfree(%struct.crypto_instance* %39)
  br label %41

41:                                               ; preds = %21, %28, %35
  ret void
}

declare dso_local i8* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_drop_shash(i32*) #1

declare dso_local i32 @kfree(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @ahash_instance(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_drop_spawn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
