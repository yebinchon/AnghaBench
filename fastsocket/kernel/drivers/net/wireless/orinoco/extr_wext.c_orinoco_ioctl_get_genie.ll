; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_get_genie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_get_genie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.orinoco_private = type { i64, i32* }

@EBUSY = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @orinoco_ioctl_get_genie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_get_genie(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %13)
  store %struct.orinoco_private* %14, %struct.orinoco_private** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %16 = call i64 @orinoco_lock(%struct.orinoco_private* %15, i64* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %66

21:                                               ; preds = %4
  %22 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %23 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %28 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %21
  %32 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %33 = bitcast %union.iwreq_data* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %62

35:                                               ; preds = %26
  %36 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %37 = bitcast %union.iwreq_data* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %41 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @E2BIG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %62

47:                                               ; preds = %35
  %48 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %49 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %52 = bitcast %union.iwreq_data* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %56 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %59 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @memcpy(i8* %54, i32* %57, i64 %60)
  br label %62

62:                                               ; preds = %47, %44, %31
  %63 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %64 = call i32 @orinoco_unlock(%struct.orinoco_private* %63, i64* %11)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %18
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
