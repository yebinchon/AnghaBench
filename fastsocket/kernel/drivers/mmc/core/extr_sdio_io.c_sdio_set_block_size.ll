; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_set_block_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_set_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDIO_FBR_BLKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_set_block_size(%struct.sdio_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %9 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %27 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @min(i32 %25, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @min(i32 %34, i32 512)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %38 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @SDIO_FBR_BASE(i32 %42)
  %44 = load i64, i64* @SDIO_FBR_BLKSIZE, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 255
  %48 = call i32 @mmc_io_rw_direct(%struct.TYPE_4__* %39, i32 1, i32 0, i64 %45, i32 %47, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %76

53:                                               ; preds = %36
  %54 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %55 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %58 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @SDIO_FBR_BASE(i32 %59)
  %61 = load i64, i64* @SDIO_FBR_BLKSIZE, align 8
  %62 = add nsw i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* %5, align 4
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = call i32 @mmc_io_rw_direct(%struct.TYPE_4__* %56, i32 1, i32 0, i64 %63, i32 %66, i32* null)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %53
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %53
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %70, %51, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mmc_io_rw_direct(%struct.TYPE_4__*, i32, i32, i64, i32, i32*) #1

declare dso_local i64 @SDIO_FBR_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
