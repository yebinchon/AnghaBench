; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_event_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_event_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_APE_LOCK_MEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TG3_APE_EVENT_STATUS = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_EVENT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_ape_event_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ape_event_lock(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = load %struct.tg3*, %struct.tg3** %4, align 8
  %12 = load i32, i32* @TG3_APE_LOCK_MEM, align 4
  %13 = call i64 @tg3_ape_lock(%struct.tg3* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %10
  %19 = load %struct.tg3*, %struct.tg3** %4, align 8
  %20 = load i32, i32* @TG3_APE_EVENT_STATUS, align 4
  %21 = call i32 @tg3_ape_read32(%struct.tg3* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @APE_EVENT_STATUS_EVENT_PENDING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %41

27:                                               ; preds = %18
  %28 = load %struct.tg3*, %struct.tg3** %4, align 8
  %29 = load i32, i32* @TG3_APE_LOCK_MEM, align 4
  %30 = call i32 @tg3_ape_unlock(%struct.tg3* %28, i32 %29)
  %31 = call i32 @udelay(i32 10)
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 10, %34 ], [ %36, %35 ]
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %7

41:                                               ; preds = %26, %7
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @tg3_ape_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_unlock(%struct.tg3*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
