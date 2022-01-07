; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.hci_dev = type { i32, %struct.TYPE_3__, i32, %struct.bpa10x_data* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bpa10x_data = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.urb = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@bpa10x_tx_complete = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s urb %p submission failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bpa10x_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpa10x_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.bpa10x_data*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hci_dev*
  store %struct.hci_dev* %13, %struct.hci_dev** %4, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 3
  %16 = load %struct.bpa10x_data*, %struct.bpa10x_data** %15, align 8
  store %struct.bpa10x_data* %16, %struct.bpa10x_data** %5, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @HCI_RUNNING, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %177

29:                                               ; preds = %1
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %30)
  store %struct.urb* %31, %struct.urb** %7, align 8
  %32 = load %struct.urb*, %struct.urb** %7, align 8
  %33 = icmp ne %struct.urb* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %177

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32* @skb_push(%struct.sk_buff* %42, i32 1)
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %147 [
    i32 129, label %48
    i32 130, label %99
    i32 128, label %123
  ]

48:                                               ; preds = %37
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.usb_ctrlrequest* @kmalloc(i32 20, i32 %49)
  store %struct.usb_ctrlrequest* %50, %struct.usb_ctrlrequest** %6, align 8
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %52 = icmp ne %struct.usb_ctrlrequest* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.urb*, %struct.urb** %7, align 8
  %55 = call i32 @usb_free_urb(%struct.urb* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %177

58:                                               ; preds = %48
  %59 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %60 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %61 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %63 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %65 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %67 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @__cpu_to_le16(i32 %70)
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %73 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %75 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_sndctrlpipe(i32 %76, i32 0)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.urb*, %struct.urb** %7, align 8
  %79 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %80 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %84 = bitcast %struct.usb_ctrlrequest* %83 to i8*
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @bpa10x_tx_complete, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = call i32 @usb_fill_control_urb(%struct.urb* %78, i32 %81, i32 %82, i8* %84, i32 %87, i32 %90, i32 %91, %struct.sk_buff* %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %152

99:                                               ; preds = %37
  %100 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %101 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @usb_sndbulkpipe(i32 %102, i32 2)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.urb*, %struct.urb** %7, align 8
  %105 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %106 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @bpa10x_tx_complete, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = call i32 @usb_fill_bulk_urb(%struct.urb* %104, i32 %107, i32 %108, i32 %111, i32 %114, i32 %115, %struct.sk_buff* %116)
  %118 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %152

123:                                              ; preds = %37
  %124 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %125 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @usb_sndbulkpipe(i32 %126, i32 2)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.urb*, %struct.urb** %7, align 8
  %129 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %130 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @bpa10x_tx_complete, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = call i32 @usb_fill_bulk_urb(%struct.urb* %128, i32 %131, i32 %132, i32 %135, i32 %138, i32 %139, %struct.sk_buff* %140)
  %142 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %143 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %152

147:                                              ; preds = %37
  %148 = load %struct.urb*, %struct.urb** %7, align 8
  %149 = call i32 @usb_free_urb(%struct.urb* %148)
  %150 = load i32, i32* @EILSEQ, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %177

152:                                              ; preds = %123, %99, %58
  %153 = load %struct.urb*, %struct.urb** %7, align 8
  %154 = load %struct.bpa10x_data*, %struct.bpa10x_data** %5, align 8
  %155 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %154, i32 0, i32 0
  %156 = call i32 @usb_anchor_urb(%struct.urb* %153, i32* %155)
  %157 = load %struct.urb*, %struct.urb** %7, align 8
  %158 = load i32, i32* @GFP_ATOMIC, align 4
  %159 = call i32 @usb_submit_urb(%struct.urb* %157, i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %152
  %163 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %164 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.urb*, %struct.urb** %7, align 8
  %167 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %165, %struct.urb* %166)
  %168 = load %struct.urb*, %struct.urb** %7, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @kfree(i32 %170)
  %172 = load %struct.urb*, %struct.urb** %7, align 8
  %173 = call i32 @usb_unanchor_urb(%struct.urb* %172)
  br label %174

174:                                              ; preds = %162, %152
  %175 = load %struct.urb*, %struct.urb** %7, align 8
  %176 = call i32 @usb_free_urb(%struct.urb* %175)
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %174, %147, %53, %34, %26
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
