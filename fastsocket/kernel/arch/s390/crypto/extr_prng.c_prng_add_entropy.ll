; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_prng.c_prng_add_entropy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_prng.c_prng_add_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KMC_PRNG = common dso_local global i32 0, align 4
@parm_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prng_add_entropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prng_add_entropy() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load i32, i32* @KMC_PRNG, align 4
  %9 = load i32, i32* @parm_block, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %11 = bitcast i32* %10 to i8*
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @crypt_s390_kmc(i32 %8, i32 %9, i8* %11, i8* %13, i32 16)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i1 [ true, %7 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* @parm_block, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %27 = call i32 @memcpy(i32 %25, i32* %26, i32 16)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %4

31:                                               ; preds = %4
  ret void
}

declare dso_local i32 @crypt_s390_kmc(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
