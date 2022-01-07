; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_sfp_detection_subtask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_sfp_detection_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_10__*, i32, i32, %struct.ixgbe_hw }
%struct.TYPE_10__ = type { i64 }
%struct.ixgbe_hw = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.2 = type opaque

@IXGBE_FLAG2_SEARCH_FOR_SFP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_SFP_NEEDS_RESET = common dso_local global i32 0, align 4
@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_FLAG_NEED_LINK_CONFIG = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"detected SFP+: %d\0A\00", align 1
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"failed to initialize because an unsupported SFP+ module type was detected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Reload the driver after installing a supported module.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_sfp_detection_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_sfp_detection_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 4
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IXGBE_FLAG2_SEARCH_FOR_SFP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %134

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 2
  %25 = call i64 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %134

28:                                               ; preds = %21
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = call i64 %33(%struct.ixgbe_hw.0* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %111

41:                                               ; preds = %28
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %111

55:                                               ; preds = %51
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %111

63:                                               ; preds = %55
  %64 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %63
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.1*
  %84 = call i64 %81(%struct.ixgbe_hw.1* %83)
  store i64 %84, i64* %4, align 8
  br label %94

85:                                               ; preds = %63
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %89, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = bitcast %struct.ixgbe_hw* %91 to %struct.ixgbe_hw.2*
  %93 = call i64 %90(%struct.ixgbe_hw.2* %92)
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %85, %76
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %111

99:                                               ; preds = %94
  %100 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @probe, align 4
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @e_info(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %99, %98, %62, %54, %40
  %112 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %113 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %113, i32 0, i32 2
  %115 = call i32 @clear_bit(i32 %112, i32* %114)
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @NETREG_REGISTERED, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = call i32 @e_dev_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %129 = call i32 @e_dev_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %131 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = call i32 @unregister_netdev(%struct.TYPE_10__* %132)
  br label %134

134:                                              ; preds = %20, %27, %127, %119, %111
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @e_info(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @e_dev_err(i8*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
