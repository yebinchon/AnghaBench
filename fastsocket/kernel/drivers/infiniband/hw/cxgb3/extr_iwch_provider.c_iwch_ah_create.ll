; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_provider.c_iwch_ah_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_provider.c_iwch_ah_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*)* @iwch_ah_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @iwch_ah_create(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %5 = load i32, i32* @ENOSYS, align 4
  %6 = sub nsw i32 0, %5
  %7 = call %struct.ib_ah* @ERR_PTR(i32 %6)
  ret %struct.ib_ah* %7
}

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
