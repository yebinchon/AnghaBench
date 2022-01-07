; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dvb_frontend_sleep_until.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dvb_frontend_sleep_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_frontend_sleep_until(%struct.timeval* %0, i32 %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @timeval_usec_add(%struct.timeval* %8, i32 %9)
  %11 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %12 = load %struct.timeval*, %struct.timeval** %3, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @timeval_usec_diff(i32 %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 2500
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1500
  %23 = sdiv i32 %22, 1000
  %24 = call i32 @msleep(i32 %23)
  %25 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %26 = load %struct.timeval*, %struct.timeval** %3, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @timeval_usec_diff(i32 %28, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @udelay(i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @timeval_usec_add(%struct.timeval*, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @timeval_usec_diff(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
