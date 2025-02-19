; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_fflp_set_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_fflp_set_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@FCRAM_NUM_PARTITIONS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FLW_PRT_SEL_EXT = common dso_local global i64 0, align 8
@FLW_PRT_SEL_MASK = common dso_local global i64 0, align 8
@FLW_PRT_SEL_BASE = common dso_local global i64 0, align 8
@FLW_PRT_SEL_MASK_SHIFT = common dso_local global i64 0, align 8
@FLW_PRT_SEL_BASE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i64, i64, i64, i32)* @fflp_set_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fflp_set_partition(%struct.niu* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @FCRAM_NUM_PARTITIONS, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = and i64 %18, -32
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = and i64 %22, -32
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %17, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @FLW_PRT_SEL(i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @nr64(i64 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* @FLW_PRT_SEL_EXT, align 8
  %34 = load i64, i64* @FLW_PRT_SEL_MASK, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @FLW_PRT_SEL_BASE, align 8
  %37 = or i64 %35, %36
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %13, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @FLW_PRT_SEL_MASK_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = load i64, i64* %13, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @FLW_PRT_SEL_BASE_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %13, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %28
  %54 = load i64, i64* @FLW_PRT_SEL_EXT, align 8
  %55 = load i64, i64* %13, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %53, %28
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @nw64(i64 %58, i64 %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %25
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @FLW_PRT_SEL(i64) #1

declare dso_local i64 @nr64(i64) #1

declare dso_local i32 @nw64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
