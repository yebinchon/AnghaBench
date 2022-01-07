; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_pegasus_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_pegasus_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EthID = common dso_local global i32 0, align 4
@PEGASUS_MTU = common dso_local global i64 0, align 8
@read_bulk_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: failed rx_urb, %d\00", align 1
@intr_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: failed intr_urb, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: can't enable_net_traffic() - %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pegasus_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.TYPE_10__* @netdev_priv(%struct.net_device* %6)
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call %struct.TYPE_11__* @pull_skb(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %176

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = load i32, i32* @EthID, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_registers(%struct.TYPE_10__* %26, i32 %27, i32 6, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @usb_rcvbulkpipe(i32 %40, i32 1)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @PEGASUS_MTU, align 8
  %48 = add nsw i64 %47, 8
  %49 = load i32, i32* @read_bulk_callback, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @usb_fill_bulk_urb(i32 %34, i32 %37, i32 %41, i32 %46, i64 %48, i32 %49, %struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @usb_submit_urb(i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %25
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netif_device_detach(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = call i64 @netif_msg_ifup(%struct.TYPE_10__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %68
  br label %174

79:                                               ; preds = %25
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @usb_rcvintpipe(i32 %88, i32 3)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @intr_callback, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @usb_fill_int_urb(i32 %82, i32 %85, i32 %89, i32 %92, i32 4, i32 %93, %struct.TYPE_10__* %94, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32 @usb_submit_urb(i32 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %79
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @netif_device_detach(i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = call i64 @netif_msg_ifup(%struct.TYPE_10__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @usb_kill_urb(i32 %128)
  br label %174

130:                                              ; preds = %79
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @enable_net_traffic(%struct.net_device* %131, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %130
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = call i64 @netif_msg_ifup(%struct.TYPE_10__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %137
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @usb_kill_urb(i32 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @usb_kill_urb(i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = call i32 @free_skb_pool(%struct.TYPE_10__* %158)
  br label %174

160:                                              ; preds = %130
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = call i32 @set_carrier(%struct.net_device* %161)
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = call i32 @netif_start_queue(%struct.net_device* %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = call i64 @netif_msg_ifup(%struct.TYPE_10__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load %struct.net_device*, %struct.net_device** %3, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %160
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %147, %125, %78
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %22
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_10__* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_11__* @pull_skb(%struct.TYPE_10__*) #1

declare dso_local i32 @set_registers(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i64, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.TYPE_10__*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @enable_net_traffic(%struct.net_device*, i32) #1

declare dso_local i32 @free_skb_pool(%struct.TYPE_10__*) #1

declare dso_local i32 @set_carrier(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
