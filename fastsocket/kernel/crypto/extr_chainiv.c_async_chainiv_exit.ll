; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.async_chainiv_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@CHAINIV_STATE_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @async_chainiv_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_chainiv_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.async_chainiv_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = call %struct.async_chainiv_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %4)
  store %struct.async_chainiv_ctx* %5, %struct.async_chainiv_ctx** %3, align 8
  %6 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %7 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %22 = call i32 @skcipher_geniv_exit(%struct.crypto_tfm* %21)
  ret void
}

declare dso_local %struct.async_chainiv_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skcipher_geniv_exit(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
