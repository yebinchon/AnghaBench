; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_init_uobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_init_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i64, i32, i32, %struct.ib_ucontext*, i32 }
%struct.ib_ucontext = type { i32 }
%struct.uverbs_lock_class = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uobject*, i32, %struct.ib_ucontext*, %struct.uverbs_lock_class*)* @init_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_uobj(%struct.ib_uobject* %0, i32 %1, %struct.ib_ucontext* %2, %struct.uverbs_lock_class* %3) #0 {
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca %struct.uverbs_lock_class*, align 8
  store %struct.ib_uobject* %0, %struct.ib_uobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %7, align 8
  store %struct.uverbs_lock_class* %3, %struct.uverbs_lock_class** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %11 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %13 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %14 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %13, i32 0, i32 3
  store %struct.ib_ucontext* %12, %struct.ib_ucontext** %14, align 8
  %15 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %16 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %15, i32 0, i32 2
  %17 = call i32 @kref_init(i32* %16)
  %18 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %19 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %18, i32 0, i32 1
  %20 = call i32 @init_rwsem(i32* %19)
  %21 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %22 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %21, i32 0, i32 1
  %23 = load %struct.uverbs_lock_class*, %struct.uverbs_lock_class** %8, align 8
  %24 = getelementptr inbounds %struct.uverbs_lock_class, %struct.uverbs_lock_class* %23, i32 0, i32 1
  %25 = load %struct.uverbs_lock_class*, %struct.uverbs_lock_class** %8, align 8
  %26 = getelementptr inbounds %struct.uverbs_lock_class, %struct.uverbs_lock_class* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lockdep_set_class_and_name(i32* %22, i32* %24, i32 %27)
  %29 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %30 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
