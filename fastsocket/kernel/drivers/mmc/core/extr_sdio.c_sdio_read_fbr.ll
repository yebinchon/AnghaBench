; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_sdio_read_fbr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_sdio_read_fbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i8, i32, i32 }

@SDIO_FBR_STD_IF = common dso_local global i64 0, align 8
@SDIO_FBR_STD_IF_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*)* @sdio_read_fbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_read_fbr(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @SDIO_FBR_BASE(i32 %10)
  %12 = load i64, i64* @SDIO_FBR_STD_IF, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @mmc_io_rw_direct(i32 %7, i32 0, i32 0, i64 %13, i32 0, i8* %4)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %45

18:                                               ; preds = %1
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %28 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @SDIO_FBR_BASE(i32 %32)
  %34 = load i64, i64* @SDIO_FBR_STD_IF_EXT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @mmc_io_rw_direct(i32 %29, i32 0, i32 0, i64 %35, i32 0, i8* %4)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %45

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i8, i8* %4, align 1
  %43 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %44 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %43, i32 0, i32 0
  store i8 %42, i8* %44, align 4
  br label %45

45:                                               ; preds = %41, %39, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i64, i32, i8*) #1

declare dso_local i64 @SDIO_FBR_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
