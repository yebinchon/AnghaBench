; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__*, i32, i64, %struct.ixgbe_hw }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Setting VLAN %d, QOS 0x%x on VF %d\0A\00", align 1
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"The VF VLAN has been set, but the PF device is not up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Bring the PF device up before attempting to use the VF device.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ndo_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_adapter*, align 8
  %12 = alloca %struct.ixgbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbe_adapter* %14, %struct.ixgbe_adapter** %11, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 5
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 4095
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 7
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %180

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %136

37:                                               ; preds = %34, %31
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %48, i32 0, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %47, %37
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %178

63:                                               ; preds = %59
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %64, i32 1, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %178

71:                                               ; preds = %63
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %12, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ixgbe_set_vmolr(%struct.ixgbe_hw* %77, i32 %78, i32 0)
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %71
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %12, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %88, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %12, align 8
  %91 = bitcast %struct.ixgbe_hw* %90 to %struct.ixgbe_hw.0*
  %92 = load i32, i32* %7, align 4
  %93 = call i32 %89(%struct.ixgbe_hw.0* %91, i32 1, i32 %92)
  br label %94

94:                                               ; preds = %84, %71
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 %95, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %105 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %112 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @dev_info(i32* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @__IXGBE_DOWN, align 4
  %120 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %121 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %120, i32 0, i32 3
  %122 = call i64 @test_bit(i32 %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %94
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %126 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = call i32 @dev_warn(i32* %128, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %131 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %130, i32 0, i32 2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = call i32 @dev_warn(i32* %133, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %124, %94
  br label %177

136:                                              ; preds = %34
  %137 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %138 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %139 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %137, i32 0, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @ixgbe_clear_vmvir(%struct.ixgbe_adapter* %148, i32 %149)
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %12, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @ixgbe_set_vmolr(%struct.ixgbe_hw* %151, i32 %152, i32 1)
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %12, align 8
  %155 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %157, align 8
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %12, align 8
  %160 = bitcast %struct.ixgbe_hw* %159 to %struct.ixgbe_hw.0*
  %161 = load i32, i32* %7, align 4
  %162 = call i32 %158(%struct.ixgbe_hw.0* %160, i32 0, i32 %161)
  %163 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %164 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 4
  %170 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %11, align 8
  %171 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %136, %135
  br label %178

178:                                              ; preds = %177, %70, %62
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %28
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_set_vmolr(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ixgbe_clear_vmvir(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
