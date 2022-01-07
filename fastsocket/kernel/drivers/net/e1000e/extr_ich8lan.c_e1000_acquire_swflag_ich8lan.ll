; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_acquire_swflag_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_acquire_swflag_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i32 0, align 4
@__E1000_ACCESS_SHARED_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"contention for Phy access\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_SWFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SW has already locked the resource.\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@SW_FLAG_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"Failed to acquire the semaphore, FW or HW has it: FWSM=0x%8.8x EXTCNF_CTRL=0x%8.8x)\0A\00", align 1
@FWSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_acquire_swflag_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @PHY_CFG_TIMEOUT, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @__E1000_ACCESS_SHARED_RESOURCE, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @test_and_set_bit(i32 %8, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @E1000_ERR_PHY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* @EXTCNF_CTRL, align 4
  %25 = call i32 @er32(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  %32 = call i32 @mdelay(i32 1)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %30, %20
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %83

42:                                               ; preds = %35
  %43 = load i32, i32* @SW_FLAG_TIMEOUT, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @EXTCNF_CTRL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ew32(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %61, %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* @EXTCNF_CTRL, align 4
  %55 = call i32 @er32(i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  %62 = call i32 @mdelay(i32 1)
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %5, align 4
  br label %50

65:                                               ; preds = %60, %50
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @FWSM, align 4
  %70 = call i32 @er32(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* @E1000_EXTCNF_CTRL_SWFLAG, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @EXTCNF_CTRL, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ew32(i32 %77, i32 %78)
  %80 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %83

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %68, %38
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* @__E1000_ACCESS_SHARED_RESOURCE, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %87, i32* %91)
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
