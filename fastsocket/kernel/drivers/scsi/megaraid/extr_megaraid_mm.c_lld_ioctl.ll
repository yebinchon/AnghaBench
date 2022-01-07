; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_mm.c_lld_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_mm.c_lld_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_6__*, i32)*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.timer_list = type { i64, i64, i32 }

@ENODATA = common dso_local global i32 0, align 4
@IOCTL_ISSUE = common dso_local global i32 0, align 4
@lld_timedout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@wait_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @lld_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lld_ioctl(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timer_list, align 8
  %8 = alloca %struct.timer_list*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.timer_list* null, %struct.timer_list** %8, align 8
  %9 = load i32, i32* @ENODATA, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32 (i32, %struct.TYPE_6__*, i32)*, i32 (i32, %struct.TYPE_6__*, i32)** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load i32, i32* @IOCTL_ISSUE, align 4
  %21 = call i32 %15(i32 %18, %struct.TYPE_6__* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  store %struct.timer_list* %7, %struct.timer_list** %8, align 8
  %32 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %33 = call i32 @init_timer(%struct.timer_list* %32)
  %34 = load i32, i32* @lld_timedout, align 4
  %35 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %36 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = ptrtoint %struct.TYPE_6__* %37 to i64
  %39 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %40 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @jiffies, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %41, %47
  %49 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %50 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %52 = call i32 @add_timer(%struct.timer_list* %51)
  br label %53

53:                                               ; preds = %31, %26
  %54 = load i32, i32* @wait_q, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ENODATA, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @wait_event(i32 %54, i32 %61)
  %63 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %64 = icmp ne %struct.timer_list* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %67 = call i32 @del_timer_sync(%struct.timer_list* %66)
  br label %68

68:                                               ; preds = %65, %53
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @init_timer(%struct.timer_list*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
