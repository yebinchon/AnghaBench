; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_enable_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_enable_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.irb = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ensch\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_enable_subchannel(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irb, align 4
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @CIO_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 3
  %12 = call i8* @dev_name(i32* %11)
  %13 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %12)
  %14 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %15 = call i64 @sch_is_pseudo_sch(%struct.subchannel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %22 = call i64 @cio_update_schib(%struct.subchannel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %20
  %28 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %32 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %71, %27
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %46 = call i32 @cio_commit_config(%struct.subchannel* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %53 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %70

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %62 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @tsch(i32 %63, %struct.irb* %8)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %74

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %55
  br label %74

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %41

74:                                               ; preds = %68, %66, %41
  %75 = call i32 @CIO_HEX_EVENT(i32 2, i32* %7, i32 4)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %24, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
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
