; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_priv_writemif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_priv_writemif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*, i32, i8, i8*, i32*)* }

@HFA384X_CMDCODE_WRITEMIF = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i8*, i8*)* @prism2_ioctl_priv_writemif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_priv_writemif(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %14)
  store %struct.hostap_interface* %15, %struct.hostap_interface** %10, align 8
  %16 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %17 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %12, align 1
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %13, align 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64 (%struct.net_device*, i32, i8, i8*, i32*)*, i64 (%struct.net_device*, i32, i8, i8*, i32*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = load i32, i32* @HFA384X_CMDCODE_WRITEMIF, align 4
  %31 = load i8, i8* %12, align 1
  %32 = call i64 %28(%struct.net_device* %29, i32 %30, i8 signext %31, i8* %13, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
