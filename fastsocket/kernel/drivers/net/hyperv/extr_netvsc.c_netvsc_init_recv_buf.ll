; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_init_recv_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_init_recv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i64, i32, %struct.TYPE_12__*, i32, i32, %struct.nvsp_message, i8*, %struct.net_device* }
%struct.TYPE_12__ = type { i64 }
%struct.nvsp_message = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unable to allocate receive buffer of size %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"unable to establish receive buffer's gpadl\0A\00", align 1
@NVSP_MSG1_TYPE_SEND_RECV_BUF = common dso_local global i32 0, align 4
@NETVSC_RECEIVE_BUFFER_ID = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to send receive buffer's gpadl to netvsp\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@NVSP_STAT_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Unable to complete receive buffer initialization with NetVsp - status %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @netvsc_init_recv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_init_recv_buf(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.nvsp_message*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = call %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device* %9)
  store %struct.netvsc_device* %10, %struct.netvsc_device** %6, align 8
  %11 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %12 = icmp ne %struct.netvsc_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %180

16:                                               ; preds = %1
  %17 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %18 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %17, i32 0, i32 7
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @__GFP_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %24 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @get_order(i64 %25)
  %27 = call i64 @__get_free_pages(i32 %22, i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %30 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %32 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %31, i32 0, i32 6
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %16
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %38 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %175

43:                                               ; preds = %16
  %44 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %45 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %48 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %51 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %54 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %53, i32 0, i32 4
  %55 = call i32 @vmbus_establish_gpadl(i32 %46, i8* %49, i64 %52, i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %175

61:                                               ; preds = %43
  %62 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %63 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %62, i32 0, i32 5
  store %struct.nvsp_message* %63, %struct.nvsp_message** %7, align 8
  %64 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %65 = call i32 @memset(%struct.nvsp_message* %64, i32 0, i32 32)
  %66 = load i32, i32* @NVSP_MSG1_TYPE_SEND_RECV_BUF, align 4
  %67 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %68 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %71 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %74 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* @NETVSC_RECEIVE_BUFFER_ID, align 4
  %79 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %80 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %85 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %88 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %89 = ptrtoint %struct.nvsp_message* %88 to i64
  %90 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %91 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %92 = call i32 @vmbus_sendpacket(i32 %86, %struct.nvsp_message* %87, i32 32, i64 %89, i32 %90, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %61
  %96 = load %struct.net_device*, %struct.net_device** %8, align 8
  %97 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %175

98:                                               ; preds = %61
  %99 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %100 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %99, i32 0, i32 3
  %101 = load i32, i32* @HZ, align 4
  %102 = mul nsw i32 5, %101
  %103 = call i32 @wait_for_completion_timeout(i32* %100, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @BUG_ON(i32 %106)
  %108 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %109 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NVSP_STAT_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %98
  %117 = load %struct.net_device*, %struct.net_device** %8, align 8
  %118 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %119 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %175

127:                                              ; preds = %98
  %128 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %129 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %135 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %137 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %143 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call %struct.TYPE_12__* @kmemdup(i32 %141, i32 %147, i32 %148)
  %150 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %151 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %150, i32 0, i32 2
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %151, align 8
  %152 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %153 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %152, i32 0, i32 2
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = icmp eq %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %127
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %175

159:                                              ; preds = %127
  %160 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %161 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %166 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164, %159
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %175

174:                                              ; preds = %164
  br label %178

175:                                              ; preds = %171, %156, %116, %95, %58, %35
  %176 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %177 = call i32 @netvsc_destroy_recv_buf(%struct.netvsc_device* %176)
  br label %178

178:                                              ; preds = %175, %174
  %179 = load i32, i32* %4, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %13
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @vmbus_establish_gpadl(i32, i8*, i64, i32*) #1

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_12__* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @netvsc_destroy_recv_buf(%struct.netvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
