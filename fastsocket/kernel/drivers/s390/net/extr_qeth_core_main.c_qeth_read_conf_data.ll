; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_read_conf_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_read_conf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.qeth_channel }
%struct.qeth_channel = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.ciw = type { i64, i32 }

@CIW_TYPE_RCD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@CH_STATE_RCD = common dso_local global i64 0, align 8
@QETH_RCD_PARM = common dso_local global i32 0, align 4
@LPM_ANYPATH = common dso_local global i32 0, align 4
@QETH_RCD_TIMEOUT = common dso_local global i32 0, align 4
@CH_STATE_RCD_DONE = common dso_local global i64 0, align 8
@CH_STATE_DOWN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i8**, i32*)* @qeth_read_conf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_read_conf_data(%struct.qeth_card* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ciw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_channel*, align 8
  %12 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 1
  store %struct.qeth_channel* %14, %struct.qeth_channel** %11, align 8
  %15 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %16 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CIW_TYPE_RCD, align 4
  %19 = call %struct.ciw* @ccw_device_get_ciw(i32 %17, i32 %18)
  store %struct.ciw* %19, %struct.ciw** %8, align 8
  %20 = load %struct.ciw*, %struct.ciw** %8, align 8
  %21 = icmp ne %struct.ciw* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.ciw*, %struct.ciw** %8, align 8
  %24 = getelementptr inbounds %struct.ciw, %struct.ciw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %140

30:                                               ; preds = %22
  %31 = load %struct.ciw*, %struct.ciw** %8, align 8
  %32 = getelementptr inbounds %struct.ciw, %struct.ciw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @GFP_DMA, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @kzalloc(i32 %33, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %140

43:                                               ; preds = %30
  %44 = load %struct.ciw*, %struct.ciw** %8, align 8
  %45 = getelementptr inbounds %struct.ciw, %struct.ciw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %48 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @__pa(i8* %50)
  %52 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %53 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i64 %51, i64* %54, align 8
  %55 = load %struct.ciw*, %struct.ciw** %8, align 8
  %56 = getelementptr inbounds %struct.ciw, %struct.ciw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %59 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @CCW_FLAG_SLI, align 4
  %62 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %63 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* @CH_STATE_RCD, align 8
  %66 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %67 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %69 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @get_ccwdev_lock(i32 %70)
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @spin_lock_irqsave(i32 %71, i64 %72)
  %74 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %75 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %78 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %77, i32 0, i32 2
  %79 = load i32, i32* @QETH_RCD_PARM, align 4
  %80 = load i32, i32* @LPM_ANYPATH, align 4
  %81 = load i32, i32* @QETH_RCD_TIMEOUT, align 4
  %82 = call i32 @ccw_device_start_timeout(i32 %76, %struct.TYPE_2__* %78, i32 %79, i32 %80, i32 0, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %84 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @get_ccwdev_lock(i32 %85)
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32 %86, i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %43
  %92 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %93 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %96 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CH_STATE_RCD_DONE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %91
  %101 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %102 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CH_STATE_DOWN, align 8
  %105 = icmp eq i64 %103, %104
  br label %106

106:                                              ; preds = %100, %91
  %107 = phi i1 [ true, %91 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @wait_event(i32 %94, i32 %108)
  br label %110

110:                                              ; preds = %106, %43
  %111 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %112 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CH_STATE_DOWN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %123

119:                                              ; preds = %110
  %120 = load i64, i64* @CH_STATE_DOWN, align 8
  %121 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  %122 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @kfree(i8* %127)
  %129 = load i8**, i8*** %6, align 8
  store i8* null, i8** %129, align 8
  %130 = load i32*, i32** %7, align 8
  store i32 0, i32* %130, align 4
  br label %138

131:                                              ; preds = %123
  %132 = load %struct.ciw*, %struct.ciw** %8, align 8
  %133 = getelementptr inbounds %struct.ciw, %struct.ciw* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %7, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = load i8**, i8*** %6, align 8
  store i8* %136, i8** %137, align 8
  br label %138

138:                                              ; preds = %131, %126
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %40, %27
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.ciw* @ccw_device_get_ciw(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @__pa(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_start_timeout(i32, %struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
