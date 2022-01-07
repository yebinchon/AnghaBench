; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c___qlcnic_83xx_process_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c___qlcnic_83xx_process_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32* }

@QLC_83XX_MBX_AEN_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SFP+ Insert AEN:0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SFP Removed AEN:0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unsupported AEN:0x%x.\0A\00", align 1
@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_CLR_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load i32, i32* @QLC_83XX_MBX_AEN_CNT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 3
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %6, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @QLC_83XX_MBX_AEN_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %19, i32 %20)
  %22 = call i32 @readl(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %10, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %14

29:                                               ; preds = %14
  %30 = getelementptr inbounds i32, i32* %10, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = call i32 @QLCNIC_MBX_RSP(i32 %31)
  switch i32 %32, label %92 [
    i32 132, label %33
    i32 133, label %36
    i32 131, label %39
    i32 128, label %68
    i32 134, label %69
    i32 130, label %74
    i32 129, label %83
  ]

33:                                               ; preds = %29
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %35 = call i32 @qlcnic_83xx_handle_link_aen(%struct.qlcnic_adapter* %34, i32* %10)
  br label %101

36:                                               ; preds = %29
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %38 = call i32 @qlcnic_83xx_handle_idc_comp_aen(%struct.qlcnic_adapter* %37, i32* %10)
  br label %101

39:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @QLC_83XX_MBX_AEN_CNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %10, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @QLCNIC_MBX_RSP(i32 %48)
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 3
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %51, align 8
  %53 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %49, i32* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 1
  %67 = call i32 @queue_delayed_work(i32 %64, i32* %66, i32 0)
  br label %101

68:                                               ; preds = %29
  br label %101

69:                                               ; preds = %29
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %71 = getelementptr inbounds i32, i32* %10, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @qlcnic_sriov_handle_bc_event(%struct.qlcnic_adapter* %70, i32 %72)
  br label %101

74:                                               ; preds = %29
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = getelementptr inbounds i32, i32* %10, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = call i32 @QLCNIC_MBX_RSP(i32 %80)
  %82 = call i32 @dev_info(i32* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %101

83:                                               ; preds = %29
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = getelementptr inbounds i32, i32* %10, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = call i32 @QLCNIC_MBX_RSP(i32 %89)
  %91 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %101

92:                                               ; preds = %29
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = getelementptr inbounds i32, i32* %10, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = call i32 @QLCNIC_MBX_RSP(i32 %98)
  %100 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %92, %83, %74, %69, %68, %61, %36, %33
  %102 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %103 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %104 = load i32, i32* @QLCNIC_CLR_OWNER, align 4
  %105 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %102, i32 %103, i32 %104)
  %106 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readl(i32) #2

declare dso_local i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context*, i32) #2

declare dso_local i32 @QLCNIC_MBX_RSP(i32) #2

declare dso_local i32 @qlcnic_83xx_handle_link_aen(%struct.qlcnic_adapter*, i32*) #2

declare dso_local i32 @qlcnic_83xx_handle_idc_comp_aen(%struct.qlcnic_adapter*, i32*) #2

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @qlcnic_sriov_handle_bc_event(%struct.qlcnic_adapter*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

declare dso_local i32 @QLCWRX(%struct.qlcnic_hardware_context*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
