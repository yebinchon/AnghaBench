; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_hw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_phy_hw_reset\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Resetting Phy...\0A\00", align 1
@e1000_82543 = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP4_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP4_DATA = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_phy_hw_reset(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_82543, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @CTRL, align 4
  %15 = call i32 @er32(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ew32(i32 %16, i32 %19)
  %21 = call i32 (...) @E1000_WRITE_FLUSH()
  %22 = call i32 @msleep(i32 10)
  %23 = load i32, i32* @CTRL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ew32(i32 %23, i32 %24)
  %26 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %49

27:                                               ; preds = %1
  %28 = load i32, i32* @CTRL_EXT, align 4
  %29 = call i32 @er32(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @E1000_CTRL_EXT_SDP4_DIR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @E1000_CTRL_EXT_SDP4_DATA, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @CTRL_EXT, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ew32(i32 %37, i32 %38)
  %40 = call i32 (...) @E1000_WRITE_FLUSH()
  %41 = call i32 @msleep(i32 10)
  %42 = load i32, i32* @E1000_CTRL_EXT_SDP4_DATA, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @CTRL_EXT, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ew32(i32 %45, i32 %46)
  %48 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %49

49:                                               ; preds = %27, %13
  %50 = call i32 @udelay(i32 150)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @e1000_82541, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @e1000_82547, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56, %49
  %63 = load i32, i32* @LEDCTL, align 4
  %64 = call i32 @er32(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %69 = load i32, i32* @IGP_LED3_MODE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @LEDCTL, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ew32(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %62, %56
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = call i32 @e1000_get_phy_cfg_done(%struct.e1000_hw* %77)
  ret i32 %78
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_get_phy_cfg_done(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
