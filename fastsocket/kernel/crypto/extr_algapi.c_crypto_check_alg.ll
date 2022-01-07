; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_check_alg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_check_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*)* @crypto_check_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_check_alg(%struct.crypto_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_alg*, align 8
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  %4 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %5 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  %11 = and i32 %6, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %18 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sdiv i32 %20, 8
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %16
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %28 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %36 = call i32 @crypto_set_driver_name(%struct.crypto_alg* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %31, %23, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @crypto_set_driver_name(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
