; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_display_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_display_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: status: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"link down\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"link up\00", align 1
@PHY_STAT_SPMASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c", 100MBit Full Duplex\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c", 100MBit Half Duplex\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c", 10MBit Full Duplex\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c", 10MBit Half Duplex\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c", Unknown speed/duplex\00", align 1
@PHY_STAT_ANC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c", auto-negotiation complete\00", align 1
@PHY_STAT_FAULT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c", remote fault\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mii_display_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_display_status(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %5)
  store %struct.fec_enet_private* %6, %struct.fec_enet_private** %3, align 8
  %7 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %8 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %7, i32 0, i32 0
  store i32* %8, i32** %4, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %65

19:                                               ; preds = %13, %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %25 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %55

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = load volatile i32, i32* %32, align 4
  %34 = load volatile i32, i32* @PHY_STAT_SPMASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %44 [
    i32 131, label %36
    i32 130, label %38
    i32 129, label %40
    i32 128, label %42
  ]

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %46

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %46

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %46

42:                                               ; preds = %30
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %46

44:                                               ; preds = %30
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36
  %47 = load i32*, i32** %4, align 8
  %48 = load volatile i32, i32* %47, align 4
  %49 = load volatile i32, i32* @PHY_STAT_ANC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32*, i32** %4, align 8
  %57 = load volatile i32, i32* %56, align 4
  %58 = load volatile i32, i32* @PHY_STAT_FAULT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %55
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %18
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
