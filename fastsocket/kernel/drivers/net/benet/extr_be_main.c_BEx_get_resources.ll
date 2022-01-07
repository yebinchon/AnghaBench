; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_BEx_get_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_BEx_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.be_resources = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@MAX_VFS = common dso_local global i32 0, align 4
@num_vfs = common dso_local global i64 0, align 8
@BE_UC_PMAC_COUNT = common dso_local global i32 0, align 4
@BE_VF_UC_PMAC_COUNT = common dso_local global i32 0, align 4
@FLEX10_MODE = common dso_local global i32 0, align 4
@BE_NUM_VLANS_SUPPORTED = common dso_local global i32 0, align 4
@BE_MAX_MC = common dso_local global i32 0, align 4
@BE3_MAX_TX_QS = common dso_local global i32 0, align 4
@BE_FUNCTION_CAPS_RSS = common dso_local global i32 0, align 4
@BE3_MAX_RSS_QS = common dso_local global i64 0, align 8
@BE2_MAX_RSS_QS = common dso_local global i64 0, align 8
@BE3_MAX_EVT_QS = common dso_local global i32 0, align 4
@BE_IF_CAP_FLAGS_WANT = common dso_local global i32 0, align 4
@BE_IF_FLAGS_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_resources*)* @BEx_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BEx_get_resources(%struct.be_adapter* %0, %struct.be_resources* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_resources*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_resources* %1, %struct.be_resources** %4, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %12 = call i64 @BE3_chip(%struct.be_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = call i64 @be_physfn(%struct.be_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @MAX_VFS, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @min(i32 %24, i32 %25)
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  %30 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %31 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %33 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i64, i64* @num_vfs, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi i1 [ false, %28 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %14, %2
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = call i64 @be_physfn(%struct.be_adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @BE_UC_PMAC_COUNT, align 4
  %48 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %49 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @BE_VF_UC_PMAC_COUNT, align 4
  %52 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %53 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FLEX10_MODE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %63 = sdiv i32 %62, 8
  %64 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %65 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %68 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %69 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @BE_MAX_MC, align 4
  %72 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %73 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = call i64 @BE2_chip(%struct.be_adapter* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %82 = call i64 @be_is_mc(%struct.be_adapter* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %86 = call i64 @be_physfn(%struct.be_adapter* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84, %80, %77, %70
  %89 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %90 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @BE3_MAX_TX_QS, align 4
  %93 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %94 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BE_FUNCTION_CAPS_RSS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %102
  %106 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %107 = call i64 @be_physfn(%struct.be_adapter* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @BE3_MAX_RSS_QS, align 8
  br label %118

116:                                              ; preds = %109
  %117 = load i64, i64* @BE2_MAX_RSS_QS, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %121 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %105, %102, %95
  %123 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %124 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  %127 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %128 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  %129 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %130 = call i64 @be_physfn(%struct.be_adapter* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* @BE3_MAX_EVT_QS, align 4
  br label %135

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 1, %134 ]
  %137 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %138 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @BE_IF_CAP_FLAGS_WANT, align 4
  %140 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %141 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BE_FUNCTION_CAPS_RSS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %135
  %149 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %152 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %135
  ret void
}

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_is_mc(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
