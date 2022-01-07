; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_on_channel_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_on_channel_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { %struct.hv_device*, %struct.TYPE_2__* }
%struct.hv_device = type { i32 }
%struct.TYPE_2__ = type { %struct.hv_device* }
%struct.storvsc_device = type { %struct.storvsc_cmd_request, %struct.storvsc_cmd_request }
%struct.storvsc_cmd_request = type { i32, i32 }
%struct.vstor_packet = type { i32 }

@vmscsi_size_delta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @storvsc_on_channel_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_on_channel_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.storvsc_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.storvsc_cmd_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %14, %struct.vmbus_channel** %3, align 8
  %15 = call i32 @ALIGN(i32 4, i32 8)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.hv_device*, %struct.hv_device** %27, align 8
  store %struct.hv_device* %28, %struct.hv_device** %4, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %30, i32 0, i32 0
  %32 = load %struct.hv_device*, %struct.hv_device** %31, align 8
  store %struct.hv_device* %32, %struct.hv_device** %4, align 8
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %35 = call %struct.storvsc_device* @get_in_stor_device(%struct.hv_device* %34)
  store %struct.storvsc_device* %35, %struct.storvsc_device** %5, align 8
  %36 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %37 = icmp ne %struct.storvsc_device* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  br label %86

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %84, %39
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %42 = load i32, i32* @vmscsi_size_delta, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ALIGN(i32 %45, i32 8)
  %47 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %41, i8* %18, i32 %46, i64* %6, i64* %7)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %40
  %51 = load i64, i64* %6, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  %55 = inttoptr i64 %54 to %struct.storvsc_cmd_request*
  store %struct.storvsc_cmd_request* %55, %struct.storvsc_cmd_request** %10, align 8
  %56 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %57 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %58 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %57, i32 0, i32 1
  %59 = icmp eq %struct.storvsc_cmd_request* %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %62 = load %struct.storvsc_device*, %struct.storvsc_device** %5, align 8
  %63 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %62, i32 0, i32 0
  %64 = icmp eq %struct.storvsc_cmd_request* %61, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %60, %53
  %66 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %67 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %66, i32 0, i32 1
  %68 = load i32, i32* @vmscsi_size_delta, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memcpy(i32* %67, i8* %18, i32 %71)
  %73 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %74 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %73, i32 0, i32 0
  %75 = call i32 @complete(i32* %74)
  br label %81

76:                                               ; preds = %60
  %77 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %78 = bitcast i8* %18 to %struct.vstor_packet*
  %79 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %10, align 8
  %80 = call i32 @storvsc_on_receive(%struct.hv_device* %77, %struct.vstor_packet* %78, %struct.storvsc_cmd_request* %79)
  br label %81

81:                                               ; preds = %76, %65
  br label %83

82:                                               ; preds = %50, %40
  br label %85

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  br i1 true, label %40, label %85

85:                                               ; preds = %84, %82
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %38
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.storvsc_device* @get_in_stor_device(%struct.hv_device*) #1

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i8*, i32, i64*, i64*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @storvsc_on_receive(%struct.hv_device*, %struct.vstor_packet*, %struct.storvsc_cmd_request*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
