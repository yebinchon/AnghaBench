; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_next_fill_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_next_fill_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@.str = private unnamed_addr constant [41 x i8] c"Neither empty or full frames available!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_next_fill_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_next_fill_frame(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %1
  %15 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %21 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 2
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %26 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %29 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %28, i32 0, i32 4
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  br label %43

30:                                               ; preds = %14
  %31 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %39 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 4
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  br label %43

43:                                               ; preds = %30, %19
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %46 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %51 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %54 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %53, i32 0, i32 1
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %54, align 8
  %55 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %56 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %61 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %60, i32 0, i32 3
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %61, align 8
  br label %88

62:                                               ; preds = %44
  %63 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %64 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp eq %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %70 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %69, i32 0, i32 0
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %98

75:                                               ; preds = %62
  %76 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %77 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %80 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %79, i32 0, i32 1
  store %struct.TYPE_2__* %78, %struct.TYPE_2__** %80, align 8
  %81 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %82 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 2
  store %struct.TYPE_2__* %85, %struct.TYPE_2__** %87, align 8
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %75, %49
  %89 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %90 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %92, align 8
  %93 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %94 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %93, i32 0, i32 0
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %88, %67
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PWC_ERROR(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
