; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_io_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i64, i32, %struct.bio*, %struct.TYPE_2__* }
%struct.bio = type { i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i64, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @kcryptd_io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_io_read(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %6 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %7 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.crypt_config*, %struct.crypt_config** %9, align 8
  store %struct.crypt_config* %10, %struct.crypt_config** %3, align 8
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 2
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %4, align 8
  %14 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %15 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %14)
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = call i32 @bio_segments(%struct.bio* %17)
  %19 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %20 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.bio* @bio_alloc_bioset(i32 %16, i32 %18, i32 %21)
  store %struct.bio* %22, %struct.bio** %5, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = icmp ne %struct.bio* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %33 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %35 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %34)
  br label %74

36:                                               ; preds = %1
  %37 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call i32 @clone_init(%struct.dm_crypt_io* %37, %struct.bio* %38)
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = call i32 @bio_segments(%struct.bio* %42)
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %52 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %55 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = call i32 @bio_iovec(%struct.bio* %63)
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(i32 %62, i32 %64, i32 %70)
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = call i32 @generic_make_request(%struct.bio* %72)
  br label %74

74:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @crypt_inc_pending(%struct.dm_crypt_io*) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32) #1

declare dso_local i32 @bio_segments(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @clone_init(%struct.dm_crypt_io*, %struct.bio*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bio_iovec(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
