; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_aes_ks_subword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_aes_ks_subword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aes_sbox = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aes_ks_subword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_ks_subword(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i64], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %6 = bitcast i64* %5 to i32*
  store i32 %4, i32* %6, align 16
  %7 = load i64*, i64** @aes_sbox, align 8
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %9 = load i64, i64* %8, align 16
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  store i64 %11, i64* %12, align 16
  %13 = load i64*, i64** @aes_sbox, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** @aes_sbox, align 8
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %21 = load i64, i64* %20, align 16
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  store i64 %23, i64* %24, align 16
  %25 = load i64*, i64** @aes_sbox, align 8
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %32 = bitcast i64* %31 to i32*
  %33 = load i32, i32* %32, align 16
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
