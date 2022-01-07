; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ray_cs set_multicast_list(%p)\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ray_cs set_multicast_list promisc on\0A\00", align 1
@OBJID_promiscuous_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ray_cs set_multicast_list promisc off\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IFF_PROMISC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i32 1, i32* %4, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i32, i32* @OBJID_promiscuous_mode, align 4
  %30 = call i32 @ray_update_parm(%struct.net_device* %28, i32 %29, i32* %4, i32 4)
  br label %31

31:                                               ; preds = %22, %15
  br label %49

32:                                               ; preds = %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  store i32 0, i32* %4, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @OBJID_promiscuous_mode, align 4
  %47 = call i32 @ray_update_parm(%struct.net_device* %45, i32 %46, i32* %4, i32 4)
  br label %48

48:                                               ; preds = %39, %32
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFF_ALLMULTI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @ray_update_multi_list(%struct.net_device* %57, i32 1)
  br label %71

59:                                               ; preds = %49
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call i32 @ray_update_multi_list(%struct.net_device* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %56
  ret void
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @ray_update_parm(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @ray_update_multi_list(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
