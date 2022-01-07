; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_ndo_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_ndo_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Setting VLAN %d, QOS 0x%x on VF %d\0A\00", align 1
@__IGB_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"The VF VLAN has been set, but the PF device is not up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Bring the PF device up before attempting to use the VF device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @igb_ndo_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_ndo_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 4095
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %140

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %104

34:                                               ; preds = %31, %28
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @igb_vlvf_set(%struct.igb_adapter* %35, i32 %36, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %138

47:                                               ; preds = %34
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @igb_set_vmvir(%struct.igb_adapter* %48, i32 %53, i32 %54)
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @igb_set_vmolr(%struct.igb_adapter* %56, i32 %57, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %65 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %73 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  %79 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %80 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @__IGB_DOWN, align 4
  %88 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %89 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %88, i32 0, i32 3
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %47
  %93 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %94 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @dev_warn(i32* %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %99 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @dev_warn(i32* %101, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %92, %47
  br label %137

104:                                              ; preds = %31
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %106 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %107 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @igb_vlvf_set(%struct.igb_adapter* %105, i32 %113, i32 0, i32 %114)
  %116 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @igb_set_vmvir(%struct.igb_adapter* %116, i32 %117, i32 %118)
  %120 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @igb_set_vmolr(%struct.igb_adapter* %120, i32 %121, i32 1)
  %123 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %124 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  %130 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  %131 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %104, %103
  br label %138

138:                                              ; preds = %137, %46
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %25
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_vlvf_set(%struct.igb_adapter*, i32, i32, i32) #1

declare dso_local i32 @igb_set_vmvir(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @igb_set_vmolr(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
