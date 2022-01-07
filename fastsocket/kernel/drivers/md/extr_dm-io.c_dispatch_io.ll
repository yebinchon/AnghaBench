; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dispatch_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dispatch_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_region = type { i64 }
%struct.dpages = type { i32 }
%struct.io = type { i32 }

@DM_IO_MAX_REGIONS = common dso_local global i32 0, align 4
@BIO_RW_SYNCIO = common dso_local global i32 0, align 4
@BIO_RW_UNPLUG = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*, i32)* @dispatch_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_io(i32 %0, i32 %1, %struct.dm_io_region* %2, %struct.dpages* %3, %struct.io* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_io_region*, align 8
  %10 = alloca %struct.dpages*, align 8
  %11 = alloca %struct.io*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dpages, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.dm_io_region* %2, %struct.dm_io_region** %9, align 8
  store %struct.dpages* %3, %struct.dpages** %10, align 8
  store %struct.io* %4, %struct.io** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.dpages*, %struct.dpages** %10, align 8
  %16 = bitcast %struct.dpages* %14 to i8*
  %17 = bitcast %struct.dpages* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @DM_IO_MAX_REGIONS, align 4
  %20 = icmp ugt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load i32, i32* @BIO_RW_SYNCIO, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @BIO_RW_UNPLUG, align 4
  %29 = shl i32 1, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %6
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load %struct.dpages*, %struct.dpages** %10, align 8
  %40 = bitcast %struct.dpages* %39 to i8*
  %41 = bitcast %struct.dpages* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.dm_io_region*, %struct.dm_io_region** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %42, i64 %44
  %46 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @BIO_FLUSH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49, %38
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.dm_io_region*, %struct.dm_io_region** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %57, i64 %59
  %61 = load %struct.dpages*, %struct.dpages** %10, align 8
  %62 = load %struct.io*, %struct.io** %11, align 8
  %63 = call i32 @do_region(i32 %55, i32 %56, %struct.dm_io_region* %60, %struct.dpages* %61, %struct.io* %62)
  br label %64

64:                                               ; preds = %54, %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %34

68:                                               ; preds = %34
  %69 = load %struct.io*, %struct.io** %11, align 8
  %70 = call i32 @dec_count(%struct.io* %69, i32 0, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @do_region(i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*) #2

declare dso_local i32 @dec_count(%struct.io*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
