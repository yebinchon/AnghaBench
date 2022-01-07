; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_destroy_recv_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_destroy_recv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32*, i64, i32*, i32, i64, %struct.TYPE_10__*, %struct.nvsp_message, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }

@NVSP_MSG1_TYPE_REVOKE_RECV_BUF = common dso_local global i32 0, align 4
@NETVSC_RECEIVE_BUFFER_ID = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"unable to send revoke receive buffer to netvsp\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to teardown receive buffer's gpadl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netvsc_device*)* @netvsc_destroy_recv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_destroy_recv_buf(%struct.netvsc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca %struct.nvsp_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  store %struct.netvsc_device* %0, %struct.netvsc_device** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %8 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %7, i32 0, i32 7
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %11 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %16 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %15, i32 0, i32 6
  store %struct.nvsp_message* %16, %struct.nvsp_message** %4, align 8
  %17 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %18 = call i32 @memset(%struct.nvsp_message* %17, i32 0, i32 8)
  %19 = load i32, i32* @NVSP_MSG1_TYPE_REVOKE_RECV_BUF, align 4
  %20 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %21 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @NETVSC_RECEIVE_BUFFER_ID, align 4
  %24 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %25 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %30 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %29, i32 0, i32 5
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %35 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %36 = ptrtoint %struct.nvsp_message* %35 to i64
  %37 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %38 = call i32 @vmbus_sendpacket(i32 %33, %struct.nvsp_message* %34, i32 8, i64 %36, i32 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %14
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %103

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %48 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %53 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %52, i32 0, i32 5
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %58 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @vmbus_teardown_gpadl(i32 %56, i64 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %103

67:                                               ; preds = %51
  %68 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %69 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %46
  %71 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %72 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %77 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = ptrtoint i32* %78 to i64
  %80 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %81 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @get_order(i32 %82)
  %84 = call i32 @free_pages(i64 %79, i32 %83)
  %85 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %86 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %75, %70
  %88 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %89 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %94 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %96 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  %99 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %100 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %63, %41
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @vmbus_teardown_gpadl(i32, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
