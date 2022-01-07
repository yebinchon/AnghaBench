; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_validate_link_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_validate_link_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_DEV_ID_82598AT2 = common dso_local global i64 0, align 8
@IXGBE_VALIDATE_LINK_READY_TIMEOUT = common dso_local global i64 0, align 8
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_COMPLETE = common dso_local global i32 0, align 4
@MDIO_STAT1_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Link was indicated but link is down\0A\00", align 1
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_validate_link_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_validate_link_ready(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IXGBE_DEV_ID_82598AT2, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %40, %12
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IXGBE_VALIDATE_LINK_READY_TIMEOUT, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.0*
  %25 = load i32, i32* @MDIO_STAT1, align 4
  %26 = load i32, i32* @MDIO_MMD_AN, align 4
  %27 = call i32 %22(%struct.ixgbe_hw.0* %24, i32 %25, i32 %26, i32* %5)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MDIO_AN_STAT1_COMPLETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %43

38:                                               ; preds = %32, %17
  %39 = call i32 @msleep(i32 100)
  br label %40

40:                                               ; preds = %38
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %13

43:                                               ; preds = %37, %13
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @IXGBE_VALIDATE_LINK_READY_TIMEOUT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = call i32 @hw_dbg(%struct.ixgbe_hw* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %47, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
