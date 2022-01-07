; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_query_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i8*, i8* }
%struct.nes_vnic = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }

@IB_MTU_4096 = common dso_local global i8* null, align 8
@IB_MTU_2048 = common dso_local global i8* null, align 8
@IB_MTU_1024 = common dso_local global i8* null, align 8
@IB_MTU_512 = common dso_local global i8* null, align 8
@IB_MTU_256 = common dso_local global i8* null, align 8
@IB_PORT_DOWN = common dso_local global i8* null, align 8
@IB_PORT_ACTIVE = common dso_local global i8* null, align 8
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_PORT_REINIT_SUP = common dso_local global i32 0, align 4
@IB_PORT_VENDOR_CLASS_SUP = common dso_local global i32 0, align 4
@IB_PORT_BOOT_MGMT_SUP = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_SPEED_SDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @nes_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.nes_vnic*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.nes_vnic* @to_nesvnic(%struct.ib_device* %9)
  store %struct.nes_vnic* %10, %struct.nes_vnic** %7, align 8
  %11 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %12 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %15 = call i32 @memset(%struct.ib_port_attr* %14, i32 0, i32 96)
  %16 = load i8*, i8** @IB_MTU_4096, align 8
  %17 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %17, i32 0, i32 14
  store i8* %16, i8** %18, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 4096
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i8*, i8** @IB_MTU_4096, align 8
  %25 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %25, i32 0, i32 13
  store i8* %24, i8** %26, align 8
  br label %61

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 2048
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** @IB_MTU_2048, align 8
  %34 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %34, i32 0, i32 13
  store i8* %33, i8** %35, align 8
  br label %60

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 1024
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** @IB_MTU_1024, align 8
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  br label %59

45:                                               ; preds = %36
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 512
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** @IB_MTU_512, align 8
  %52 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %52, i32 0, i32 13
  store i8* %51, i8** %53, align 8
  br label %58

54:                                               ; preds = %45
  %55 = load i8*, i8** @IB_MTU_256, align 8
  %56 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %56, i32 0, i32 13
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60, %23
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 12
  store i64 0, i64* %65, align 8
  %66 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  %68 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %68, i32 0, i32 10
  store i64 0, i64* %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = call i64 @netif_queue_stopped(%struct.net_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i8*, i8** @IB_PORT_DOWN, align 8
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  br label %91

77:                                               ; preds = %61
  %78 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %79 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i8*, i8** @IB_PORT_ACTIVE, align 8
  %84 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %85 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %84, i32 0, i32 9
  store i8* %83, i8** %85, align 8
  br label %90

86:                                               ; preds = %77
  %87 = load i8*, i8** @IB_PORT_DOWN, align 8
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 9
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %95 = load i32, i32* @IB_PORT_REINIT_SUP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IB_PORT_VENDOR_CLASS_SUP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IB_PORT_BOOT_MGMT_SUP, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %106 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %108 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %107, i32 0, i32 7
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @IB_WIDTH_4X, align 4
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @IB_SPEED_SDR, align 4
  %113 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %114 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %115, i32 0, i32 4
  store i32 -2147483648, i32* %116, align 8
  ret i32 0
}

declare dso_local %struct.nes_vnic* @to_nesvnic(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
