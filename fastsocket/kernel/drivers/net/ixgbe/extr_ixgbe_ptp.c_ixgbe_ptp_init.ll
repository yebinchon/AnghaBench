; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32*, %struct.TYPE_7__*, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i8* null, align 8
@ixgbe_ptp_adjfreq = common dso_local global i8* null, align 8
@ixgbe_ptp_adjtime = common dso_local global i8* null, align 8
@ixgbe_ptp_gettime = common dso_local global i8* null, align 8
@ixgbe_ptp_settime = common dso_local global i8* null, align 8
@ixgbe_ptp_enable = common dso_local global i8* null, align 8
@ixgbe_ptp_tx_hwtstamp_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"registered PHC device on %s\0A\00", align 1
@__IXGBE_PTP_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_init(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 7
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %108 [
    i32 128, label %12
    i32 129, label %60
  ]

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i32 %16, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** @THIS_MODULE, align 8
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 10
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 250000000, i32* %27, align 8
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 9
  store i32 0, i32* %30, align 8
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 7
  store i32 0, i32* %36, align 8
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i8*, i8** @ixgbe_ptp_adjfreq, align 8
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 6
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @ixgbe_ptp_adjtime, align 8
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @ixgbe_ptp_gettime, align 8
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @ixgbe_ptp_settime, align 8
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @ixgbe_ptp_enable, align 8
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  br label %111

60:                                               ; preds = %1
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @snprintf(i32 %64, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** @THIS_MODULE, align 8
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 10
  store i8* %69, i8** %72, align 8
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 250000000, i32* %75, align 8
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 9
  store i32 0, i32* %78, align 8
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 8
  store i32 0, i32* %81, align 4
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  store i32 0, i32* %84, align 8
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i8*, i8** @ixgbe_ptp_adjfreq, align 8
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @ixgbe_ptp_adjtime, align 8
  %93 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** @ixgbe_ptp_gettime, align 8
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  store i8* %96, i8** %99, align 8
  %100 = load i8*, i8** @ixgbe_ptp_settime, align 8
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @ixgbe_ptp_enable, align 8
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  br label %111

108:                                              ; preds = %1
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  br label %149

111:                                              ; preds = %60, %12
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 5
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %115, i32 0, i32 4
  %117 = load i32, i32* @ixgbe_ptp_tx_hwtstamp_work, align 4
  %118 = call i32 @INIT_WORK(i32* %116, i32 %117)
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 3
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 2
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32* @ptp_clock_register(%struct.TYPE_8__* %120, i32* %124)
  %126 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %126, i32 0, i32 1
  store i32* %125, i32** %127, align 8
  %128 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @IS_ERR(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %111
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %135 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  %136 = call i32 @e_dev_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %142

137:                                              ; preds = %111
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @e_dev_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %137, %133
  %143 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %144 = call i32 @ixgbe_ptp_reset(%struct.ixgbe_adapter* %143)
  %145 = load i32, i32* @__IXGBE_PTP_RUNNING, align 4
  %146 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %147 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %146, i32 0, i32 0
  %148 = call i32 @set_bit(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %142, %108
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @e_dev_err(i8*) #1

declare dso_local i32 @e_dev_info(i8*, i8*) #1

declare dso_local i32 @ixgbe_ptp_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
