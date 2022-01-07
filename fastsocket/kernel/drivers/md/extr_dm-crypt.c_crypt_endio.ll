; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.dm_crypt_io* }
%struct.dm_crypt_io = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @crypt_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_endio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_crypt_io*, align 8
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bio*, %struct.bio** %3, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %9, align 8
  store %struct.dm_crypt_io* %10, %struct.dm_crypt_io** %5, align 8
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.crypt_config*, %struct.crypt_config** %14, align 8
  store %struct.crypt_config* %15, %struct.crypt_config** %6, align 8
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = call i32 @bio_data_dir(%struct.bio* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = load i32, i32* @BIO_UPTODATE, align 4
  %20 = call i32 @bio_flagged(%struct.bio* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ false, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @WRITE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %40 = load %struct.bio*, %struct.bio** %3, align 8
  %41 = call i32 @crypt_free_buffer_pages(%struct.crypt_config* %39, %struct.bio* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = call i32 @bio_put(%struct.bio* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @READ, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %53 = call i32 @kcryptd_queue_crypt(%struct.dm_crypt_io* %52)
  br label %65

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %61 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %64 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %63)
  br label %65

65:                                               ; preds = %62, %51
  ret void
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @crypt_free_buffer_pages(%struct.crypt_config*, %struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @kcryptd_queue_crypt(%struct.dm_crypt_io*) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
