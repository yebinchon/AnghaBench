; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_validate_esw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_validate_esw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.qlcnic_esw_func_cfg = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@QLCNIC_DRV_OP_MODE = common dso_local global i64 0, align 8
@QLC_83XX_DRV_OP_MODE = common dso_local global i32 0, align 4
@QLCNIC_MAX_PCI_FUNC = common dso_local global i64 0, align 8
@QL_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_NON_PRIV_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_esw_func_cfg*, i32)* @validate_esw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_esw_config(%struct.qlcnic_adapter* %0, %struct.qlcnic_esw_func_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_esw_func_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_esw_func_cfg* %1, %struct.qlcnic_esw_func_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QLCNIC_DRV_OP_MODE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* @QLC_83XX_DRV_OP_MODE, align 4
  %29 = call i32 @QLCRDX(%struct.TYPE_2__* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %24, %15
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %159, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %162

35:                                               ; preds = %31
  %36 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %36, i64 %38
  %40 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @QLCNIC_MAX_PCI_FUNC, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %46, i32* %4, align 4
  br label %163

47:                                               ; preds = %35
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter* %56, i64 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %61, i32* %4, align 4
  br label %163

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %64, i64 %66
  %68 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %156 [
    i32 128, label %70
    i32 130, label %123
    i32 129, label %145
  ]

70:                                               ; preds = %63
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %72 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @QLC_DEV_GET_DRV(i32 %75, i64 %76)
  store i32 %77, i32* %11, align 4
  br label %87

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @QLC_83XX_GET_FUNC_PRIVILEGE(i32 %79, i64 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %82, i64 %84
  %86 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %85, i32 0, i32 7
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %78, %74
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @QLCNIC_NON_PRIV_FUNC, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %87
  %92 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %92, i64 %94
  %96 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %100, i32* %4, align 4
  br label %163

101:                                              ; preds = %91
  %102 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %102, i64 %104
  %106 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %110, i32* %4, align 4
  br label %163

111:                                              ; preds = %101
  %112 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %112, i64 %114
  %116 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %120, i32* %4, align 4
  br label %163

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %87
  br label %158

123:                                              ; preds = %63
  %124 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %124, i64 %126
  %128 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @IS_VALID_VLAN(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %133, i32* %4, align 4
  br label %163

134:                                              ; preds = %123
  %135 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %135, i64 %137
  %139 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %143, i32* %4, align 4
  br label %163

144:                                              ; preds = %134
  br label %158

145:                                              ; preds = %63
  %146 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %146, i64 %148
  %150 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %154, i32* %4, align 4
  br label %163

155:                                              ; preds = %145
  br label %158

156:                                              ; preds = %63
  %157 = load i32, i32* @QL_STATUS_INVALID_PARAM, align 4
  store i32 %157, i32* %4, align 4
  br label %163

158:                                              ; preds = %155, %144, %122
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %31

162:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %156, %153, %142, %132, %119, %109, %99, %60, %45
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @QLCRDX(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @QLC_DEV_GET_DRV(i32, i64) #1

declare dso_local i32 @QLC_83XX_GET_FUNC_PRIVILEGE(i32, i64) #1

declare dso_local i32 @IS_VALID_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
