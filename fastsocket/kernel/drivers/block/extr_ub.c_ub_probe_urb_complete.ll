; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_probe_urb_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_probe_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.completion* }
%struct.completion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ub_probe_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_probe_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.completion*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 0
  %6 = load %struct.completion*, %struct.completion** %5, align 8
  store %struct.completion* %6, %struct.completion** %3, align 8
  %7 = load %struct.completion*, %struct.completion** %3, align 8
  %8 = call i32 @complete(%struct.completion* %7)
  ret void
}

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
