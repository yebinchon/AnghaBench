; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_init_netdevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_init_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i32, i64, i64, i32, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"init_dev\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CLAW_DEFAULT_MTU_SIZE = common dso_local global i32 0, align 4
@ARPHRD_SLIP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@claw_netdev_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"initok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @claw_init_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_init_netdevice(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @setup, align 4
  %4 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @setup, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @CLAW_DEFAULT_MTU_SIZE, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @ARPHRD_SLIP, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store i32 1300, i32* %21, align 8
  %22 = load i32, i32* @IFF_POINTOPOINT, align 4
  %23 = load i32, i32* @IFF_NOARP, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  store i32* @claw_netdev_ops, i32** %28, align 8
  %29 = load i32, i32* @setup, align 4
  %30 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
