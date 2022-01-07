; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_link_status_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_link_status_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.net_device*, %struct.niu_link_config }
%struct.net_device = type { i32 }
%struct.niu_link_config = type { i64, i64 }

@LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Link is up at %s, %s duplex\0A\00", align 1
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"10Gb/sec\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"1Gb/sec\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"100Mbit/sec\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"10Mbit/sec\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32)* @niu_link_status_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_link_status_common(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu_link_config*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 2
  store %struct.niu_link_config* %9, %struct.niu_link_config** %5, align 8
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i64 @netif_carrier_ok(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load i32, i32* @LINK, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %25 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPEED_10000, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %47

30:                                               ; preds = %19
  %31 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %32 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPEED_1000, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %39 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPEED_100, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  br label %45

45:                                               ; preds = %37, %36
  %46 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %36 ], [ %44, %37 ]
  br label %47

47:                                               ; preds = %45, %29
  %48 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %29 ], [ %46, %45 ]
  %49 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %50 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DUPLEX_FULL, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %56 = call i32 @niuinfo(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %48, i8* %55)
  %57 = load %struct.niu*, %struct.niu** %3, align 8
  %58 = getelementptr inbounds %struct.niu, %struct.niu* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.niu*, %struct.niu** %3, align 8
  %62 = call i32 @niu_init_xif(%struct.niu* %61)
  %63 = load %struct.niu*, %struct.niu** %3, align 8
  %64 = call i32 @niu_handle_led(%struct.niu* %63, i32 1)
  %65 = load %struct.niu*, %struct.niu** %3, align 8
  %66 = getelementptr inbounds %struct.niu, %struct.niu* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call i32 @netif_carrier_on(%struct.net_device* %69)
  br label %97

71:                                               ; preds = %16, %2
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = call i64 @netif_carrier_ok(%struct.net_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @LINK, align 4
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @niuwarn(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  %84 = load %struct.niu*, %struct.niu** %3, align 8
  %85 = getelementptr inbounds %struct.niu, %struct.niu* %84, i32 0, i32 0
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.niu*, %struct.niu** %3, align 8
  %89 = call i32 @niu_handle_led(%struct.niu* %88, i32 0)
  %90 = load %struct.niu*, %struct.niu** %3, align 8
  %91 = getelementptr inbounds %struct.niu, %struct.niu* %90, i32 0, i32 0
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call i32 @netif_carrier_off(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %78, %75, %71
  br label %97

97:                                               ; preds = %96, %47
  ret i32 0
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @niuinfo(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @niu_init_xif(%struct.niu*) #1

declare dso_local i32 @niu_handle_led(%struct.niu*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @niuwarn(i32, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
