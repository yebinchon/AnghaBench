; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@CAM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @w90p910_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.sockaddr*
  store %struct.sockaddr* %8, %struct.sockaddr** %6, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @is_valid_ether_addr(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EADDRNOTAVAIL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %20, i32 %23, i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load i32, i32* @CAM0, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @w90p910_write_cam(%struct.net_device* %28, i32 %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @w90p910_write_cam(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
