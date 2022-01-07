; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c___ecard_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c___ecard_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IO_EC_MEMC8_BASE = common dso_local global i32 0, align 4
@ectcr = common dso_local global i32 0, align 4
@IO_EC_MEMC_BASE = common dso_local global i32 0, align 4
@IO_EC_IOC_BASE = common dso_local global i32 0, align 4
@ECARD_FAST = common dso_local global i32 0, align 4
@IOMD_ECTCR = common dso_local global i32 0, align 4
@IO_EC_EASI_BASE = common dso_local global i32 0, align 4
@IO_EC_IOC4_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @__ecard_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecard_address(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @IO_EC_MEMC8_BASE, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @ectcr, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @ectcr, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %55 [
    i32 128, label %26
    i32 129, label %36
  ]

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @IO_EC_MEMC_BASE, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 12
  %33 = add nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %29, %26
  br label %56

36:                                               ; preds = %19
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @IO_EC_IOC_BASE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 12
  %43 = add nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 17
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %48, %45
  br label %56

55:                                               ; preds = %19
  br label %56

56:                                               ; preds = %55, %54, %35
  %57 = load i64, i64* %8, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
