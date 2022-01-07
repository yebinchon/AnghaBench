; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_ppp.c_isdn_ppp_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_ppp.c_isdn_ppp_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ISDN_NET_ENCAP_SYNCPPP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"2.3.7\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PPP_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdn_ppp_dev_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i64 @netdev_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISDN_NET_ENCAP_SYNCPPP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %44 [
    i32 128, label %24
    i32 129, label %37
  ]

24:                                               ; preds = %22
  %25 = call i32 @strlen(i32 ptrtoint ([6 x i8]* @.str to i32))
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @copy_to_user(i32 %29, i32 ptrtoint ([6 x i8]* @.str to i32), i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %24
  br label %47

37:                                               ; preds = %22
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @isdn_ppp_dev_ioctl_stats(i32 %40, %struct.ifreq* %41, %struct.net_device* %42)
  store i32 %43, i32* %8, align 4
  br label %47

44:                                               ; preds = %22
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %37, %36
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @copy_to_user(i32, i32, i32) #1

declare dso_local i32 @isdn_ppp_dev_ioctl_stats(i32, %struct.ifreq*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
