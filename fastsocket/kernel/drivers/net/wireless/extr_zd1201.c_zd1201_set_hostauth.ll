; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_hostauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_hostauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32 }
%struct.zd1201 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ZD1201_RID_CNFHOSTAUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @zd1201_set_hostauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_hostauth(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.zd1201* @netdev_priv(%struct.net_device* %11)
  store %struct.zd1201* %12, %struct.zd1201** %10, align 8
  %13 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %14 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %22 = load i32, i32* @ZD1201_RID_CNFHOSTAUTH, align 4
  %23 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @zd1201_setconfig16(%struct.zd1201* %21, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
