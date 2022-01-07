; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_clone_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_clone_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.mapped_device = type { i32 }
%struct.dm_rq_target_io = type { %struct.request, i32, i64, %struct.request*, i32*, %struct.mapped_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request*, %struct.mapped_device*, i32)* @clone_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @clone_rq(%struct.request* %0, %struct.mapped_device* %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.dm_rq_target_io*, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.mapped_device* %1, %struct.mapped_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.dm_rq_target_io* @alloc_rq_tio(%struct.mapped_device* %10, i32 %11)
  store %struct.dm_rq_target_io* %12, %struct.dm_rq_target_io** %9, align 8
  %13 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %14 = icmp ne %struct.dm_rq_target_io* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.request* null, %struct.request** %4, align 8
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %18 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %19 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %18, i32 0, i32 5
  store %struct.mapped_device* %17, %struct.mapped_device** %19, align 8
  %20 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %21 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %24 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %23, i32 0, i32 3
  store %struct.request* %22, %struct.request** %24, align 8
  %25 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %26 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %28 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %27, i32 0, i32 1
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  %30 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %31 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %30, i32 0, i32 0
  store %struct.request* %31, %struct.request** %8, align 8
  %32 = load %struct.request*, %struct.request** %8, align 8
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %35 = call i64 @setup_clone(%struct.request* %32, %struct.request* %33, %struct.dm_rq_target_io* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %16
  %38 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  %39 = call i32 @free_rq_tio(%struct.dm_rq_target_io* %38)
  store %struct.request* null, %struct.request** %4, align 8
  br label %42

40:                                               ; preds = %16
  %41 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %41, %struct.request** %4, align 8
  br label %42

42:                                               ; preds = %40, %37, %15
  %43 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %43
}

declare dso_local %struct.dm_rq_target_io* @alloc_rq_tio(%struct.mapped_device*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @setup_clone(%struct.request*, %struct.request*, %struct.dm_rq_target_io*) #1

declare dso_local i32 @free_rq_tio(%struct.dm_rq_target_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
