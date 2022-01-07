; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.chsc_private* }
%struct.chsc_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @chsc_subchannel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_subchannel_remove(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.chsc_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = call i32 @cio_disable_subchannel(%struct.subchannel* %4)
  %6 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 1
  %8 = load %struct.chsc_private*, %struct.chsc_private** %7, align 8
  store %struct.chsc_private* %8, %struct.chsc_private** %3, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 1
  store %struct.chsc_private* null, %struct.chsc_private** %10, align 8
  %11 = load %struct.chsc_private*, %struct.chsc_private** %3, align 8
  %12 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.chsc_private*, %struct.chsc_private** %3, align 8
  %17 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @complete(i32* %19)
  %21 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %22 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %21, i32 0, i32 0
  %23 = call i32 @put_device(i32* %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.chsc_private*, %struct.chsc_private** %3, align 8
  %26 = call i32 @kfree(%struct.chsc_private* %25)
  ret i32 0
}

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kfree(%struct.chsc_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
