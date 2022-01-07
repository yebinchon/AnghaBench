; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_msft_crc16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_msft_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @csr1212_msft_crc16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csr1212_msft_crc16(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %3, align 8
  store i32 28, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 12
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %24, %25
  %27 = xor i32 %23, %26
  %28 = and i32 %27, 15
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 12
  %33 = xor i32 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 5
  %36 = xor i32 %33, %35
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 4
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65535
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %4, align 8
  br label %9

48:                                               ; preds = %9
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cpu_to_be16(i32 %49)
  ret i32 %50
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
