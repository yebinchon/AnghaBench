; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.h_velocity_get_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.h_velocity_get_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.in_device = type { i64 }
%struct.in_ifaddr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*)* @velocity_get_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_get_ip(%struct.velocity_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.velocity_info*, align 8
  %4 = alloca %struct.in_device*, align 8
  %5 = alloca %struct.in_ifaddr*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %3, align 8
  %6 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.in_device*
  store %struct.in_device* %11, %struct.in_device** %4, align 8
  %12 = load %struct.in_device*, %struct.in_device** %4, align 8
  %13 = icmp ne %struct.in_device* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.in_device*, %struct.in_device** %4, align 8
  %16 = getelementptr inbounds %struct.in_device, %struct.in_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %18, %struct.in_ifaddr** %5, align 8
  %19 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %20 = icmp ne %struct.in_ifaddr* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %23 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %26 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %25, i32 0, i32 0
  %27 = call i32 @memcpy(i32 %24, i32* %26, i32 4)
  store i32 0, i32* %2, align 4
  br label %32

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
