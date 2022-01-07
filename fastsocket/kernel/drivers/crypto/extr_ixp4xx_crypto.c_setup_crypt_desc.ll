; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_setup_crypt_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_setup_crypt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev = common dso_local global i32 0, align 4
@NPE_QLEN = common dso_local global i32 0, align 4
@crypt_phys = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@crypt_virt = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_crypt_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_crypt_desc() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @BUILD_BUG_ON(i32 1)
  %3 = load i32, i32* @dev, align 4
  %4 = load i32, i32* @NPE_QLEN, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @dma_alloc_coherent(i32 %3, i32 %7, i32* @crypt_phys, i32 %8)
  store i32 %9, i32* @crypt_virt, align 4
  %10 = load i32, i32* @crypt_virt, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @crypt_virt, align 4
  %17 = load i32, i32* @NPE_QLEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32 %16, i32 0, i32 %20)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
