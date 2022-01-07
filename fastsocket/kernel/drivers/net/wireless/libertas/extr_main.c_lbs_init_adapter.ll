; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_init_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i64*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i8*, i8*, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@MAX_NETWORK_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of memory allocating beacons\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@LBS_DISCONNECTED = common dso_local global i8* null, align 8
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@DEFAULT_AD_HOC_CHANNEL = common dso_local global i32 0, align 4
@CMD_ACT_MAC_RX_ON = common dso_local global i32 0, align 4
@CMD_ACT_MAC_TX_ON = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@LBS802_11POWERMODECAM = common dso_local global i32 0, align 4
@PS_STATE_FULL_POWER = common dso_local global i32 0, align 4
@command_timer_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Out of memory allocating command buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Out of memory allocating event FIFO buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_init_adapter(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @LBS_DEB_MAIN, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load i32, i32* @MAX_NETWORK_COUNT, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_6__* @kzalloc(i64 %11, i32 %12)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 22
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %15, align 8
  %16 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 22
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %141

22:                                               ; preds = %1
  %23 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 21
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 23
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %44, %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MAX_NETWORK_COUNT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 22
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %42 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %41, i32 0, i32 21
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 20
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memset(i32 %50, i32 255, i32 %51)
  %53 = load i8*, i8** @LBS_DISCONNECTED, align 8
  %54 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 19
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @LBS_DISCONNECTED, align 8
  %57 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 18
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %60 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 17
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @IW_MODE_INFRA, align 4
  %64 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @DEFAULT_AD_HOC_CHANNEL, align 4
  %67 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @CMD_ACT_MAC_RX_ON, align 4
  %71 = load i32, i32* @CMD_ACT_MAC_TX_ON, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %76 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %78 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %80 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @LBS802_11POWERMODECAM, align 4
  %83 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @PS_STATE_FULL_POWER, align 4
  %86 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 8
  %88 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 11
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 10
  %93 = load i32, i32* @command_timer_fn, align 4
  %94 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %95 = ptrtoint %struct.lbs_private* %94 to i64
  %96 = call i32 @setup_timer(i32* %92, i32 %93, i64 %95)
  %97 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %98 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %97, i32 0, i32 9
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 8
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %104 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %103, i32 0, i32 7
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %107 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %106, i32 0, i32 6
  %108 = call i32 @init_waitqueue_head(i32* %107)
  %109 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %110 = call i64 @lbs_allocate_cmd_buffer(%struct.lbs_private* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %47
  %113 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %141

116:                                              ; preds = %47
  %117 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %118 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %120 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %119, i32 0, i32 4
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %124 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i32 @kfifo_alloc(i32 64, i32 %127, i32* null)
  %129 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %130 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %132 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %116
  %137 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %141

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140, %136, %112, %20
  %142 = load i32, i32* @LBS_DEB_MAIN, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @lbs_deb_leave_args(i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i64, i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @lbs_allocate_cmd_buffer(%struct.lbs_private*) #1

declare dso_local i32 @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
