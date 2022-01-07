; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_ccb_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_ccb_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilo_hwinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ccb_data = type { %struct.ccb }
%struct.ccb = type { i32 }

@MAX_WAIT = common dso_local global i32 0, align 4
@SENDQ = common dso_local global i32 0, align 4
@WAIT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Open could not dequeue a packet\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ilo_hwinfo*, %struct.ccb_data*)* @ilo_ccb_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_ccb_verify(%struct.ilo_hwinfo* %0, %struct.ccb_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ilo_hwinfo*, align 8
  %5 = alloca %struct.ccb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb*, align 8
  store %struct.ilo_hwinfo* %0, %struct.ilo_hwinfo** %4, align 8
  store %struct.ccb_data* %1, %struct.ccb_data** %5, align 8
  %9 = load %struct.ccb_data*, %struct.ccb_data** %5, align 8
  %10 = getelementptr inbounds %struct.ccb_data, %struct.ccb_data* %9, i32 0, i32 0
  store %struct.ccb* %10, %struct.ccb** %8, align 8
  %11 = load i32, i32* @MAX_WAIT, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %17 = load %struct.ccb*, %struct.ccb** %8, align 8
  %18 = load i32, i32* @SENDQ, align 4
  %19 = call i64 @ilo_pkt_dequeue(%struct.ilo_hwinfo* %16, %struct.ccb* %17, i32 %18, i32* %6, i32* null, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @WAIT_TIME, align 4
  %24 = call i32 @udelay(i32 %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  br label %12

28:                                               ; preds = %21, %12
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %4, align 8
  %41 = load %struct.ccb*, %struct.ccb** %8, align 8
  %42 = load i32, i32* @SENDQ, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ilo_pkt_enqueue(%struct.ilo_hwinfo* %40, %struct.ccb* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.ccb*, %struct.ccb** %8, align 8
  %46 = call i32 @doorbell_set(%struct.ccb* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @ilo_pkt_dequeue(%struct.ilo_hwinfo*, %struct.ccb*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ilo_pkt_enqueue(%struct.ilo_hwinfo*, %struct.ccb*, i32, i32, i32) #1

declare dso_local i32 @doorbell_set(%struct.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
