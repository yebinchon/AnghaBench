; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }
%struct.zd1201 = type { i32 }

@ZD1201_RATEB1 = common dso_local global i16 0, align 2
@ZD1201_RATEB2 = common dso_local global i16 0, align 2
@ZD1201_RATEB5 = common dso_local global i16 0, align 2
@ZD1201_RATEB11 = common dso_local global i16 0, align 2
@ZD1201_RID_TXRATECNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @zd1201_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.zd1201* @netdev_priv(%struct.net_device* %13)
  store %struct.zd1201* %14, %struct.zd1201** %10, align 8
  %15 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %16 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %25 [
    i32 1000000, label %18
    i32 2000000, label %20
    i32 5500000, label %22
    i32 11000000, label %24
  ]

18:                                               ; preds = %4
  %19 = load i16, i16* @ZD1201_RATEB1, align 2
  store i16 %19, i16* %11, align 2
  br label %27

20:                                               ; preds = %4
  %21 = load i16, i16* @ZD1201_RATEB2, align 2
  store i16 %21, i16* %11, align 2
  br label %27

22:                                               ; preds = %4
  %23 = load i16, i16* @ZD1201_RATEB5, align 2
  store i16 %23, i16* %11, align 2
  br label %27

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %4, %24
  %26 = load i16, i16* @ZD1201_RATEB11, align 2
  store i16 %26, i16* %11, align 2
  br label %27

27:                                               ; preds = %25, %22, %20, %18
  %28 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %29 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load i16, i16* %11, align 2
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 %34, 1
  %36 = load i16, i16* %11, align 2
  %37 = sext i16 %36 to i32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %11, align 2
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %42 = load i32, i32* @ZD1201_RID_TXRATECNTL, align 4
  %43 = load i16, i16* %11, align 2
  %44 = call i32 @zd1201_setconfig16(%struct.zd1201* %41, i32 %42, i16 signext %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %51 = call i32 @zd1201_mac_reset(%struct.zd1201* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32, i32* %5, align 4
  ret i32 %53
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
