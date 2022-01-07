; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.mpconf* }
%struct.mpconf = type { %struct.multipath_info*, i32 }
%struct.multipath_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bio = type { i32, %struct.multipath_bh*, i32, i32, i32 }
%struct.multipath_bh = type { i64, %struct.bio, %struct.mddev*, %struct.bio* }

@BIO_FLUSH = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIO_RW_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@multipath_end_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @multipath_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mpconf*, align 8
  %7 = alloca %struct.multipath_bh*, align 8
  %8 = alloca %struct.multipath_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load %struct.mpconf*, %struct.mpconf** %10, align 8
  store %struct.mpconf* %11, %struct.mpconf** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BIO_FLUSH, align 4
  %16 = and i32 %14, %15
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.mddev*, %struct.mddev** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = call i32 @md_flush_request(%struct.mddev* %20, %struct.bio* %21)
  store i32 0, i32* %3, align 4
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %25 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_NOIO, align 4
  %28 = call %struct.multipath_bh* @mempool_alloc(i32 %26, i32 %27)
  store %struct.multipath_bh* %28, %struct.multipath_bh** %7, align 8
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %31 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %30, i32 0, i32 3
  store %struct.bio* %29, %struct.bio** %31, align 8
  %32 = load %struct.mddev*, %struct.mddev** %4, align 8
  %33 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %34 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %33, i32 0, i32 2
  store %struct.mddev* %32, %struct.mddev** %34, align 8
  %35 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %36 = call i64 @multipath_map(%struct.mpconf* %35)
  %37 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %38 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %40 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %23
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @bio_endio(%struct.bio* %44, i32 %46)
  %48 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %49 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %50 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mempool_free(%struct.multipath_bh* %48, i32 %51)
  store i32 0, i32* %3, align 4
  br label %104

53:                                               ; preds = %23
  %54 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %55 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %54, i32 0, i32 0
  %56 = load %struct.multipath_info*, %struct.multipath_info** %55, align 8
  %57 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %58 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %56, i64 %59
  store %struct.multipath_info* %60, %struct.multipath_info** %8, align 8
  %61 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %62 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %61, i32 0, i32 1
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = bitcast %struct.bio* %62 to i8*
  %65 = bitcast %struct.bio* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 32, i1 false)
  %66 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %67 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %72 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %70
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %79 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %84 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @BIO_RW_FAILFAST_TRANSPORT, align 4
  %87 = shl i32 1, %86
  %88 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %89 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @multipath_end_request, align 4
  %94 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %95 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %98 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %99 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 1
  store %struct.multipath_bh* %97, %struct.multipath_bh** %100, align 8
  %101 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %102 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %101, i32 0, i32 1
  %103 = call i32 @generic_make_request(%struct.bio* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %53, %43, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local %struct.multipath_bh* @mempool_alloc(i32, i32) #1

declare dso_local i64 @multipath_map(%struct.mpconf*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @mempool_free(%struct.multipath_bh*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
