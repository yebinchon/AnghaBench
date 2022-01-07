; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_async_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_async_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_client = type { i32 }
%struct.dm_io_region = type { i32 }
%struct.dpages = type { i32 }
%struct.io = type { i8*, i32 (i32, i8*)*, %struct.dm_io_client*, i32*, i32, i64 }

@RW_MASK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_io_client*, i32, %struct.dm_io_region*, i32, %struct.dpages*, i32 (i32, i8*)*, i8*)* @async_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_io(%struct.dm_io_client* %0, i32 %1, %struct.dm_io_region* %2, i32 %3, %struct.dpages* %4, i32 (i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_io_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_io_region*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dpages*, align 8
  %14 = alloca i32 (i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.io*, align 8
  store %struct.dm_io_client* %0, %struct.dm_io_client** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dm_io_region* %2, %struct.dm_io_region** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.dpages* %4, %struct.dpages** %13, align 8
  store i32 (i32, i8*)* %5, i32 (i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %7
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @RW_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @WRITE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = call i32 @WARN_ON(i32 1)
  %27 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 %27(i32 1, i8* %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %60

32:                                               ; preds = %19, %7
  %33 = load %struct.dm_io_client*, %struct.dm_io_client** %9, align 8
  %34 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = call %struct.io* @mempool_alloc(i32 %35, i32 %36)
  store %struct.io* %37, %struct.io** %16, align 8
  %38 = load %struct.io*, %struct.io** %16, align 8
  %39 = getelementptr inbounds %struct.io, %struct.io* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.io*, %struct.io** %16, align 8
  %41 = getelementptr inbounds %struct.io, %struct.io* %40, i32 0, i32 4
  %42 = call i32 @atomic_set(i32* %41, i32 1)
  %43 = load %struct.io*, %struct.io** %16, align 8
  %44 = getelementptr inbounds %struct.io, %struct.io* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.dm_io_client*, %struct.dm_io_client** %9, align 8
  %46 = load %struct.io*, %struct.io** %16, align 8
  %47 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 2
  store %struct.dm_io_client* %45, %struct.dm_io_client** %47, align 8
  %48 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %49 = load %struct.io*, %struct.io** %16, align 8
  %50 = getelementptr inbounds %struct.io, %struct.io* %49, i32 0, i32 1
  store i32 (i32, i8*)* %48, i32 (i32, i8*)** %50, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.io*, %struct.io** %16, align 8
  %53 = getelementptr inbounds %struct.io, %struct.io* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.dm_io_region*, %struct.dm_io_region** %11, align 8
  %57 = load %struct.dpages*, %struct.dpages** %13, align 8
  %58 = load %struct.io*, %struct.io** %16, align 8
  %59 = call i32 @dispatch_io(i32 %54, i32 %55, %struct.dm_io_region* %56, %struct.dpages* %57, %struct.io* %58, i32 0)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %32, %25
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.io* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dispatch_io(i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
