; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getsens.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getsens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i64, i32 }
%struct.orinoco_private = type { i32, %struct.hermes }
%struct.hermes = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CNFSYSTEMSCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @orinoco_ioctl_getsens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_getsens(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.hermes*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %15)
  store %struct.orinoco_private* %16, %struct.orinoco_private** %10, align 8
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 1
  store %struct.hermes* %18, %struct.hermes** %11, align 8
  %19 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %20 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  %27 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %28 = call i64 @orinoco_lock(%struct.orinoco_private* %27, i64* %14)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %26
  %34 = load %struct.hermes*, %struct.hermes** %11, align 8
  %35 = load i32, i32* @USER_BAP, align 4
  %36 = load i32, i32* @HERMES_RID_CNFSYSTEMSCALE, align 4
  %37 = call i32 @hermes_read_wordrec(%struct.hermes* %34, i32 %35, i32 %36, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %39 = call i32 @orinoco_unlock(%struct.orinoco_private* %38, i64* %14)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %50

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %47 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %49 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %42, %30, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @hermes_read_wordrec(%struct.hermes*, i32, i32, i32*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
