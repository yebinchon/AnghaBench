; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_rtl8150_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rtl8150_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8150_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %54 [
    i32 128, label %16
    i32 129, label %22
    i32 130, label %34
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %3, %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 31
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = call i32 @read_mii_word(%struct.TYPE_5__* %23, i32 %26, i32 %30, i32* %32)
  br label %57

34:                                               ; preds = %3
  %35 = load i32, i32* @CAP_NET_ADMIN, align 4
  %36 = call i32 @capable(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 31
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @write_mii_word(%struct.TYPE_5__* %42, i32 %45, i32 %49, i32 %52)
  br label %57

54:                                               ; preds = %3
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %41, %22
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @read_mii_word(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @write_mii_word(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
