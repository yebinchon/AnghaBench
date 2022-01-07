; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_vlan_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_vlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i64 0, align 8
@IXGBE_VLVF_VLANID_MASK = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"VF %d attempted to override administratively set VLAN configuration\0AReload the VF driver to resume operations\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_set_vf_vlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_vlan_msg(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 3
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %8, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IXGBE_VT_MSGINFO_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @IXGBE_VT_MSGINFO_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IXGBE_VLVF_VLANID_MASK, align 8
  %30 = and i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i64 @netdev_get_num_tc(%struct.TYPE_4__* %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i64, i64* %15, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %3
  %48 = load i32, i32* @drv, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @e_warn(i32 %48, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i64 %49)
  store i32 -1, i32* %4, align 4
  br label %167

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFF_PROMISC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @VMDQ_P(i32 0)
  %68 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %54, %51
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %70, i32 %71, i32 %72, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %164, label %78

78:                                               ; preds = %69
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFF_PROMISC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %164

87:                                               ; preds = %78
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ixgbe_find_vlvf_entry(%struct.ixgbe_hw* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %165

94:                                               ; preds = %87
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @IXGBE_VLVF(i32 %96)
  %98 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %95, i64 %97)
  store i64 %98, i64* %13, align 8
  %99 = call i32 @VMDQ_P(i32 0)
  %100 = icmp slt i32 %99, 32
  br i1 %100, label %101, label %121

101:                                              ; preds = %94
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %103, 2
  %105 = call i64 @IXGBE_VLVFB(i32 %104)
  %106 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %102, i64 %105)
  store i64 %106, i64* %14, align 8
  %107 = call i32 @VMDQ_P(i32 0)
  %108 = shl i32 1, %107
  %109 = xor i32 %108, -1
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %14, align 8
  %112 = and i64 %111, %110
  store i64 %112, i64* %14, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %114, 2
  %116 = call i64 @IXGBE_VLVFB(i32 %115)
  %117 = add nsw i64 %116, 1
  %118 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %113, i64 %117)
  %119 = load i64, i64* %14, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %14, align 8
  br label %142

121:                                              ; preds = %94
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = mul nsw i32 %123, 2
  %125 = call i64 @IXGBE_VLVFB(i32 %124)
  %126 = add nsw i64 %125, 1
  %127 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %122, i64 %126)
  store i64 %127, i64* %14, align 8
  %128 = call i32 @VMDQ_P(i32 0)
  %129 = sub nsw i32 %128, 32
  %130 = shl i32 1, %129
  %131 = xor i32 %130, -1
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %14, align 8
  %134 = and i64 %133, %132
  store i64 %134, i64* %14, align 8
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %136 = load i32, i32* %12, align 4
  %137 = mul nsw i32 %136, 2
  %138 = call i64 @IXGBE_VLVFB(i32 %137)
  %139 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %135, i64 %138)
  %140 = load i64, i64* %14, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %14, align 8
  br label %142

142:                                              ; preds = %121, %101
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @VLAN_VID_MASK, align 8
  %145 = and i64 %143, %144
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp eq i64 %145, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %142
  %150 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %151 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %14, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @VMDQ_P(i32 0)
  %162 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %154, %149, %142
  br label %164

164:                                              ; preds = %163, %78, %69
  br label %165

165:                                              ; preds = %164, %93
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %47
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @netdev_get_num_tc(%struct.TYPE_4__*) #1

declare dso_local i32 @e_warn(i32, i8*, i64) #1

declare dso_local i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter*, i32, i32, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @ixgbe_find_vlvf_entry(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @IXGBE_VLVF(i32) #1

declare dso_local i64 @IXGBE_VLVFB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
