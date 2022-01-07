; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ecb.c_crypto_ecb_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ecb.c_crypto_ecb_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i64 }
%struct.crypto_instance = type { i32 }
%struct.crypto_spawn = type { i32 }
%struct.crypto_ecb_ctx = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_ecb_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ecb_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca %struct.crypto_ecb_ctx*, align 8
  %7 = alloca %struct.crypto_cipher*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.crypto_instance*
  store %struct.crypto_instance* %12, %struct.crypto_instance** %4, align 8
  %13 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %14 = call %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance* %13)
  store %struct.crypto_spawn* %14, %struct.crypto_spawn** %5, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %16 = call %struct.crypto_ecb_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.crypto_ecb_ctx* %16, %struct.crypto_ecb_ctx** %6, align 8
  %17 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %18 = call %struct.crypto_cipher* @crypto_spawn_cipher(%struct.crypto_spawn* %17)
  store %struct.crypto_cipher* %18, %struct.crypto_cipher** %7, align 8
  %19 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_cipher* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_cipher* %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.crypto_cipher*, %struct.crypto_cipher** %7, align 8
  %27 = load %struct.crypto_ecb_ctx*, %struct.crypto_ecb_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.crypto_ecb_ctx, %struct.crypto_ecb_ctx* %27, i32 0, i32 0
  store %struct.crypto_cipher* %26, %struct.crypto_cipher** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_ecb_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_cipher* @crypto_spawn_cipher(%struct.crypto_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_cipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
