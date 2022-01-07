; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_wap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i64, i32 }
%struct.assoc_request = type { i32, i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ASSOC: WAP: sa_data %pM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ASSOC_FLAG_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @lbs_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lbs_private*, align 8
  %11 = alloca %struct.assoc_request*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  store %struct.lbs_private* %15, %struct.lbs_private** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @LBS_DEB_WEXT, align 4
  %17 = call i32 @lbs_deb_enter(i32 %16)
  %18 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %70

25:                                               ; preds = %4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ARPHRD_ETHER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %70

34:                                               ; preds = %25
  %35 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %43 = call %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %42)
  store %struct.assoc_request* %43, %struct.assoc_request** %11, align 8
  %44 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %45 = icmp ne %struct.assoc_request* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %34
  %47 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %48 = call i32 @lbs_cancel_association_work(%struct.lbs_private* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %65

51:                                               ; preds = %34
  %52 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %53 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %52, i32 0, i32 1
  %54 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32* %53, i32 %56, i32 %57)
  %59 = load i32, i32* @ASSOC_FLAG_BSSID, align 4
  %60 = load %struct.assoc_request*, %struct.assoc_request** %11, align 8
  %61 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %64 = call i32 @lbs_postpone_association_work(%struct.lbs_private* %63)
  br label %65

65:                                               ; preds = %51, %46
  %66 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %67 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %31, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_wext(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cancel_association_work(%struct.lbs_private*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_postpone_association_work(%struct.lbs_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
