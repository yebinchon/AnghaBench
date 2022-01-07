; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/appletalk/extr_ltpc.c_ltpc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/appletalk/extr_ltpc.c_ltpc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32* }
%struct.ifreq = type { i32 }
%struct.sockaddr_at = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ltpc_private = type { %struct.atalk_addr }
%struct.atalk_addr = type { i32, i32 }
%struct.lt_init = type { i32, i32 }

@debug = common dso_local global i32 0, align 4
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ltpc_ioctl called\0A\00", align 1
@LT_INIT = common dso_local global i32 0, align 4
@LT_FLAG_ALLLAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ltpc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltpc_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_at*, align 8
  %9 = alloca %struct.ltpc_private*, align 8
  %10 = alloca %struct.atalk_addr*, align 8
  %11 = alloca %struct.lt_init, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %15, %struct.sockaddr_at** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ltpc_private* @netdev_priv(%struct.net_device* %16)
  store %struct.ltpc_private* %17, %struct.ltpc_private** %9, align 8
  %18 = load %struct.ltpc_private*, %struct.ltpc_private** %9, align 8
  %19 = getelementptr inbounds %struct.ltpc_private, %struct.ltpc_private* %18, i32 0, i32 0
  store %struct.atalk_addr* %19, %struct.atalk_addr** %10, align 8
  %20 = load i32, i32* @debug, align 4
  %21 = load i32, i32* @DEBUG_VERBOSE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %3
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %80 [
    i32 128, label %28
    i32 129, label %67
  ]

28:                                               ; preds = %26
  %29 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atalk_addr*, %struct.atalk_addr** %10, align 8
  %34 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @LT_INIT, align 4
  %36 = getelementptr inbounds %struct.lt_init, %struct.lt_init* %11, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.lt_init, %struct.lt_init* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @do_read(%struct.net_device* %42, %struct.lt_init* %11, i32 8, %struct.lt_init* %11, i32 0)
  %44 = load %struct.atalk_addr*, %struct.atalk_addr** %10, align 8
  %45 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @read_30(%struct.net_device* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @LT_FLAG_ALLLAP, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @set_30(%struct.net_device* %51, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 255, i32* %57, align 4
  %58 = load %struct.atalk_addr*, %struct.atalk_addr** %10, align 8
  %59 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %83

67:                                               ; preds = %26
  %68 = load %struct.atalk_addr*, %struct.atalk_addr** %10, align 8
  %69 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %72 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.atalk_addr*, %struct.atalk_addr** %10, align 8
  %75 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %83

80:                                               ; preds = %26
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %67, %28
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ltpc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @do_read(%struct.net_device*, %struct.lt_init*, i32, %struct.lt_init*, i32) #1

declare dso_local i32 @read_30(%struct.net_device*) #1

declare dso_local i32 @set_30(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
