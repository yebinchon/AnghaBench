; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i16, i32, i64 }
%struct.zd1201 = type { i32 }

@ZD1201_RTSMAX = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@ZD1201_RID_CNFRTSTHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @zd1201_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_rts(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.zd1201* @netdev_priv(%struct.net_device* %13)
  store %struct.zd1201* %14, %struct.zd1201** %10, align 8
  %15 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %16 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %12, align 2
  %18 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %4
  %28 = load i16, i16* @ZD1201_RTSMAX, align 2
  store i16 %28, i16* %12, align 2
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i16, i16* %12, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @ZD1201_RTSMAX, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %57

38:                                               ; preds = %29
  %39 = load i16, i16* %12, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %57

45:                                               ; preds = %38
  %46 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %47 = load i32, i32* @ZD1201_RID_CNFRTSTHRESHOLD, align 4
  %48 = load i16, i16* %12, align 2
  %49 = call i32 @zd1201_setconfig16(%struct.zd1201* %46, i32 %47, i16 signext %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %56 = call i32 @zd1201_mac_reset(%struct.zd1201* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %52, %42, %35
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i16 signext) #1

declare dso_local i32 @zd1201_mac_reset(%struct.zd1201*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
