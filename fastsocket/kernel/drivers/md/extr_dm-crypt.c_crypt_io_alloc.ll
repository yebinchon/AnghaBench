; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_io_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_io_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i32, i32*, i64, i32, %struct.bio*, %struct.dm_target* }
%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { i32 }
%struct.bio = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_crypt_io* (%struct.dm_target*, %struct.bio*, i32)* @crypt_io_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_crypt_io* @crypt_io_alloc(%struct.dm_target* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypt_config*, align 8
  %8 = alloca %struct.dm_crypt_io*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.crypt_config*, %struct.crypt_config** %10, align 8
  store %struct.crypt_config* %11, %struct.crypt_config** %7, align 8
  %12 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %13 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_NOIO, align 4
  %16 = call %struct.dm_crypt_io* @mempool_alloc(i32 %14, i32 %15)
  store %struct.dm_crypt_io* %16, %struct.dm_crypt_io** %8, align 8
  %17 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %18 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %19 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %18, i32 0, i32 5
  store %struct.dm_target* %17, %struct.dm_target** %19, align 8
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %22 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %21, i32 0, i32 4
  store %struct.bio* %20, %struct.bio** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %25 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %27 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %29 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %31 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %30, i32 0, i32 0
  %32 = call i32 @atomic_set(i32* %31, i32 0)
  %33 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  ret %struct.dm_crypt_io* %33
}

declare dso_local %struct.dm_crypt_io* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
