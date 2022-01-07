; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tx_desc_arbiter_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tx_desc_arbiter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_RTTDQSEL = common dso_local global i32 0, align 4
@IXGBE_RTTDT1C = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_RTTDT2C_MCL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_RTTDT2C_BWG_SHIFT = common dso_local global i32 0, align 4
@prio_group = common dso_local global i32 0, align 4
@IXGBE_RTTDT2C_GSP = common dso_local global i32 0, align 4
@prio_link = common dso_local global i32 0, align 4
@IXGBE_RTTDT2C_LSP = common dso_local global i32 0, align 4
@IXGBE_RTTDCS_TDPAC = common dso_local global i32 0, align 4
@IXGBE_RTTDCS_TDRM = common dso_local global i32 0, align 4
@IXGBE_RTTDCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_tx_desc_arbiter_82599(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %25, %5
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = load i32, i32* @IXGBE_RTTDQSEL, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %23 = load i32, i32* @IXGBE_RTTDT1C, align 4
  %24 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %13, align 4
  br label %14

28:                                               ; preds = %14
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %87, %28
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @IXGBE_RTTDT2C_MCL_SHIFT, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IXGBE_RTTDT2C_BWG_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @prio_group, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %33
  %66 = load i32, i32* @IXGBE_RTTDT2C_GSP, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %33
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @prio_link, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32, i32* @IXGBE_RTTDT2C_LSP, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %69
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @IXGBE_RTTDT2C(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %29

90:                                               ; preds = %29
  %91 = load i32, i32* @IXGBE_RTTDCS_TDPAC, align 4
  %92 = load i32, i32* @IXGBE_RTTDCS_TDRM, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %95 = load i32, i32* @IXGBE_RTTDCS, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %94, i32 %95, i32 %96)
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RTTDT2C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
