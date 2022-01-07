; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_fpu.c_crypto_fpu_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/crypto/extr_fpu.c_crypto_fpu_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_instance = type { i32 }
%struct.crypto_spawn = type { i32 }
%struct.crypto_fpu_ctx = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_fpu_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_fpu_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca %struct.crypto_fpu_ctx*, align 8
  %7 = alloca %struct.crypto_blkcipher*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = call %struct.crypto_instance* @crypto_tfm_alg_instance(%struct.crypto_tfm* %8)
  store %struct.crypto_instance* %9, %struct.crypto_instance** %4, align 8
  %10 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %11 = call %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance* %10)
  store %struct.crypto_spawn* %11, %struct.crypto_spawn** %5, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %13 = call %struct.crypto_fpu_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.crypto_fpu_ctx* %13, %struct.crypto_fpu_ctx** %6, align 8
  %14 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %15 = call %struct.crypto_blkcipher* @crypto_spawn_blkcipher(%struct.crypto_spawn* %14)
  store %struct.crypto_blkcipher* %15, %struct.crypto_blkcipher** %7, align 8
  %16 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %17 = call i64 @IS_ERR(%struct.crypto_blkcipher* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.crypto_blkcipher* %20)
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %24 = load %struct.crypto_fpu_ctx*, %struct.crypto_fpu_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.crypto_fpu_ctx, %struct.crypto_fpu_ctx* %24, i32 0, i32 0
  store %struct.crypto_blkcipher* %23, %struct.crypto_blkcipher** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.crypto_instance* @crypto_tfm_alg_instance(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_fpu_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_blkcipher* @crypto_spawn_blkcipher(%struct.crypto_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_blkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
