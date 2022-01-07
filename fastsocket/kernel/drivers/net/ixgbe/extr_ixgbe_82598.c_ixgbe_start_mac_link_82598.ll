; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_start_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_start_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_AN_RESTART = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTO_NEG_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i64 0, align 8
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Autonegotiation did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_start_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_start_mac_link_82598(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = load i32, i32* @IXGBE_AUTOC, align 4
  %11 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @IXGBE_AUTOC_AN_RESTART, align 8
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = load i32, i32* @IXGBE_AUTOC, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %16, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %24 = and i64 %22, %23
  %25 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN_1G_AN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27, %21
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @IXGBE_AUTO_NEG_TIME, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_LINKS, align 4
  %41 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %52

47:                                               ; preds = %38
  %48 = call i32 @msleep(i32 100)
  br label %49

49:                                               ; preds = %47
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %34

52:                                               ; preds = %46, %34
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = call i32 @hw_dbg(%struct.ixgbe_hw* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %27
  br label %63

63:                                               ; preds = %62, %2
  %64 = call i32 @msleep(i32 50)
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
