; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_idr_read_uobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_idr_read_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, i32 }
%struct.idr = type { i32 }
%struct.ib_ucontext = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_uobject* (%struct.idr*, i32, %struct.ib_ucontext*, i32)* @idr_read_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_uobject* @idr_read_uobj(%struct.idr* %0, i32 %1, %struct.ib_ucontext* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca %struct.idr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_ucontext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_uobject*, align 8
  store %struct.idr* %0, %struct.idr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.idr*, %struct.idr** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  %14 = call %struct.ib_uobject* @__idr_get_uobj(%struct.idr* %11, i32 %12, %struct.ib_ucontext* %13)
  store %struct.ib_uobject* %14, %struct.ib_uobject** %10, align 8
  %15 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %16 = icmp ne %struct.ib_uobject* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.ib_uobject* null, %struct.ib_uobject** %5, align 8
  br label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %23 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %22, i32 0, i32 1
  %24 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %25 = call i32 @down_read_nested(i32* %23, i32 %24)
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %28 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %27, i32 0, i32 1
  %29 = call i32 @down_read(i32* %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %32 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  %37 = call i32 @put_uobj_read(%struct.ib_uobject* %36)
  store %struct.ib_uobject* null, %struct.ib_uobject** %5, align 8
  br label %40

38:                                               ; preds = %30
  %39 = load %struct.ib_uobject*, %struct.ib_uobject** %10, align 8
  store %struct.ib_uobject* %39, %struct.ib_uobject** %5, align 8
  br label %40

40:                                               ; preds = %38, %35, %17
  %41 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  ret %struct.ib_uobject* %41
}

declare dso_local %struct.ib_uobject* @__idr_get_uobj(%struct.idr*, i32, %struct.ib_ucontext*) #1

declare dso_local i32 @down_read_nested(i32*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @put_uobj_read(%struct.ib_uobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
