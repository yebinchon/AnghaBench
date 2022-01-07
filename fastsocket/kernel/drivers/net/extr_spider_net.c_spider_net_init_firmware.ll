; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_init_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_init_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.device_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SPIDER_NET_FIRMWARE_NAME = common dso_local global i32 0, align 4
@SPIDER_NET_FIRMWARE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Incorrect size of spidernet firmware in filesystem. Looking in host firmware...\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Incorrect size of spidernet firmware in host firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Couldn't find spidernet firmware in filesystem or host firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_init_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_init_firmware(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @SPIDER_NET_FIRMWARE_NAME, align 4
  %12 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %13 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i64 @request_firmware(%struct.firmware** %4, i32 %11, i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.firmware*, %struct.firmware** %4, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SPIDER_NET_FIRMWARE_LEN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %26 = call i64 @netif_msg_probe(%struct.spider_net_card* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %30 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %47

34:                                               ; preds = %24, %18
  %35 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %36 = load %struct.firmware*, %struct.firmware** %4, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @spider_net_download_firmware(%struct.spider_net_card* %35, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.firmware*, %struct.firmware** %4, align 8
  %41 = call i32 @release_firmware(%struct.firmware* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %47

45:                                               ; preds = %34
  br label %79

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %44, %28
  %48 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %49 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call %struct.device_node* @pci_device_to_OF_node(%struct.TYPE_4__* %50)
  store %struct.device_node* %51, %struct.device_node** %5, align 8
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = icmp ne %struct.device_node* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %81

55:                                               ; preds = %47
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i32* @of_get_property(%struct.device_node* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %81

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SPIDER_NET_FIRMWARE_LEN, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %67 = call i64 @netif_msg_probe(%struct.spider_net_card* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %71 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %79

75:                                               ; preds = %65, %61
  %76 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @spider_net_download_firmware(%struct.spider_net_card* %76, i32* %77)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %69, %45
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %93

81:                                               ; preds = %60, %54
  %82 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %83 = call i64 @netif_msg_probe(%struct.spider_net_card* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %87 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %79
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i64 @netif_msg_probe(%struct.spider_net_card*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spider_net_download_firmware(%struct.spider_net_card*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.TYPE_4__*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
