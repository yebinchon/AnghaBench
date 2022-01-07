; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_setup_fan_failure_detection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_setup_fan_failure_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@dev_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SHARED_HW_CFG_FAN_FAILURE_MASK = common dso_local global i32 0, align 4
@SHARED_HW_CFG_FAN_FAILURE_ENABLED = common dso_local global i32 0, align 4
@SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE = common dso_local global i32 0, align 4
@PORT_0 = common dso_local global i32 0, align 4
@PORT_MAX = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fan detection setting: %d\0A\00", align 1
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@MISC_SPIO_INPUT_HI_Z = common dso_local global i32 0, align 4
@MISC_REG_SPIO_INT = common dso_local global i32 0, align 4
@MISC_SPIO_INT_OLD_SET_POS = common dso_local global i32 0, align 4
@MISC_REG_SPIO_EVENT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_setup_fan_failure_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_setup_fan_failure_detection(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i64 @BP_NOMCP(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %83

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_info, i32 0, i32 0, i32 0), align 4
  %13 = call i32 @SHMEM_RD(%struct.bnx2x* %11, i32 %12)
  %14 = load i32, i32* @SHARED_HW_CFG_FAN_FAILURE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SHARED_HW_CFG_FAN_FAILURE_ENABLED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %49

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i32, i32* @PORT_0, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %24
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PORT_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bnx2x_fan_failure_det_req(%struct.bnx2x* %31, i32 %35, i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %20
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* @NETIF_MSG_HW, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @DP(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %83

56:                                               ; preds = %49
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %59 = load i32, i32* @MISC_SPIO_INPUT_HI_Z, align 4
  %60 = call i32 @bnx2x_set_spio(%struct.bnx2x* %57, i32 %58, i32 %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %62 = load i32, i32* @MISC_REG_SPIO_INT, align 4
  %63 = call i32 @REG_RD(%struct.bnx2x* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %65 = load i32, i32* @MISC_SPIO_INT_OLD_SET_POS, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = load i32, i32* @MISC_REG_SPIO_INT, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @REG_WR(%struct.bnx2x* %69, i32 %70, i32 %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %75 = call i32 @REG_RD(%struct.bnx2x* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @REG_WR(%struct.bnx2x* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %56, %55, %9
  ret void
}

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_fan_failure_det_req(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_set_spio(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
