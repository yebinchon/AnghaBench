; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-budget/extr_dvb-ttusb-budget.c_ttusb_start_feed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-budget/extr_dvb-ttusb-budget.c_ttusb_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, i32, i32, i64 }
%struct.ttusb = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ttusb_start_feed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @ttusb_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca %struct.ttusb*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  %6 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ttusb*
  store %struct.ttusb* %9, %struct.ttusb** %4, align 8
  store i32 1, i32* %5, align 4
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %16 [
    i32 128, label %14
    i32 129, label %15
  ]

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %15, %14
  %20 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 130, label %28
    i32 134, label %28
    i32 131, label %28
    i32 132, label %28
    i32 133, label %28
  ]

28:                                               ; preds = %24, %24, %24, %24, %24
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.ttusb*, %struct.ttusb** %4, align 8
  %35 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ttusb_set_channel(%struct.ttusb* %34, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.ttusb*, %struct.ttusb** %4, align 8
  %44 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = icmp eq i32 0, %45
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load %struct.ttusb*, %struct.ttusb** %4, align 8
  %50 = call i32 @ttusb_start_iso_xfer(%struct.ttusb* %49)
  br label %51

51:                                               ; preds = %48, %33
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %29, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @ttusb_set_channel(%struct.ttusb*, i32, i32, i32) #1

declare dso_local i32 @ttusb_start_iso_xfer(%struct.ttusb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
