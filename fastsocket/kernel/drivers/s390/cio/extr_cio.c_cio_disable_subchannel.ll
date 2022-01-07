; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_disable_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_disable_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.irb = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"dissch\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_disable_subchannel(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irb, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %7 = call i32 @CIO_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %9 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %8, i32 0, i32 2
  %10 = call i8* @dev_name(i32* %9)
  %11 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %10)
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = call i64 @sch_is_pseudo_sch(%struct.subchannel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %18 = call i64 @cio_update_schib(%struct.subchannel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %47, %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %32 = call i32 @cio_commit_config(%struct.subchannel* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @tsch(i32 %40, %struct.irb* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %50

44:                                               ; preds = %37
  br label %46

45:                                               ; preds = %30
  br label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %27

50:                                               ; preds = %45, %43, %27
  %51 = call i32 @CIO_HEX_EVENT(i32 2, i32* %5, i32 4)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %20, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i64 @sch_is_pseudo_sch(%struct.subchannel*) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @cio_commit_config(%struct.subchannel*) #1

declare dso_local i64 @tsch(i32, %struct.irb*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
