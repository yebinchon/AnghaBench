; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_commit_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_cio_commit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32 }
%struct.schib = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_commit_config(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.schib, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %9 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @stsch_err(i32 %10, %struct.schib* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = call i32 @css_sch_is_valid(%struct.schib* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %70, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %23, label %73

23:                                               ; preds = %20
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = call i32 @cio_apply_config(%struct.subchannel* %24, %struct.schib* %4)
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @msch_err(i32 %28, %struct.schib* %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %75

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %69 [
    i32 0, label %36
    i32 1, label %59
    i32 2, label %62
    i32 3, label %66
  ]

36:                                               ; preds = %34
  %37 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @stsch_err(i32 %39, %struct.schib* %4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = call i32 @css_sch_is_valid(%struct.schib* %4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %42
  %49 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %50 = call i32 @cio_check_config(%struct.subchannel* %49, %struct.schib* %4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %54 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %53, i32 0, i32 0
  %55 = call i32 @memcpy(i32* %54, %struct.schib* %4, i32 4)
  store i32 0, i32* %2, align 4
  br label %75

56:                                               ; preds = %48
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %69

59:                                               ; preds = %34
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %75

62:                                               ; preds = %34
  %63 = call i32 @udelay(i32 100)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %69

66:                                               ; preds = %34
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %75

69:                                               ; preds = %34, %62, %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %20

73:                                               ; preds = %20
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %66, %59, %52, %45, %32, %16
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @stsch_err(i32, %struct.schib*) #1

declare dso_local i32 @css_sch_is_valid(%struct.schib*) #1

declare dso_local i32 @cio_apply_config(%struct.subchannel*, %struct.schib*) #1

declare dso_local i32 @msch_err(i32, %struct.schib*) #1

declare dso_local i32 @cio_check_config(%struct.subchannel*, %struct.schib*) #1

declare dso_local i32 @memcpy(i32*, %struct.schib*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
