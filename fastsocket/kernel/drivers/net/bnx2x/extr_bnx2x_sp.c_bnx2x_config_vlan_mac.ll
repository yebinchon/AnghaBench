; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_ramrod_params = type { i64, %struct.bnx2x_vlan_mac_obj* }
%struct.bnx2x_vlan_mac_obj = type { i32, %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)* }
%struct.bnx2x.0 = type opaque

@RAMROD_CONT = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RAMROD_DRV_CLR_ONLY requested: clearing a pending bit.\0A\00", align 1
@RAMROD_EXEC = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_vlan_mac(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_vlan_mac_ramrod_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_raw_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_vlan_mac_ramrod_params* %1, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 1
  %14 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %13, align 8
  store %struct.bnx2x_vlan_mac_obj* %14, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %15 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %15, i32 0, i32 0
  store i64* %16, i64** %8, align 8
  %17 = load i32, i32* @RAMROD_CONT, align 4
  %18 = load i64*, i64** %8, align 8
  %19 = call i32 @test_bit(i32 %17, i64* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %20, i32 0, i32 1
  store %struct.bnx2x_raw_obj* %21, %struct.bnx2x_raw_obj** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %27 = call i32 @bnx2x_vlan_mac_push_new_cmd(%struct.bnx2x* %25, %struct.bnx2x_vlan_mac_ramrod_params* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %35 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %34, i32 0, i32 0
  %36 = call i32 @bnx2x_exe_queue_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = call i32 @test_bit(i32 %40, i64* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @BNX2X_MSG_SP, align 4
  %46 = call i32 @DP(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %48 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %47, i32 0, i32 1
  %49 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %48, align 8
  %50 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %51 = call i32 %49(%struct.bnx2x_raw_obj* %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @RAMROD_EXEC, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 @test_bit(i32 %56, i64* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %62 = load i64*, i64** %8, align 8
  %63 = call i32 @test_bit(i32 %61, i64* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60, %55, %52
  %66 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %67 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %68 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %67, i32 0, i32 0
  %69 = load i64*, i64** %8, align 8
  %70 = call i32 @bnx2x_exe_queue_step(%struct.bnx2x* %66, i32* %68, i64* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %124

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %78 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %79 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %78, i32 0, i32 0
  %80 = call i32 @test_bit(i32 %77, i64* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %76
  %83 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %84 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %83, i32 0, i32 0
  %85 = call i32 @bnx2x_exe_queue_length(i32* %84)
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %120, %82
  %88 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %89 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %88, i32 0, i32 0
  %90 = call i32 @bnx2x_exe_queue_empty(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %93, 0
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i1 [ false, %87 ], [ %95, %92 ]
  br i1 %97, label %98, label %121

98:                                               ; preds = %96
  %99 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %100 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %99, i32 0, i32 0
  %101 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)** %100, align 8
  %102 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %103 = bitcast %struct.bnx2x* %102 to %struct.bnx2x.0*
  %104 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %105 = call i32 %101(%struct.bnx2x.0* %103, %struct.bnx2x_raw_obj* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %124

110:                                              ; preds = %98
  %111 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %112 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %113 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %112, i32 0, i32 0
  %114 = load i64*, i64** %8, align 8
  %115 = call i32 @bnx2x_exe_queue_step(%struct.bnx2x* %111, i32* %113, i64* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %124

120:                                              ; preds = %110
  br label %87

121:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %124

122:                                              ; preds = %76
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %121, %118, %108, %73, %30
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vlan_mac_push_new_cmd(%struct.bnx2x*, %struct.bnx2x_vlan_mac_ramrod_params*) #1

declare dso_local i32 @bnx2x_exe_queue_empty(i32*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_exe_queue_step(%struct.bnx2x*, i32*, i64*) #1

declare dso_local i32 @bnx2x_exe_queue_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
