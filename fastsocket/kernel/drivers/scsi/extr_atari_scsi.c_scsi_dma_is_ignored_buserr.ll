; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_scsi_dma_is_ignored_buserr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_scsi_dma_is_ignored_buserr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@dma_addr = common dso_local global i32 0, align 4
@m68k_num_memory = common dso_local global i32 0, align 4
@m68k_memory = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @scsi_dma_is_ignored_buserr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_dma_is_ignored_buserr(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  %7 = load i32, i32* @dma_addr, align 4
  %8 = call i64 @SCSI_DMA_READ_P(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @m68k_num_memory, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m68k_memory, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m68k_memory, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %24, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 4
  %39 = icmp ule i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %47

41:                                               ; preds = %35, %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %14

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45, %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @SCSI_DMA_READ_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
