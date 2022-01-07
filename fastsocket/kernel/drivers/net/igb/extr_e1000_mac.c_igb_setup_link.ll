; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_setup_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@e1000_fc_default = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", align 1
@E1000_FCT = common dso_local global i32 0, align 4
@FLOW_CONTROL_TYPE = common dso_local global i32 0, align 4
@E1000_FCAH = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_HIGH = common dso_local global i32 0, align 4
@E1000_FCAL = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_LOW = common dso_local global i32 0, align 4
@E1000_FCTTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_setup_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = call i64 @igb_check_reset_block(%struct.e1000_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %65

8:                                                ; preds = %1
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_fc_default, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = call i64 @igb_set_default_fc(%struct.e1000_hw* %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %65

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i64 %26, i64* %29, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.0*
  %42 = call i64 %39(%struct.e1000_hw.0* %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %65

46:                                               ; preds = %22
  %47 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @E1000_FCT, align 4
  %49 = load i32, i32* @FLOW_CONTROL_TYPE, align 4
  %50 = call i32 @wr32(i32 %48, i32 %49)
  %51 = load i32, i32* @E1000_FCAH, align 4
  %52 = load i32, i32* @FLOW_CONTROL_ADDRESS_HIGH, align 4
  %53 = call i32 @wr32(i32 %51, i32 %52)
  %54 = load i32, i32* @E1000_FCAL, align 4
  %55 = load i32, i32* @FLOW_CONTROL_ADDRESS_LOW, align 4
  %56 = call i32 @wr32(i32 %54, i32 %55)
  %57 = load i32, i32* @E1000_FCTTV, align 4
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @wr32(i32 %57, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = call i64 @igb_set_fc_watermarks(%struct.e1000_hw* %63)
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %46, %45, %20, %7
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i64 @igb_check_reset_block(%struct.e1000_hw*) #1

declare dso_local i64 @igb_set_default_fc(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i64 @igb_set_fc_watermarks(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
