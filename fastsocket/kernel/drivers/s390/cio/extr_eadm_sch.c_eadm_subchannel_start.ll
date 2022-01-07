; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.aob = type { i32 }
%union.orb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.TYPE_10__ = type { %union.orb }

@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@SCSW_ACTL_START_PEND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, %struct.aob*)* @eadm_subchannel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eadm_subchannel_start(%struct.subchannel* %0, %struct.aob* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.aob*, align 8
  %6 = alloca %union.orb*, align 8
  %7 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store %struct.aob* %1, %struct.aob** %5, align 8
  %8 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %9 = call %struct.TYPE_10__* @get_eadm_private(%struct.subchannel* %8)
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store %union.orb* %10, %union.orb** %6, align 8
  %11 = load %union.orb*, %union.orb** %6, align 8
  %12 = call i32 @orb_init(%union.orb* %11)
  %13 = load %struct.aob*, %struct.aob** %5, align 8
  %14 = call i64 @__pa(%struct.aob* %13)
  %15 = inttoptr i64 %14 to i8*
  %16 = load %union.orb*, %union.orb** %6, align 8
  %17 = bitcast %union.orb* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i8* %15, i8** %18, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %20 = ptrtoint %struct.subchannel* %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %union.orb*, %union.orb** %6, align 8
  %23 = bitcast %union.orb* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %26 = ashr i32 %25, 4
  %27 = load %union.orb*, %union.orb** %6, align 8
  %28 = bitcast %union.orb* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = call i32 @EADM_LOG(i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %32 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %31, i32 0, i32 1
  %33 = call i32 @EADM_LOG_HEX(i32 6, i32* %32, i32 4)
  %34 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %union.orb*, %union.orb** %6, align 8
  %38 = call i32 @ssch(i32 %36, %union.orb* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %55 [
    i32 0, label %40
    i32 1, label %49
    i32 2, label %49
    i32 3, label %52
  ]

40:                                               ; preds = %2
  %41 = load i32, i32* @SCSW_ACTL_START_PEND, align 4
  %42 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %43 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 4
  br label %55

49:                                               ; preds = %2, %2
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %2
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %2, %40
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_10__* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @orb_init(%union.orb*) #1

declare dso_local i64 @__pa(%struct.aob*) #1

declare dso_local i32 @EADM_LOG(i32, i8*) #1

declare dso_local i32 @EADM_LOG_HEX(i32, i32*, i32) #1

declare dso_local i32 @ssch(i32, %union.orb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
