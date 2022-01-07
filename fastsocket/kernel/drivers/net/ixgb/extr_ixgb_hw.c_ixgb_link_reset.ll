; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@MAX_RESET_ITERATIONS = common dso_local global i64 0, align 8
@CTRL0 = common dso_local global i32 0, align 4
@IXGB_CTRL0_LRST = common dso_local global i32 0, align 4
@IXGB_DELAY_USECS_AFTER_LINK_RESET = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IXGB_STATUS_LU = common dso_local global i32 0, align 4
@XPCSS = common dso_local global i32 0, align 4
@IXGB_XPCSS_ALIGN_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_link_reset(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i64, i64* @MAX_RESET_ITERATIONS, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* @MAX_RESET_ITERATIONS, align 8
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %54, %1
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %10 = load i32, i32* @CTRL0, align 4
  %11 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %12 = load i32, i32* @CTRL0, align 4
  %13 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %11, i32 %12)
  %14 = load i32, i32* @IXGB_CTRL0_LRST, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %9, i32 %10, i32 %15)
  br label %17

17:                                               ; preds = %44, %8
  %18 = load i32, i32* @IXGB_DELAY_USECS_AFTER_LINK_RESET, align 4
  %19 = call i32 @udelay(i32 %18)
  %20 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %21 = load i32, i32* @STATUS, align 4
  %22 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %20, i32 %21)
  %23 = load i32, i32* @IXGB_STATUS_LU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %28 = load i32, i32* @XPCSS, align 4
  %29 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %27, i32 %28)
  %30 = load i32, i32* @IXGB_XPCSS_ALIGN_STATUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %26, %17
  %34 = phi i1 [ false, %17 ], [ %32, %26 ]
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %17, label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %8, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
