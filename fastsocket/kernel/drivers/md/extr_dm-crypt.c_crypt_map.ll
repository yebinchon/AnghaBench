; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32, i32 }
%union.map_info = type { i32 }
%struct.dm_crypt_io = type { i32 }

@BIO_FLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @crypt_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.dm_crypt_io*, align 8
  %9 = alloca %struct.crypt_config*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %10 = load %struct.bio*, %struct.bio** %6, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BIO_FLUSH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load %struct.crypt_config*, %struct.crypt_config** %18, align 8
  store %struct.crypt_config* %19, %struct.crypt_config** %9, align 8
  %20 = load %struct.crypt_config*, %struct.crypt_config** %9, align 8
  %21 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %3
  %29 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dm_target_offset(%struct.dm_target* %31, i32 %34)
  %36 = call %struct.dm_crypt_io* @crypt_io_alloc(%struct.dm_target* %29, %struct.bio* %30, i32 %35)
  store %struct.dm_crypt_io* %36, %struct.dm_crypt_io** %8, align 8
  %37 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %38 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @bio_data_dir(i32 %39)
  %41 = load i64, i64* @READ, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %45 = call i32 @kcryptd_queue_io(%struct.dm_crypt_io* %44)
  br label %49

46:                                               ; preds = %28
  %47 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %8, align 8
  %48 = call i32 @kcryptd_queue_crypt(%struct.dm_crypt_io* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.dm_crypt_io* @crypt_io_alloc(%struct.dm_target*, %struct.bio*, i32) #1

declare dso_local i32 @dm_target_offset(%struct.dm_target*, i32) #1

declare dso_local i64 @bio_data_dir(i32) #1

declare dso_local i32 @kcryptd_queue_io(%struct.dm_crypt_io*) #1

declare dso_local i32 @kcryptd_queue_crypt(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
