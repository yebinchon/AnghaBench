; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_get_sfp_init_sequence_offsets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_get_sfp_init_sequence_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ixgbe_sfp_type_not_present = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core1 = common dso_local global i64 0, align 8
@IXGBE_PHY_INIT_OFFSET_NL = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT = common dso_local global i32 0, align 4
@IXGBE_PHY_INIT_END_NL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"SFP+ module not supported\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No matching SFP+ module found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %21, i32* %4, align 4
  br label %180

22:                                               ; preds = %3
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_sfp_type_not_present, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @IXGBE_ERR_SFP_NOT_PRESENT, align 4
  store i32 %30, i32* %4, align 4
  br label %180

31:                                               ; preds = %22
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ixgbe_sfp_type_da_cu, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %45, i32* %4, align 4
  br label %180

46:                                               ; preds = %37, %31
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @ixgbe_sfp_type_da_act_lmt_core0, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54, %50, %46
  %63 = load i64, i64* @ixgbe_sfp_type_srlr_core0, align 8
  store i64 %63, i64* %9, align 8
  br label %83

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @ixgbe_sfp_type_da_act_lmt_core1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %72, %68, %64
  %81 = load i64, i64* @ixgbe_sfp_type_srlr_core1, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %76
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.0*
  %91 = load i64, i64* @IXGBE_PHY_INIT_OFFSET_NL, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = call i64 %88(%struct.ixgbe_hw.0* %90, i64 %91, i64* %92)
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 65535
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %83
  %102 = load i32, i32* @IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT, align 4
  store i32 %102, i32* %4, align 4
  br label %180

103:                                              ; preds = %97
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %110, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %113 = bitcast %struct.ixgbe_hw* %112 to %struct.ixgbe_hw.0*
  %114 = load i64*, i64** %6, align 8
  %115 = load i64, i64* %114, align 8
  %116 = call i64 %111(%struct.ixgbe_hw.0* %113, i64 %115, i64* %8)
  br label %117

117:                                              ; preds = %170, %103
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @IXGBE_PHY_INIT_END_NL, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %171

121:                                              ; preds = %117
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = load i64*, i64** %6, align 8
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %132, align 8
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %135 = bitcast %struct.ixgbe_hw* %134 to %struct.ixgbe_hw.0*
  %136 = load i64*, i64** %6, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %7, align 8
  %139 = call i64 %133(%struct.ixgbe_hw.0* %135, i64 %137, i64* %138)
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %125
  %144 = load i64*, i64** %7, align 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 65535
  br i1 %146, label %147, label %151

147:                                              ; preds = %143, %125
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %149 = call i32 @hw_dbg(%struct.ixgbe_hw* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %150 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %150, i32* %4, align 4
  br label %180

151:                                              ; preds = %143
  br label %171

152:                                              ; preds = %121
  %153 = load i64*, i64** %6, align 8
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 2
  store i64 %155, i64* %153, align 8
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %159, align 8
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %162 = bitcast %struct.ixgbe_hw* %161 to %struct.ixgbe_hw.0*
  %163 = load i64*, i64** %6, align 8
  %164 = load i64, i64* %163, align 8
  %165 = call i64 %160(%struct.ixgbe_hw.0* %162, i64 %164, i64* %8)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %152
  %168 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %168, i32* %4, align 4
  br label %180

169:                                              ; preds = %152
  br label %170

170:                                              ; preds = %169
  br label %117

171:                                              ; preds = %151, %117
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* @IXGBE_PHY_INIT_END_NL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %177 = call i32 @hw_dbg(%struct.ixgbe_hw* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %178, i32* %4, align 4
  br label %180

179:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %175, %167, %147, %101, %44, %29, %20
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
