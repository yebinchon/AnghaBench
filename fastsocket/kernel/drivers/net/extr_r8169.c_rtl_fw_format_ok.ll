; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_fw_format_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_fw_format_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.rtl_fw = type { i8*, %struct.rtl_fw_phy_action, %struct.firmware* }
%struct.rtl_fw_phy_action = type { i64, i32* }
%struct.firmware = type { i64*, i64 }
%struct.fw_info = type { i32, i32, i32, i32 }

@FW_OPCODE_SIZE = common dso_local global i64 0, align 8
@RTL_VER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, %struct.rtl_fw*)* @rtl_fw_format_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_fw_format_ok(%struct.rtl8169_private* %0, %struct.rtl_fw* %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.rtl_fw*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.fw_info*, align 8
  %7 = alloca %struct.rtl_fw_phy_action*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store %struct.rtl_fw* %1, %struct.rtl_fw** %4, align 8
  %14 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %14, i32 0, i32 2
  %16 = load %struct.firmware*, %struct.firmware** %15, align 8
  store %struct.firmware* %16, %struct.firmware** %5, align 8
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = bitcast i64* %19 to %struct.fw_info*
  store %struct.fw_info* %20, %struct.fw_info** %6, align 8
  %21 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %21, i32 0, i32 1
  store %struct.rtl_fw_phy_action* %22, %struct.rtl_fw_phy_action** %7, align 8
  %23 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.firmware*, %struct.firmware** %5, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %143

32:                                               ; preds = %2
  %33 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %34 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %110, label %37

37:                                               ; preds = %32
  store i64 0, i64* %13, align 8
  %38 = load %struct.firmware*, %struct.firmware** %5, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %143

43:                                               ; preds = %37
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.firmware*, %struct.firmware** %5, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.firmware*, %struct.firmware** %5, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %44

62:                                               ; preds = %44
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %143

66:                                               ; preds = %62
  %67 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %68 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le32_to_cpu(i32 %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.firmware*, %struct.firmware** %5, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %143

77:                                               ; preds = %66
  %78 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %79 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.firmware*, %struct.firmware** %5, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %89 = udiv i64 %87, %88
  %90 = icmp ugt i64 %82, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %143

92:                                               ; preds = %77
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %95 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RTL_VER_SIZE, align 4
  %98 = call i32 @memcpy(i8* %93, i32 %96, i32 %97)
  %99 = load %struct.firmware*, %struct.firmware** %5, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = bitcast i64* %103 to i32*
  %105 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %7, align 8
  %106 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %7, align 8
  %109 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %137

110:                                              ; preds = %32
  %111 = load %struct.firmware*, %struct.firmware** %5, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %115 = urem i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %143

118:                                              ; preds = %110
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %121 = call i32 @rtl_lookup_firmware_name(%struct.rtl8169_private* %120)
  %122 = load i32, i32* @RTL_VER_SIZE, align 4
  %123 = call i32 @strlcpy(i8* %119, i32 %121, i32 %122)
  %124 = load %struct.firmware*, %struct.firmware** %5, align 8
  %125 = getelementptr inbounds %struct.firmware, %struct.firmware* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = bitcast i64* %126 to i32*
  %128 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %7, align 8
  %129 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %128, i32 0, i32 1
  store i32* %127, i32** %129, align 8
  %130 = load %struct.firmware*, %struct.firmware** %5, align 8
  %131 = getelementptr inbounds %struct.firmware, %struct.firmware* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FW_OPCODE_SIZE, align 8
  %134 = udiv i64 %132, %133
  %135 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %7, align 8
  %136 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %118, %92
  %138 = load i8*, i8** %8, align 8
  %139 = load i32, i32* @RTL_VER_SIZE, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 0, i8* %142, align 1
  store i32 1, i32* %9, align 4
  br label %143

143:                                              ; preds = %137, %117, %91, %76, %65, %42, %31
  %144 = load i32, i32* %9, align 4
  ret i32 %144
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @rtl_lookup_firmware_name(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
