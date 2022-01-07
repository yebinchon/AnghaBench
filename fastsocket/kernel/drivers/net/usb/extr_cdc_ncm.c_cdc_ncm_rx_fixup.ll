; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.sk_buff = type { i32, i32* }
%struct.cdc_ncm_ctx = type { i32 }
%struct.usb_cdc_ncm_ndp16 = type { i32, %struct.usb_cdc_ncm_dpe16*, i32 }
%struct.usb_cdc_ncm_dpe16 = type { i32, i32 }

@USB_CDC_NCM_NDP16_NOCRC_SIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"invalid DPT16 signature <%u>\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"invalid frame detected (ignored)offset[%u]=%u, length=%u, skb=%p\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @cdc_ncm_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdc_ncm_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cdc_ncm_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %13 = alloca %struct.usb_cdc_ncm_dpe16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %21, %struct.cdc_ncm_ctx** %7, align 8
  store i32 50, i32* %15, align 4
  %22 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @cdc_ncm_rx_verify_nth16(%struct.cdc_ncm_ctx* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %157

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %155, %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @cdc_ncm_rx_verify_ndp16(%struct.sk_buff* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %157

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = bitcast i32* %42 to %struct.usb_cdc_ncm_ndp16*
  store %struct.usb_cdc_ncm_ndp16* %43, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %44 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %45 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @le32_to_cpu(i32 %46)
  %48 = load i64, i64* @USB_CDC_NCM_NDP16_NOCRC_SIGN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %52 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %144

57:                                               ; preds = %36
  %58 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %59 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %58, i32 0, i32 1
  %60 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %59, align 8
  store %struct.usb_cdc_ncm_dpe16* %60, %struct.usb_cdc_ncm_dpe16** %13, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %138, %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %143

65:                                               ; preds = %61
  %66 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %13, align 8
  %67 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, %struct.usb_cdc_ncm_dpe16* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %13, align 8
  %71 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, %struct.usb_cdc_ncm_dpe16* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76, %65
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %144

83:                                               ; preds = %79
  br label %143

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ETH_HLEN, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98, %92, %84
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105, %struct.sk_buff* %106)
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %144

111:                                              ; preds = %102
  br label %143

112:                                              ; preds = %98
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load i32, i32* @GFP_ATOMIC, align 4
  %115 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %113, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %6, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %157

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %131, i32 %132)
  %134 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = call i32 @usbnet_skb_return(%struct.usbnet* %134, %struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = load %struct.usb_cdc_ncm_dpe16*, %struct.usb_cdc_ncm_dpe16** %13, align 8
  %142 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, %struct.usb_cdc_ncm_dpe16* %141, i32 1
  store %struct.usb_cdc_ncm_dpe16* %142, %struct.usb_cdc_ncm_dpe16** %13, align 8
  br label %61

143:                                              ; preds = %111, %83, %61
  br label %144

144:                                              ; preds = %143, %110, %82, %50
  %145 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %12, align 8
  %146 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @le16_to_cpu(i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %15, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %29

156:                                              ; preds = %151, %144
  store i32 1, i32* %3, align 4
  br label %158

157:                                              ; preds = %118, %35, %27
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %156
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @cdc_ncm_rx_verify_nth16(%struct.cdc_ncm_ctx*, %struct.sk_buff*) #1

declare dso_local i32 @cdc_ncm_rx_verify_ndp16(%struct.sk_buff*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
