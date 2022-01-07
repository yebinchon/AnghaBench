; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_main.c_ixgb_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_main.c_ixgb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { %struct.ixgb_hw }
%struct.ixgb_hw = type { i32 }

@PROBE = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ixgb_init_hw failed.\0A\00", align 1
@MFS = common dso_local global i32 0, align 4
@IXGB_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS = common dso_local global i32 0, align 4
@ENET_FCS_LENGTH = common dso_local global i32 0, align 4
@CTRL0 = common dso_local global i32 0, align 4
@IXGB_CTRL0_JFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_reset(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %5 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %5, i32 0, i32 0
  store %struct.ixgb_hw* %6, %struct.ixgb_hw** %3, align 8
  %7 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %8 = call i32 @ixgb_adapter_stop(%struct.ixgb_hw* %7)
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %10 = call i32 @ixgb_init_hw(%struct.ixgb_hw* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @PROBE, align 4
  %14 = load i32, i32* @ERR, align 4
  %15 = call i32 @DPRINTK(i32 %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %18 = load i32, i32* @MFS, align 4
  %19 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IXGB_MFS_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %17, i32 %18, i32 %23)
  %25 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS, align 4
  %29 = load i32, i32* @ENET_FCS_LENGTH, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %16
  %33 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %34 = load i32, i32* @CTRL0, align 4
  %35 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %45 = load i32, i32* @CTRL0, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48, %16
  ret void
}

declare dso_local i32 @ixgb_adapter_stop(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_init_hw(%struct.ixgb_hw*) #1

declare dso_local i32 @DPRINTK(i32, i32, i8*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
