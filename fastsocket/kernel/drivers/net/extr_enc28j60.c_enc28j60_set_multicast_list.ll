; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64 }
%struct.enc28j60_net = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"promiscuous mode\0A\00", align 1
@RXFILTER_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%smulticast mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"all-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXFILTER_MULTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"normal mode\0A\00", align 1
@RXFILTER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @enc28j60_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc28j60_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %5)
  store %struct.enc28j60_net* %6, %struct.enc28j60_net** %3, align 8
  %7 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %8 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %18 = call i64 @netif_msg_link(%struct.enc28j60_net* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = call i32 (i32*, i8*, ...) @dev_info(i32* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @RXFILTER_PROMISC, align 4
  %26 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %27 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %73

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35, %28
  %41 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %42 = call i64 @netif_msg_link(%struct.enc28j60_net* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFF_ALLMULTI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %55 = call i32 (i32*, i8*, ...) @dev_info(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %44, %40
  %57 = load i32, i32* @RXFILTER_MULTI, align 4
  %58 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %59 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %72

60:                                               ; preds = %35
  %61 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %62 = call i64 @netif_msg_link(%struct.enc28j60_net* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @RXFILTER_NORMAL, align 4
  %70 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %71 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %56
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %76 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %81 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %80, i32 0, i32 1
  %82 = call i32 @schedule_work(i32* %81)
  br label %83

83:                                               ; preds = %79, %73
  ret void
}

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.enc28j60_net*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
