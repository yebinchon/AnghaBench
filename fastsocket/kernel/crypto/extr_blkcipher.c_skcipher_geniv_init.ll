; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_skcipher_geniv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_skcipher_geniv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, %struct.crypto_ablkcipher* }
%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_instance = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skcipher_geniv_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.crypto_instance*
  store %struct.crypto_instance* %10, %struct.crypto_instance** %4, align 8
  %11 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %12 = call i32 @crypto_instance_ctx(%struct.crypto_instance* %11)
  %13 = call %struct.crypto_ablkcipher* @crypto_spawn_skcipher(i32 %12)
  store %struct.crypto_ablkcipher* %13, %struct.crypto_ablkcipher** %5, align 8
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %15 = call i64 @IS_ERR(%struct.crypto_ablkcipher* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.crypto_ablkcipher* %18)
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %22 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %23 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.crypto_ablkcipher* %21, %struct.crypto_ablkcipher** %24, align 8
  %25 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %26 = call i64 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher* %25)
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %28 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %26
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.crypto_ablkcipher* @crypto_spawn_skcipher(i32) #1

declare dso_local i32 @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_ablkcipher_reqsize(%struct.crypto_ablkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
