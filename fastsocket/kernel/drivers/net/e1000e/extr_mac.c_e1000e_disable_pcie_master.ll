; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_disable_pcie_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_disable_pcie_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@MASTER_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_GIO_MASTER_DISABLE = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_GIO_MASTER_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Master requests are pending.\0A\00", align 1
@E1000_ERR_MASTER_REQUESTS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_disable_pcie_master(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @MASTER_DISABLE_TIMEOUT, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* @CTRL, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @E1000_CTRL_GIO_MASTER_DISABLE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @CTRL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ew32(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %25, %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* @STATUS, align 4
  %20 = call i32 @er32(i32 %19)
  %21 = load i32, i32* @E1000_STATUS_GIO_MASTER_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  %26 = call i32 @usleep_range(i32 100, i32 200)
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %5, align 8
  br label %15

29:                                               ; preds = %24, %15
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @E1000_ERR_MASTER_REQUESTS_PENDING, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %2, align 8
  br label %37

36:                                               ; preds = %29
  store i64 0, i64* %2, align 8
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
