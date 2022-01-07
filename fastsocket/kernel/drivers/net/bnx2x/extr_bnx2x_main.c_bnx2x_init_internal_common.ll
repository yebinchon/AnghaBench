; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_internal_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_init_internal_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@TSTORM_ACCEPT_CLASSIFY_FAILED_OFFSET = common dso_local global i64 0, align 8
@USTORM_AGG_DATA_SIZE = common dso_local global i32 0, align 4
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@USTORM_AGG_DATA_OFFSET = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_IGU_MODE_OFFSET = common dso_local global i64 0, align 8
@HC_IGU_BC_MODE = common dso_local global i32 0, align 4
@HC_IGU_NBC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_init_internal_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_internal_common(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = call i64 @IS_MF_SI(%struct.bnx2x* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %10 = load i64, i64* @TSTORM_ACCEPT_CLASSIFY_FAILED_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @REG_WR8(%struct.bnx2x* %8, i64 %11, i32 2)
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = call i32 @CHIP_IS_E1(%struct.bnx2x* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %20 = load i64, i64* @TSTORM_ACCEPT_CLASSIFY_FAILED_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @REG_WR8(%struct.bnx2x* %18, i64 %21, i32 0)
  br label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %7
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @USTORM_AGG_DATA_SIZE, align 4
  %28 = ashr i32 %27, 2
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %33 = load i64, i64* @USTORM_AGG_DATA_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @REG_WR(%struct.bnx2x* %31, i64 %38, i32 0)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %50 = load i64, i64* @CSTORM_IGU_MODE_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %53 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @HC_IGU_BC_MODE, align 4
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @HC_IGU_NBC_MODE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @REG_WR8(%struct.bnx2x* %48, i64 %51, i32 %60)
  br label %62

62:                                               ; preds = %59, %43
  ret void
}

declare dso_local i64 @IS_MF_SI(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR8(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
