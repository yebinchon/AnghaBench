; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_dma_user = type { i8*, i32, i32* }
%struct.device = type { i32 }

@channels = common dso_local global %struct.stmp3xxx_dma_user* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pool_item_size = common dso_local global i32 0, align 4
@pool_alignment = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_dma_request(i32 %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stmp3xxx_dma_user*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** @channels, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %9, i64 %11
  store %struct.stmp3xxx_dma_user* %12, %struct.stmp3xxx_dma_user** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IS_VALID_CHANNEL(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @IS_USED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i32, i32* @pool_item_size, align 4
  %30 = load i32, i32* @pool_alignment, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32* @dma_pool_create(i8* %27, %struct.device* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %7, align 8
  %34 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %7, align 8
  %36 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %50

42:                                               ; preds = %26
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %7, align 8
  %45 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %7, align 8
  %47 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %42, %39, %23, %16
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @IS_VALID_CHANNEL(i32) #1

declare dso_local i64 @IS_USED(i32) #1

declare dso_local i32* @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
