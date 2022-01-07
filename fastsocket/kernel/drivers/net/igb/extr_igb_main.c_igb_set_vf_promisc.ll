; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_vf_promisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_vf_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.vf_data_storage*, %struct.e1000_hw }
%struct.vf_data_storage = type { i32, i32, i32* }
%struct.e1000_hw = type { i32 }

@IGB_VF_FLAG_UNI_PROMISC = common dso_local global i32 0, align 4
@IGB_VF_FLAG_MULTI_PROMISC = common dso_local global i32 0, align 4
@E1000_VMOLR_ROPE = common dso_local global i64 0, align 8
@E1000_VMOLR_ROMPE = common dso_local global i64 0, align 8
@E1000_VMOLR_MPME = common dso_local global i64 0, align 8
@E1000_VF_SET_PROMISC_MULTICAST = common dso_local global i64 0, align 8
@E1000_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i64*, i64)* @igb_set_vf_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_vf_promisc(%struct.igb_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vf_data_storage*, align 8
  %11 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @E1000_VMOLR(i64 %14)
  %16 = call i64 @rd32(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = load %struct.vf_data_storage*, %struct.vf_data_storage** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %19, i64 %20
  store %struct.vf_data_storage* %21, %struct.vf_data_storage** %10, align 8
  %22 = load i32, i32* @IGB_VF_FLAG_UNI_PROMISC, align 4
  %23 = load i32, i32* @IGB_VF_FLAG_MULTI_PROMISC, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.vf_data_storage*, %struct.vf_data_storage** %10, align 8
  %27 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i64, i64* @E1000_VMOLR_ROPE, align 8
  %31 = load i64, i64* @E1000_VMOLR_ROMPE, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @E1000_VMOLR_MPME, align 8
  %34 = or i64 %32, %33
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @E1000_VF_SET_PROMISC_MULTICAST, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %3
  %44 = load i64, i64* @E1000_VMOLR_MPME, align 8
  %45 = load i64, i64* %9, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load i32, i32* @IGB_VF_FLAG_MULTI_PROMISC, align 4
  %48 = load %struct.vf_data_storage*, %struct.vf_data_storage** %10, align 8
  %49 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* @E1000_VF_SET_PROMISC_MULTICAST, align 8
  %53 = xor i64 %52, -1
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, %53
  store i64 %56, i64* %54, align 8
  br label %97

57:                                               ; preds = %3
  %58 = load %struct.vf_data_storage*, %struct.vf_data_storage** %10, align 8
  %59 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 30
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* @E1000_VMOLR_MPME, align 8
  %64 = load i64, i64* %9, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %96

66:                                               ; preds = %57
  %67 = load %struct.vf_data_storage*, %struct.vf_data_storage** %10, align 8
  %68 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load i64, i64* @E1000_VMOLR_ROMPE, align 8
  %73 = load i64, i64* %9, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %91, %71
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.vf_data_storage*, %struct.vf_data_storage** %10, align 8
  %78 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %83 = load %struct.vf_data_storage*, %struct.vf_data_storage** %10, align 8
  %84 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @igb_mta_set(%struct.e1000_hw* %82, i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %75

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %43
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @E1000_VMOLR(i64 %98)
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @wr32(i32 %99, i64 %100)
  %102 = load i64*, i64** %6, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @E1000_VT_MSGINFO_MASK, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @E1000_VMOLR(i64) #1

declare dso_local i32 @igb_mta_set(%struct.e1000_hw*, i32) #1

declare dso_local i32 @wr32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
