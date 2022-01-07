; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_compat_effect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_compat_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_device = type { i32 }
%struct.ff_effect = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FF_PERIODIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FF_SINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_device*, %struct.ff_effect*)* @compat_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_effect(%struct.ff_device* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_device*, align 8
  %5 = alloca %struct.ff_effect*, align 8
  %6 = alloca i32, align 4
  store %struct.ff_device* %0, %struct.ff_device** %4, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %5, align 8
  %7 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %8 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %80 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @FF_PERIODIC, align 4
  %12 = load %struct.ff_device*, %struct.ff_device** %4, align 8
  %13 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %10
  %21 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %22 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 3
  %27 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %28 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 6
  %33 = add nsw i32 %26, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @FF_PERIODIC, align 4
  %35 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %36 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @FF_SINE, align 4
  %38 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %39 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %43 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 50, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @max(i32 %46, i32 32767)
  %48 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %49 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  store i32 %47, i32* %51, align 4
  %52 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %53 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %57 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  %60 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %61 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %66 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %71 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.ff_effect*, %struct.ff_effect** %5, align 8
  %76 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %81

80:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %20, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
