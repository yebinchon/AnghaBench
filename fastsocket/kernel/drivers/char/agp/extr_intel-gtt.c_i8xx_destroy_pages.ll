; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_i8xx_destroy_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_i8xx_destroy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @i8xx_destroy_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8xx_destroy_pages(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = icmp eq %struct.page* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @set_pages_wb(%struct.page* %7, i32 4)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @put_page(%struct.page* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @__free_pages(%struct.page* %11, i32 2)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @atomic_dec(i32* %14)
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @set_pages_wb(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
