; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_tuntap_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/iss/extr_network.c_tuntap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_net_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.ifreq = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/net/tun\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to open /dev/net/tun, returned %d (errno = %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@TUNSETIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to set interface, returned %d (errno = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_net_private*)* @tuntap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuntap_open(%struct.iss_net_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_net_private*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iss_net_private* %0, %struct.iss_net_private** %3, align 8
  %8 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %9 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %17 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %64

26:                                               ; preds = %1
  %27 = call i32 @simc_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 2, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %64

34:                                               ; preds = %26
  %35 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 8)
  %36 = load i32, i32* @IFF_TAP, align 4
  %37 = load i32, i32* @IFF_NO_PI, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlcpy(i32 %41, i8* %42, i32 4)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TUNSETIFF, align 4
  %46 = bitcast %struct.ifreq* %4 to i8*
  %47 = call i32 @simc_ioctl(i32 %44, i32 %45, i8* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @simc_close(i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %59 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %56, %49, %29, %23
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @simc_open(i8*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @simc_ioctl(i32, i32, i8*) #1

declare dso_local i32 @simc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
