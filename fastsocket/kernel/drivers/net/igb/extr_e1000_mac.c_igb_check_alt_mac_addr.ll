; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_check_alt_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_check_alt_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.e1000_hw.0*, i64*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.1 = type opaque
%struct.TYPE_6__ = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@NVM_ALT_MAC_ADDR_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@E1000_FUNC_1 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN1 = common dso_local global i64 0, align 8
@E1000_FUNC_2 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN2 = common dso_local global i64 0, align 8
@E1000_FUNC_3 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Ignoring Alternate Mac Address with MC bit set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_check_alt_mac_addr(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_82580, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.1*
  %29 = load i32, i32* @NVM_ALT_MAC_ADDR_PTR, align 4
  %30 = call i64 %26(%struct.e1000_hw.1* %28, i32 %29, i32 1, i32* %6)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %135

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  br label %135

42:                                               ; preds = %38
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @E1000_FUNC_1, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN1, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @E1000_FUNC_2, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN2, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @E1000_FUNC_3, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %68
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %118, %81
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = ashr i32 %88, 1
  %90 = add nsw i32 %87, %89
  store i32 %90, i32* %5, align 4
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %94, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %97 = bitcast %struct.e1000_hw* %96 to %struct.e1000_hw.1*
  %98 = load i32, i32* %5, align 4
  %99 = call i64 %95(%struct.e1000_hw.1* %97, i32 %98, i32 1, i32* %7)
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %135

104:                                              ; preds = %86
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %13, i64 %109
  store i64 %107, i64* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 8
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %13, i64 %116
  store i64 %113, i64* %117, align 8
  br label %118

118:                                              ; preds = %104
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %3, align 4
  br label %82

121:                                              ; preds = %82
  %122 = call i64 @is_multicast_ether_addr(i64* %13)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @hw_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %135

126:                                              ; preds = %121
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %128 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32 (%struct.e1000_hw.0*, i64*, i32)*, i32 (%struct.e1000_hw.0*, i64*, i32)** %130, align 8
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = bitcast %struct.e1000_hw* %132 to %struct.e1000_hw.0*
  %134 = call i32 %131(%struct.e1000_hw.0* %133, i64* %13, i32 0)
  br label %135

135:                                              ; preds = %126, %124, %102, %41, %33, %20
  %136 = load i64, i64* %4, align 8
  %137 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %137)
  ret i64 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hw_dbg(i8*) #2

declare dso_local i64 @is_multicast_ether_addr(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
