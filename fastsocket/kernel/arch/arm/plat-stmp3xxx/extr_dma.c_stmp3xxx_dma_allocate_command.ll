; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_allocate_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp3xxx_dma_allocate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp3xxx_dma_user = type { i32 }
%struct.stmp3xxx_dma_descriptor = type { i32, i32 }

@channels = common dso_local global %struct.stmp3xxx_dma_user* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pool_item_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmp3xxx_dma_allocate_command(i32 %0, %struct.stmp3xxx_dma_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmp3xxx_dma_descriptor*, align 8
  %5 = alloca %struct.stmp3xxx_dma_user*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.stmp3xxx_dma_descriptor* %1, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %7 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** @channels, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %7, i64 %9
  store %struct.stmp3xxx_dma_user* %10, %struct.stmp3xxx_dma_user** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @IS_VALID_CHANNEL(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @IS_USED(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %53

24:                                               ; preds = %17
  %25 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %26 = icmp eq %struct.stmp3xxx_dma_descriptor* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load %struct.stmp3xxx_dma_user*, %struct.stmp3xxx_dma_user** %5, align 8
  %32 = getelementptr inbounds %struct.stmp3xxx_dma_user, %struct.stmp3xxx_dma_user* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %36 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %35, i32 0, i32 1
  %37 = call i32 @dma_pool_alloc(i32 %33, i32 %34, i32* %36)
  %38 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %39 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %41 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %53

47:                                               ; preds = %30
  %48 = load %struct.stmp3xxx_dma_descriptor*, %struct.stmp3xxx_dma_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.stmp3xxx_dma_descriptor, %struct.stmp3xxx_dma_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @pool_item_size, align 4
  %52 = call i32 @memset(i32 %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %47, %44, %27, %21, %14
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @IS_VALID_CHANNEL(i32) #1

declare dso_local i32 @IS_USED(i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
