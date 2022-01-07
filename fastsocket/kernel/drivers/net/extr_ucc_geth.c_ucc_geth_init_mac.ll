; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_ucc_geth_init_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_ucc_geth_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"%s: Cannot configure internal struct, aborting.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Cannot configure net device, aborting.\00", align 1
@COMM_DIR_RX_AND_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: Cannot enable net device, aborting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*)* @ucc_geth_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_geth_init_mac(%struct.ucc_geth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucc_geth_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %3, align 8
  %6 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %7 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %10 = call i32 @ucc_struct_init(%struct.ucc_geth_private* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %15 = call i64 @netif_msg_ifup(%struct.ucc_geth_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ugeth_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %13
  br label %109

23:                                               ; preds = %1
  %24 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %25 = call i32 @ucc_geth_startup(%struct.ucc_geth_private* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %30 = call i64 @netif_msg_ifup(%struct.ucc_geth_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ugeth_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  br label %109

38:                                               ; preds = %23
  %39 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %40 = call i32 @adjust_enet_interface(%struct.ucc_geth_private* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %45 = call i64 @netif_msg_ifup(%struct.ucc_geth_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ugeth_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  br label %109

53:                                               ; preds = %38
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %85 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %89 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @init_mac_station_addr_regs(i32 %58, i32 %63, i32 %68, i32 %73, i32 %78, i32 %83, i32* %87, i32* %91)
  %93 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %94 = load i32, i32* @COMM_DIR_RX_AND_TX, align 4
  %95 = call i32 @ugeth_enable(%struct.ucc_geth_private* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %53
  %99 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %100 = call i64 @netif_msg_ifup(%struct.ucc_geth_private* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ugeth_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  br label %109

108:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %107, %52, %37, %22
  %110 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %111 = call i32 @ucc_geth_stop(%struct.ucc_geth_private* %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @ucc_struct_init(%struct.ucc_geth_private*) #1

declare dso_local i64 @netif_msg_ifup(%struct.ucc_geth_private*) #1

declare dso_local i32 @ugeth_err(i8*, i32) #1

declare dso_local i32 @ucc_geth_startup(%struct.ucc_geth_private*) #1

declare dso_local i32 @adjust_enet_interface(%struct.ucc_geth_private*) #1

declare dso_local i32 @init_mac_station_addr_regs(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ugeth_enable(%struct.ucc_geth_private*, i32) #1

declare dso_local i32 @ucc_geth_stop(%struct.ucc_geth_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
