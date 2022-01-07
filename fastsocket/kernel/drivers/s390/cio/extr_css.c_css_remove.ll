; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.subchannel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.subchannel*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @css_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.subchannel* @to_subchannel(%struct.device* %5)
  store %struct.subchannel* %6, %struct.subchannel** %3, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %10, align 8
  %12 = icmp ne i32 (%struct.subchannel*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %15 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %17, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = call i32 %18(%struct.subchannel* %19)
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %20, %13 ], [ 0, %21 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %25, align 8
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
