; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_rndis_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rndis_host.c_rndis_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rndis_data_hdr = type { i64, i64, i64, i64 }

@RNDIS_MSG_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"bad rndis message %d/%d/%d/%d, len %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rndis_data_hdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  br label %11

11:                                               ; preds = %110, %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %121

17:                                               ; preds = %11
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.rndis_data_hdr*
  store %struct.rndis_data_hdr* %22, %struct.rndis_data_hdr** %6, align 8
  %23 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @le32_to_cpu(i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %28 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @le32_to_cpu(i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @le32_to_cpu(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RNDIS_MSG_PACKET, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %17
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  %51 = add nsw i64 %50, 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %51, %52
  br label %54

54:                                               ; preds = %47, %40, %17
  %55 = phi i1 [ true, %40 ], [ true, %17 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %68 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %69 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @le32_to_cpu(i64 %70)
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = call i32 @devdbg(%struct.usbnet* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %71, i64 %72, i64 %73, i64 %74, i64 %78)
  store i32 0, i32* %3, align 4
  br label %122

80:                                               ; preds = %54
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 8, %82
  %84 = call i32 @skb_pull(%struct.sk_buff* %81, i64 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %85, %89
  %91 = icmp ule i64 %90, 32
  %92 = zext i1 %91 to i32
  %93 = call i64 @likely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %80
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @skb_trim(%struct.sk_buff* %96, i64 %97)
  br label %121

99:                                               ; preds = %80
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load i32, i32* @GFP_ATOMIC, align 4
  %102 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %100, i32 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %7, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = icmp ne %struct.sk_buff* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %121

110:                                              ; preds = %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %112, 32
  %114 = call i32 @skb_pull(%struct.sk_buff* %111, i64 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @skb_trim(%struct.sk_buff* %115, i64 %116)
  %118 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = call i32 @usbnet_skb_return(%struct.usbnet* %118, %struct.sk_buff* %119)
  br label %11

121:                                              ; preds = %109, %95, %11
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %59
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
