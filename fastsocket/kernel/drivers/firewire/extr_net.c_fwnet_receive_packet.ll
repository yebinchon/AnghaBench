; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_receive_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.fwnet_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IEEE1394_ALL_NODES = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Incoming packet failure\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i32, i64, i8*, i64, i8*)* @fwnet_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_receive_packet(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i8* %8, i64 %9, i8* %10) #0 {
  %12 = alloca %struct.fw_card*, align 8
  %13 = alloca %struct.fw_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.fwnet_device*, align 8
  %24 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %12, align 8
  store %struct.fw_request* %1, %struct.fw_request** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i8* %10, i8** %22, align 8
  %25 = load i8*, i8** %22, align 8
  %26 = bitcast i8* %25 to %struct.fwnet_device*
  store %struct.fwnet_device* %26, %struct.fwnet_device** %23, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @IEEE1394_ALL_NODES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %11
  %31 = load %struct.fw_request*, %struct.fw_request** %13, align 8
  %32 = call i32 @kfree(%struct.fw_request* %31)
  br label %68

33:                                               ; preds = %11
  %34 = load i64, i64* %19, align 8
  %35 = load %struct.fwnet_device*, %struct.fwnet_device** %23, align 8
  %36 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %41, i32* %24, align 4
  br label %63

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %47, i32* %24, align 4
  br label %62

48:                                               ; preds = %42
  %49 = load %struct.fwnet_device*, %struct.fwnet_device** %23, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = load i64, i64* %21, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i64 @fwnet_incoming_packet(%struct.fwnet_device* %49, i8* %50, i64 %51, i32 %52, i32 %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = call i32 @fw_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %58, i32* %24, align 4
  br label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %60, i32* %24, align 4
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %65 = load %struct.fw_request*, %struct.fw_request** %13, align 8
  %66 = load i32, i32* %24, align 4
  %67 = call i32 @fw_send_response(%struct.fw_card* %64, %struct.fw_request* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %30
  ret void
}

declare dso_local i32 @kfree(%struct.fw_request*) #1

declare dso_local i64 @fwnet_incoming_packet(%struct.fwnet_device*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @fw_error(i8*) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
