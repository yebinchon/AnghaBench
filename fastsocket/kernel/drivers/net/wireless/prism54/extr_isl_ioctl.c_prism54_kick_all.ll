; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_kick_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_kick_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.obj_mlme = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DOT11_OID_DISASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_kick_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_kick_all(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.obj_mlme*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.obj_mlme* @kmalloc(i32 8, i32 %12)
  store %struct.obj_mlme* %13, %struct.obj_mlme** %10, align 8
  %14 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %15 = icmp eq %struct.obj_mlme* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %30

19:                                               ; preds = %4
  %20 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %21 = getelementptr inbounds %struct.obj_mlme, %struct.obj_mlme* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call i32 @netdev_priv(%struct.net_device* %22)
  %24 = load i32, i32* @DOT11_OID_DISASSOCIATE, align 4
  %25 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %26 = call i32 @mgt_set_request(i32 %23, i32 %24, i32 0, %struct.obj_mlme* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.obj_mlme*, %struct.obj_mlme** %10, align 8
  %28 = call i32 @kfree(%struct.obj_mlme* %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.obj_mlme* @kmalloc(i32, i32) #1

declare dso_local i32 @mgt_set_request(i32, i32, i32, %struct.obj_mlme*) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.obj_mlme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
