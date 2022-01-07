; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_pipeline_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_pipeline_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_LINK_DISABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_AN_RESTART = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_AN = common dso_local global i32 0, align 4
@IXGBE_ANLP1 = common dso_local global i32 0, align 4
@IXGBE_ANLP1_AN_STATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"auto negotiation not completed\0A\00", align 1
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = load i32, i32* @IXGBE_AUTOC2, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_AUTOC2, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %24)
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @IXGBE_AUTOC_AN_RESTART, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = load i32, i32* @IXGBE_AUTOC, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %38 = xor i32 %36, %37
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %34, i32 %35, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %54, %26
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = call i32 @usleep_range(i32 4000, i32 8000)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = load i32, i32* @IXGBE_ANLP1, align 4
  %47 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IXGBE_ANLP1_AN_STATE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %40

57:                                               ; preds = %52, %40
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IXGBE_ANLP1_AN_STATE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = call i32 @hw_dbg(%struct.ixgbe_hw* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %65 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %65, i64* %3, align 8
  br label %67

66:                                               ; preds = %57
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %66, %62
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = load i32, i32* @IXGBE_AUTOC, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %72)
  %74 = load i64, i64* %3, align 8
  ret i64 %74
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
