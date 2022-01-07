; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_alloc_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_alloc_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.subchannel_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@css_sch_todo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subchannel* (i32)* @css_alloc_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subchannel* @css_alloc_subchannel(i32 %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.subchannel* @kmalloc(i32 4, i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %4, align 8
  %11 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %12 = icmp eq %struct.subchannel* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.subchannel* @ERR_PTR(i32 %15)
  store %struct.subchannel* %16, %struct.subchannel** %2, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %19 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cio_validate_subchannel(%struct.subchannel* %18, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %26 = call i32 @kfree(%struct.subchannel* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.subchannel* @ERR_PTR(i32 %27)
  store %struct.subchannel* %28, %struct.subchannel** %2, align 8
  br label %35

29:                                               ; preds = %17
  %30 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 0
  %32 = load i32, i32* @css_sch_todo, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  store %struct.subchannel* %34, %struct.subchannel** %2, align 8
  br label %35

35:                                               ; preds = %29, %24, %13
  %36 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  ret %struct.subchannel* %36
}

declare dso_local %struct.subchannel* @kmalloc(i32, i32) #1

declare dso_local %struct.subchannel* @ERR_PTR(i32) #1

declare dso_local i32 @cio_validate_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @kfree(%struct.subchannel*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
