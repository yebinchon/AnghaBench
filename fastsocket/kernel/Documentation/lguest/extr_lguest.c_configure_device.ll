; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_configure_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SIOCSIFADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Setting %s interface address\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Bringing interface %s up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @configure_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_device(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 2
  %10 = bitcast i32* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %8, align 8
  %11 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 12)
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcpy(i32 %13, i8* %14)
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SIOCSIFADDR, align 4
  %26 = call i64 @ioctl(i32 %24, i32 %25, %struct.ifreq* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @IFF_UP, align 4
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SIOCSIFFLAGS, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.ifreq* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
