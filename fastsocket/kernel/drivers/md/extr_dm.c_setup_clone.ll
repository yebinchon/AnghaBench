; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_setup_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_setup_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.dm_rq_target_io*, i32, i32, i32, i32, i32 }
%struct.dm_rq_target_io = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@dm_rq_bio_constructor = common dso_local global i32 0, align 4
@end_clone_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.request*, %struct.dm_rq_target_io*)* @setup_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_clone(%struct.request* %0, %struct.request* %1, %struct.dm_rq_target_io* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.dm_rq_target_io*, align 8
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.dm_rq_target_io* %2, %struct.dm_rq_target_io** %7, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %12 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = load i32, i32* @dm_rq_bio_constructor, align 4
  %18 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %19 = call i32 @blk_rq_prep_clone(%struct.request* %9, %struct.request* %10, i32 %15, i32 %16, i32 %17, %struct.dm_rq_target_io* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %51

24:                                               ; preds = %3
  %25 = load %struct.request*, %struct.request** %6, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.request*, %struct.request** %5, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.request*, %struct.request** %6, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @end_clone_request, align 4
  %46 = load %struct.request*, %struct.request** %5, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %49 = load %struct.request*, %struct.request** %5, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 0
  store %struct.dm_rq_target_io* %48, %struct.dm_rq_target_io** %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %24, %22
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @blk_rq_prep_clone(%struct.request*, %struct.request*, i32, i32, i32, %struct.dm_rq_target_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
