; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }

@E1000_VT_MSGINFO_MASK = common dso_local global i32 0, align 4
@E1000_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@E1000_VLVF_VLANID_MASK = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@E1000_VLVF_POOLSEL_SHIFT = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*, i32)* @igb_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_vf_vlan(%struct.igb_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 3
  store %struct.e1000_hw* %15, %struct.e1000_hw** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @E1000_VT_MSGINFO_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @E1000_VT_MSGINFO_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @E1000_VLVF_VLANID_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %3
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_PROMISC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @igb_vlvf_set(%struct.igb_adapter* %40, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %39, %30, %3
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %114

51:                                               ; preds = %47
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @igb_vlvf_set(%struct.igb_adapter* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %114

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %113, label %63

63:                                               ; preds = %60
  %64 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFF_PROMISC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %63
  %73 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @igb_find_vlvf_entry(%struct.igb_adapter* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %114

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @E1000_VLVF(i32 %80)
  %82 = call i32 @rd32(i32 %81)
  store i32 %82, i32* %12, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @E1000_VLVF_POOLSEL_SHIFT, align 4
  %84 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = shl i32 1, %87
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @VLAN_VID_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %79
  %97 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @igb_vlvf_set(%struct.igb_adapter* %105, i32 %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %104, %101, %96, %79
  br label %113

113:                                              ; preds = %112, %63, %60
  br label %114

114:                                              ; preds = %113, %78, %59, %50
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local i32 @igb_vlvf_set(%struct.igb_adapter*, i32, i32, i32) #1

declare dso_local i32 @igb_find_vlvf_entry(%struct.igb_adapter*, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_VLVF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
