; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_dma_user = type { i32, i32* }

@channels = common dso_local global %struct.stmp3xxx_dma_user* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_dma_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmp3xxx_dma_user*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** @channels, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %5, i64 %7
  store %struct.stmp3xxx_dma_user* %8, %struct.stmp3xxx_dma_user** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @IS_VALID_CHANNEL(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @IS_USED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %3, align 8
  %24 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %3, align 8
  %30 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dma_pool_destroy(i32* %31)
  %33 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %3, align 8
  %34 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %22, %19, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @IS_VALID_CHANNEL(i32) #1

declare dso_local i32 @IS_USED(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
