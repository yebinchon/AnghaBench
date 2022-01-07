; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_clock.c_mISDN_clock_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_clock.c_mISDN_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@iclock_lock = common dso_local global i32 0, align 4
@iclock_tv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@iclock_count = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @mISDN_clock_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @read_lock_irqsave(i32* @iclock_lock, i32 %6)
  %8 = call i32 @do_gettimeofday(%struct.timeval* %2)
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iclock_tv, i32 0, i32 0), align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 125
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iclock_tv, i32 0, i32 1), align 4
  %17 = sdiv i32 %16, 125
  %18 = sub nsw i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 8000
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %0
  %27 = load i16, i16* @iclock_count, align 2
  %28 = zext i16 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 8000
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %31, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %5, align 2
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @read_unlock_irqrestore(i32* @iclock_lock, i32 %35)
  %37 = load i16, i16* %5, align 2
  ret i16 %37
}

declare dso_local i32 @read_lock_irqsave(i32*, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
