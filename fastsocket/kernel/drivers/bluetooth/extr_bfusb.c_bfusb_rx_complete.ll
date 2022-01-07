; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_rx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, i32, i64, i64 }
%struct.sk_buff = type { i32, i64 }
%struct.bfusb_data = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"bfusb %p urb %p skb %p len %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s block extends over URB buffer ranges\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s bulk resubmit failed urb %p err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @bfusb_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfusb_rx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bfusb_data*
  store %struct.bfusb_data* %17, %struct.bfusb_data** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %24, %struct.urb* %25, %struct.sk_buff* %26, i32 %29)
  %31 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %32 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %31, i32 0, i32 0
  %33 = call i32 @read_lock(i32* %32)
  %34 = load i32, i32* @HCI_RUNNING, align 4
  %35 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %36 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = call i32 @test_bit(i32 %34, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %166

42:                                               ; preds = %1
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %42
  br label %145

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %54 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %52
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @skb_put(%struct.sk_buff* %60, i32 %61)
  br label %63

63:                                               ; preds = %124, %51
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %132

66:                                               ; preds = %63
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 8
  %76 = or i32 %70, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 16384
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 2
  store i32 %82, i32* %6, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %5, align 8
  br label %103

85:                                               ; preds = %66
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %97

92:                                               ; preds = %85
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  br label %97

97:                                               ; preds = %92, %91
  %98 = phi i32 [ 256, %91 ], [ %96, %92 ]
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 3
  store i32 %100, i32* %6, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  store i8* %102, i8** %5, align 8
  br label %103

103:                                              ; preds = %97, %80
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %109 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 225
  %117 = icmp eq i32 %116, 193
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @bfusb_recv_block(%struct.bfusb_data* %119, i32 %120, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %114
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i8*, i8** %5, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %5, align 8
  br label %63

132:                                              ; preds = %63
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %135 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %134, i32 0, i32 3
  %136 = call i32 @skb_unlink(%struct.sk_buff* %133, i32* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call i32 @kfree_skb(%struct.sk_buff* %137)
  %139 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %140 = load %struct.urb*, %struct.urb** %2, align 8
  %141 = call i32 @bfusb_rx_submit(%struct.bfusb_data* %139, %struct.urb* %140)
  %142 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %143 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %142, i32 0, i32 0
  %144 = call i32 @read_unlock(i32* %143)
  br label %170

145:                                              ; preds = %50
  %146 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %147 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.urb*, %struct.urb** %2, align 8
  %150 = getelementptr inbounds %struct.urb, %struct.urb* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.urb*, %struct.urb** %2, align 8
  %152 = load i32, i32* @GFP_ATOMIC, align 4
  %153 = call i32 @usb_submit_urb(%struct.urb* %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %145
  %157 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %158 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.urb*, %struct.urb** %2, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %161, %struct.urb* %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %145
  br label %166

166:                                              ; preds = %165, %41
  %167 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %168 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %167, i32 0, i32 0
  %169 = call i32 @read_unlock(i32* %168)
  br label %170

170:                                              ; preds = %166, %132
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.urb*, %struct.sk_buff*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i32 @bfusb_recv_block(%struct.bfusb_data*, i32, i8*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bfusb_rx_submit(%struct.bfusb_data*, %struct.urb*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
