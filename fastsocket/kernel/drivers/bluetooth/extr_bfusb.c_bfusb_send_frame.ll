; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.hci_dev = type { %struct.TYPE_3__, %struct.bfusb_data*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bfusb_data = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"hdev %p skb %p type %d len %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Frame for unknown HCI device (hdev=NULL)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HCI_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't allocate memory for new packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@BFUSB_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bfusb_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.bfusb_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.hci_dev*
  store %struct.hci_dev* %14, %struct.hci_dev** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %15, %struct.sk_buff* %16, i32 %20, i32 %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = icmp ne %struct.hci_dev* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %172

31:                                               ; preds = %1
  %32 = load i32, i32* @HCI_RUNNING, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 2
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %172

40:                                               ; preds = %31
  %41 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 1
  %43 = load %struct.bfusb_data*, %struct.bfusb_data** %42, align 8
  store %struct.bfusb_data* %43, %struct.bfusb_data** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %66 [
    i32 129, label %48
    i32 130, label %54
    i32 128, label %60
  ]

48:                                               ; preds = %40
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %66

54:                                               ; preds = %40
  %55 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %66

60:                                               ; preds = %40
  %61 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %40, %60, %54, %48
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @skb_push(%struct.sk_buff* %67, i32 1)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i8*
  %73 = call i32 @memcpy(i32 %68, i8* %72, i32 1)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 32
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call %struct.sk_buff* @bt_skb_alloc(i32 %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %6, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %66
  %84 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %172

87:                                               ; preds = %66
  %88 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %89 = bitcast %struct.bfusb_data* %88 to i8*
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %120, %87
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %92
  %96 = load i32, i32* @uint, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @BFUSB_MAX_BLOCK_SIZE, align 4
  %99 = call i32 @min_t(i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 4, i32 0
  %104 = or i32 193, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 8, i32 0
  %110 = or i32 %104, %109
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %111, i8* %112, align 1
  %113 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %113, align 1
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @BFUSB_MAX_BLOCK_SIZE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %95
  br label %120

118:                                              ; preds = %95
  %119 = load i32, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i32 [ 0, %117 ], [ %119, %118 ]
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %122, i8* %123, align 1
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i32 @skb_put(%struct.sk_buff* %124, i32 3)
  %126 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %127 = call i32 @memcpy(i32 %125, i8* %126, i32 3)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @skb_put(%struct.sk_buff* %130, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %128, i32 %129, i32 %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %92

141:                                              ; preds = %92
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %146 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = srem i32 %144, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %141
  %151 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 -35, i8* %151, align 1
  %152 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %152, align 1
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = call i32 @skb_put(%struct.sk_buff* %153, i32 2)
  %155 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %156 = call i32 @memcpy(i32 %154, i8* %155, i32 2)
  br label %157

157:                                              ; preds = %150, %141
  %158 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %159 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %158, i32 0, i32 1
  %160 = call i32 @read_lock(i32* %159)
  %161 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %162 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %161, i32 0, i32 2
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = call i32 @skb_queue_tail(i32* %162, %struct.sk_buff* %163)
  %165 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %166 = call i32 @bfusb_tx_wakeup(%struct.bfusb_data* %165)
  %167 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %168 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %167, i32 0, i32 1
  %169 = call i32 @read_unlock(i32* %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %157, %83, %37, %27
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @bfusb_tx_wakeup(%struct.bfusb_data*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
