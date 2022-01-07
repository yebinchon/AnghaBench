; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_idr_read_xrcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_idr_read_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_uobject = type { %struct.ib_xrcd* }

@ib_uverbs_xrcd_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_xrcd* (i32, %struct.ib_ucontext*, %struct.ib_uobject**)* @idr_read_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_xrcd* @idr_read_xrcd(i32 %0, %struct.ib_ucontext* %1, %struct.ib_uobject** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_ucontext*, align 8
  %6 = alloca %struct.ib_uobject**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %5, align 8
  store %struct.ib_uobject** %2, %struct.ib_uobject*** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %9 = call %struct.ib_uobject* @idr_read_uobj(i32* @ib_uverbs_xrcd_idr, i32 %7, %struct.ib_ucontext* %8, i32 0)
  %10 = load %struct.ib_uobject**, %struct.ib_uobject*** %6, align 8
  store %struct.ib_uobject* %9, %struct.ib_uobject** %10, align 8
  %11 = load %struct.ib_uobject**, %struct.ib_uobject*** %6, align 8
  %12 = load %struct.ib_uobject*, %struct.ib_uobject** %11, align 8
  %13 = icmp ne %struct.ib_uobject* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.ib_uobject**, %struct.ib_uobject*** %6, align 8
  %16 = load %struct.ib_uobject*, %struct.ib_uobject** %15, align 8
  %17 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %16, i32 0, i32 0
  %18 = load %struct.ib_xrcd*, %struct.ib_xrcd** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi %struct.ib_xrcd* [ %18, %14 ], [ null, %19 ]
  ret %struct.ib_xrcd* %21
}

declare dso_local %struct.ib_uobject* @idr_read_uobj(i32*, i32, %struct.ib_ucontext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
