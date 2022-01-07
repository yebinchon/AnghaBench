; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_disc_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_disc_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pcbit_chan = type { i32, i32 }
%struct.callb_data = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"capi_disc_resp failed\0A\00", align 1
@last_ref_num = common dso_local global i32 0, align 4
@MSG_DISC_RESP = common dso_local global i32 0, align 4
@ISDN_STAT_BHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb_disc_1(%struct.pcbit_dev* %0, %struct.pcbit_chan* %1, %struct.callb_data* %2) #0 {
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca %struct.pcbit_chan*, align 8
  %6 = alloca %struct.callb_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store %struct.pcbit_chan* %1, %struct.pcbit_chan** %5, align 8
  store %struct.callb_data* %2, %struct.callb_data** %6, align 8
  %11 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %12 = call i32 @capi_disc_resp(%struct.pcbit_chan* %11, %struct.sk_buff** %7)
  store i32 %12, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

16:                                               ; preds = %3
  %17 = load i32, i32* @last_ref_num, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @last_ref_num, align 4
  %19 = and i32 %17, 32767
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %22 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %24 = load i32, i32* @MSG_DISC_RESP, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @pcbit_l2_write(%struct.pcbit_dev* %23, i32 %24, i32 %25, %struct.sk_buff* %26, i32 %27)
  %29 = load i32, i32* @ISDN_STAT_BHUP, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %36 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %42, align 8
  %44 = call i32 %43(%struct.TYPE_5__* %10)
  br label %45

45:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @capi_disc_resp(%struct.pcbit_chan*, %struct.sk_buff**) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pcbit_l2_write(%struct.pcbit_dev*, i32, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
