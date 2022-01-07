; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_io_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_io_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i64, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, %struct.bio* }
%struct.bio = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*, i32, i32)* @kcryptd_crypt_write_io_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_crypt_write_io_submit(%struct.dm_crypt_io* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_crypt_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.crypt_config*, align 8
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %10 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.bio*, %struct.bio** %11, align 8
  store %struct.bio* %12, %struct.bio** %7, align 8
  %13 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %14 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.crypt_config*, %struct.crypt_config** %16, align 8
  store %struct.crypt_config* %17, %struct.crypt_config** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = call i32 @crypt_free_buffer_pages(%struct.crypt_config* %24, %struct.bio* %25)
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = call i32 @bio_put(%struct.bio* %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %32 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %34 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %33)
  br label %63

35:                                               ; preds = %3
  %36 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %37 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bio*, %struct.bio** %7, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.crypt_config*, %struct.crypt_config** %8, align 8
  %47 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %50 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.bio*, %struct.bio** %7, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %59 = call i32 @kcryptd_queue_io(%struct.dm_crypt_io* %58)
  br label %63

60:                                               ; preds = %35
  %61 = load %struct.bio*, %struct.bio** %7, align 8
  %62 = call i32 @generic_make_request(%struct.bio* %61)
  br label %63

63:                                               ; preds = %23, %60, %57
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypt_free_buffer_pages(%struct.crypt_config*, %struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kcryptd_queue_io(%struct.dm_crypt_io*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
