; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_get_tun_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_get_tun_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/net/tun\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tap%d\00", align 1
@TUNSETIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"configuring /dev/net/tun\00", align 1
@TUNSETOFFLOAD = common dso_local global i32 0, align 4
@TUN_F_CSUM = common dso_local global i32 0, align 4
@TUN_F_TSO4 = common dso_local global i32 0, align 4
@TUN_F_TSO6 = common dso_local global i32 0, align 4
@TUN_F_TSO_ECN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not set features for tun device\00", align 1
@TUNSETNOCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_tun_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tun_device(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifreq, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @IFNAMSIZ, align 4
  %6 = zext i32 %5 to i64
  %7 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 8)
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call i32 @open_or_die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @IFF_TAP, align 4
  %11 = load i32, i32* @IFF_NO_PI, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IFF_VNET_HDR, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TUNSETIFF, align 4
  %21 = call i64 (i32, i32, ...) @ioctl(i32 %19, i32 %20, %struct.ifreq* %3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TUNSETOFFLOAD, align 4
  %28 = load i32, i32* @TUN_F_CSUM, align 4
  %29 = load i32, i32* @TUN_F_TSO4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TUN_F_TSO6, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TUN_F_TSO_ECN, align 4
  %34 = or i32 %32, %33
  %35 = call i64 (i32, i32, ...) @ioctl(i32 %26, i32 %27, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TUNSETNOCSUM, align 4
  %42 = call i64 (i32, i32, ...) @ioctl(i32 %40, i32 %41, i32 1)
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFNAMSIZ, align 4
  %47 = call i32 @memcpy(i8* %43, i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @open_or_die(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
