; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_channel_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_netvsc_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.vmpacket_descriptor = type { i32 }

@NETVSC_PACKET_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unhandled packet type %d, tid %llx len %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"unable to allocate buffer of size (%d)!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @netvsc_channel_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_channel_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vmpacket_descriptor*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.hv_device*
  store %struct.hv_device* %14, %struct.hv_device** %4, align 8
  %15 = load i32, i32* @NETVSC_PACKET_SIZE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @NETVSC_PACKET_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kzalloc(i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %115

25:                                               ; preds = %1
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %10, align 8
  %27 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %28 = call %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device* %27)
  store %struct.netvsc_device* %28, %struct.netvsc_device** %5, align 8
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %30 = icmp ne %struct.netvsc_device* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %112

32:                                               ; preds = %25
  %33 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %34 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %33, i32 0, i32 0
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  store %struct.net_device* %35, %struct.net_device** %12, align 8
  br label %36

36:                                               ; preds = %110, %32
  %37 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %38 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @vmbus_recvpacket_raw(i32 %39, i8* %40, i32 %41, i32* %6, i32* %7)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  %50 = bitcast i8* %49 to %struct.vmpacket_descriptor*
  store %struct.vmpacket_descriptor* %50, %struct.vmpacket_descriptor** %9, align 8
  %51 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %52 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %62 [
    i32 129, label %54
    i32 128, label %58
  ]

54:                                               ; preds = %48
  %55 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %56 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %57 = call i32 @netvsc_send_completion(%struct.hv_device* %55, %struct.vmpacket_descriptor* %56)
  br label %70

58:                                               ; preds = %48
  %59 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %60 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %61 = call i32 @netvsc_receive(%struct.hv_device* %59, %struct.vmpacket_descriptor* %60)
  br label %70

62:                                               ; preds = %48
  %63 = load %struct.net_device*, %struct.net_device** %12, align 8
  %64 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %65 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %58, %54
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @NETVSC_PACKET_SIZE, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** %10, align 8
  %78 = load i32, i32* @NETVSC_PACKET_SIZE, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %90

80:                                               ; preds = %45
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @NETVSC_PACKET_SIZE, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @kfree(i8* %85)
  %87 = load i8*, i8** %8, align 8
  store i8* %87, i8** %10, align 8
  %88 = load i32, i32* @NETVSC_PACKET_SIZE, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %84, %80
  br label %111

90:                                               ; preds = %79
  br label %109

91:                                               ; preds = %36
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @ENOBUFS, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call i8* @kmalloc(i32 %97, i32 %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.net_device*, %struct.net_device** %12, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %111

106:                                              ; preds = %96
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %106, %91
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109
  br i1 true, label %36, label %111

111:                                              ; preds = %110, %102, %89
  br label %112

112:                                              ; preds = %111, %31
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @kfree(i8* %113)
  br label %115

115:                                              ; preds = %112, %24
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.netvsc_device* @get_inbound_net_device(%struct.hv_device*) #1

declare dso_local i32 @vmbus_recvpacket_raw(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @netvsc_send_completion(%struct.hv_device*, %struct.vmpacket_descriptor*) #1

declare dso_local i32 @netvsc_receive(%struct.hv_device*, %struct.vmpacket_descriptor*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
