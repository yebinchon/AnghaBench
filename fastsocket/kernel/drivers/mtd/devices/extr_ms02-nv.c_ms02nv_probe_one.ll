; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_ms02-nv.c_ms02nv_probe_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_ms02-nv.c_ms02nv_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS02NV_DIAG = common dso_local global i64 0, align 8
@MS02NV_MAGIC = common dso_local global i64 0, align 8
@MS02NV_ID = common dso_local global i64 0, align 8
@MS02NV_DIAG_SIZE_MASK = common dso_local global i64 0, align 8
@MS02NV_DIAG_SIZE_SHIFT = common dso_local global i64 0, align 8
@MS02NV_CSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ms02nv_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ms02nv_probe_one(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MS02NV_DIAG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @CKSEG1ADDR(i64 %12)
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @MS02NV_MAGIC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @CKSEG1ADDR(i64 %17)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = call i32 @get_dbe(i64 %20, i64* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %46

26:                                               ; preds = %1
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MS02NV_ID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 0, i64* %2, align 8
  br label %46

31:                                               ; preds = %26
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @MS02NV_DIAG_SIZE_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @MS02NV_DIAG_SIZE_SHIFT, align 8
  %38 = shl i64 %36, %37
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @MS02NV_CSR, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i64, i64* @MS02NV_CSR, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %30, %25
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @CKSEG1ADDR(i64) #1

declare dso_local i32 @get_dbe(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
