; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_setup_link_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_setup_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.1 = type opaque

@e1000_fc_default = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", align 1
@FCT = common dso_local global i32 0, align 4
@FLOW_CONTROL_TYPE = common dso_local global i32 0, align 4
@FCAH = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_HIGH = common dso_local global i32 0, align 4
@FCAL = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_LOW = common dso_local global i32 0, align 4
@FCTTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_setup_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %8, align 8
  %10 = icmp ne i64 (%struct.e1000_hw.1*)* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.1*
  %19 = call i64 %16(%struct.e1000_hw.1* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i64 0, i64* %2, align 8
  br label %81

22:                                               ; preds = %11, %1
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_fc_default, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = call i64 @e1000_set_default_fc_generic(%struct.e1000_hw* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %2, align 8
  br label %81

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.0*
  %57 = call i64 %54(%struct.e1000_hw.0* %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %81

62:                                               ; preds = %37
  %63 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @FCT, align 4
  %65 = load i32, i32* @FLOW_CONTROL_TYPE, align 4
  %66 = call i32 @ew32(i32 %64, i32 %65)
  %67 = load i32, i32* @FCAH, align 4
  %68 = load i32, i32* @FLOW_CONTROL_ADDRESS_HIGH, align 4
  %69 = call i32 @ew32(i32 %67, i32 %68)
  %70 = load i32, i32* @FCAL, align 4
  %71 = load i32, i32* @FLOW_CONTROL_ADDRESS_LOW, align 4
  %72 = call i32 @ew32(i32 %70, i32 %71)
  %73 = load i32, i32* @FCTTV, align 4
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ew32(i32 %73, i32 %77)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = call i64 @e1000e_set_fc_watermarks(%struct.e1000_hw* %79)
  store i64 %80, i64* %2, align 8
  br label %81

81:                                               ; preds = %62, %60, %34, %21
  %82 = load i64, i64* %2, align 8
  ret i64 %82
}

declare dso_local i64 @e1000_set_default_fc_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000e_set_fc_watermarks(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
