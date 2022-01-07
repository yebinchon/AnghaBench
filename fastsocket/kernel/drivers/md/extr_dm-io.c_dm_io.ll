; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dm_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dm_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_request = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_io_region = type { i32 }
%struct.dpages = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_io(%struct.dm_io_request* %0, i32 %1, %struct.dm_io_region* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_io_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_io_region*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpages, align 4
  store %struct.dm_io_request* %0, %struct.dm_io_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_io_region* %2, %struct.dm_io_region** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %13 = call i32 @dp_init(%struct.dm_io_request* %12, %struct.dpages* %11)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %53

18:                                               ; preds = %4
  %19 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %20 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %26 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %30 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %31 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64*, i64** %9, align 8
  %34 = call i32 @sync_io(i32 %27, i32 %28, %struct.dm_io_region* %29, i32 %32, %struct.dpages* %11, i64* %33)
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %18
  %36 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %37 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %41 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %42 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %45 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %49 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @async_io(i32 %38, i32 %39, %struct.dm_io_region* %40, i32 %43, %struct.dpages* %11, i32 %47, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %35, %24, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @dp_init(%struct.dm_io_request*, %struct.dpages*) #1

declare dso_local i32 @sync_io(i32, i32, %struct.dm_io_region*, i32, %struct.dpages*, i64*) #1

declare dso_local i32 @async_io(i32, i32, %struct.dm_io_region*, i32, %struct.dpages*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
