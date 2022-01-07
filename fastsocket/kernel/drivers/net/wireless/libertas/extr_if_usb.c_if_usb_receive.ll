; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.if_usb_card* }
%struct.if_usb_card = type { %struct.TYPE_2__*, %struct.lbs_private*, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.lbs_private = type { i32 }
%struct.sk_buff = type { i32* }

@IPFIELD_ALIGN_OFFSET = common dso_local global i32 0, align 4
@LBS_DEB_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RX URB failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Recv length = 0x%x, Recv type = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"**EVENT** 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unknown command type 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @if_usb_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_receive(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %13, align 8
  store %struct.if_usb_card* %14, %struct.if_usb_card** %3, align 8
  %15 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %16 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %15, i32 0, i32 2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %19 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %18, i32 0, i32 1
  %20 = load %struct.lbs_private*, %struct.lbs_private** %19, align 8
  store %struct.lbs_private* %20, %struct.lbs_private** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @IPFIELD_ALIGN_OFFSET, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* @LBS_DEB_USB, align 4
  %31 = call i32 @lbs_deb_enter(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %1
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %41 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  br label %131

50:                                               ; preds = %34
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @IPFIELD_ALIGN_OFFSET, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %62 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %77

68:                                               ; preds = %1
  %69 = load %struct.urb*, %struct.urb** %2, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %134

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %121 [
    i32 130, label %79
    i32 128, label %85
    i32 129, label %92
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %83 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %84 = call i32 @process_cmdtypedata(i32 %80, %struct.sk_buff* %81, %struct.if_usb_card* %82, %struct.lbs_private* %83)
  br label %130

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %90 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %91 = call i32 @process_cmdrequest(i32 %86, i32* %87, %struct.sk_buff* %88, %struct.if_usb_card* %89, %struct.lbs_private* %90)
  br label %130

92:                                               ; preds = %77
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %98 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, -65536
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, -65536
  %111 = lshr i32 %110, 16
  store i32 %111, i32* %11, align 4
  %112 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @lbs_send_tx_feedback(%struct.lbs_private* %112, i32 %113)
  br label %120

115:                                              ; preds = %92
  %116 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, 255
  %119 = call i32 @lbs_queue_event(%struct.lbs_private* %116, i32 %118)
  br label %120

120:                                              ; preds = %115, %108
  br label %130

121:                                              ; preds = %77
  %122 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %123 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %121, %120, %85, %79
  br label %131

131:                                              ; preds = %130, %39
  %132 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %133 = call i32 @if_usb_submit_rx_urb(%struct.if_usb_card* %132)
  br label %134

134:                                              ; preds = %131, %73
  %135 = load i32, i32* @LBS_DEB_USB, align 4
  %136 = call i32 @lbs_deb_leave(i32 %135)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @process_cmdtypedata(i32, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbs_private*) #1

declare dso_local i32 @process_cmdrequest(i32, i32*, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbs_private*) #1

declare dso_local i32 @lbs_send_tx_feedback(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_queue_event(%struct.lbs_private*, i32) #1

declare dso_local i32 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
