; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.dm_transaction_manager* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.dm_transaction_manager* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.dm_transaction_manager* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32* }
%struct.dm_transaction_manager = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"block size too big to hold bitmaps\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENTRIES_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*, %struct.dm_transaction_manager*)* @sm_ll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_ll_init(%struct.ll_disk* %0, %struct.dm_transaction_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ll_disk*, align 8
  %5 = alloca %struct.dm_transaction_manager*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %4, align 8
  store %struct.dm_transaction_manager* %1, %struct.dm_transaction_manager** %5, align 8
  %6 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %7 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %8 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %7, i32 0, i32 8
  store %struct.dm_transaction_manager* %6, %struct.dm_transaction_manager** %8, align 8
  %9 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %10 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %11 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store %struct.dm_transaction_manager* %9, %struct.dm_transaction_manager** %12, align 8
  %13 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %14 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %17 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %21 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %25 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %29 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %33 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %34 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store %struct.dm_transaction_manager* %32, %struct.dm_transaction_manager** %35, align 8
  %36 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %37 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %40 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %44 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %48 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %52 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %56 = call i32 @dm_tm_get_bm(%struct.dm_transaction_manager* %55)
  %57 = call i32 @dm_bm_block_size(i32 %56)
  %58 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %59 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %61 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 1073741824
  br i1 %63, label %64, label %68

64:                                               ; preds = %2
  %65 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %88

68:                                               ; preds = %2
  %69 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %70 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 4
  %74 = load i32, i32* @ENTRIES_PER_BYTE, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %73, %75
  %77 = trunc i64 %76 to i32
  %78 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %79 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %81 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %83 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %85 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %87 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %68, %64
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(%struct.dm_transaction_manager*) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
