; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_atari_scsi_fetch_restbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_atari_scsi_fetch_restbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dma_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SCSI DMA: there are %d rest bytes for phys addr 0x%08lx\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" = virt addr %p\0A\00", align 1
@tt_scsi_dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atari_scsi_fetch_restbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atari_scsi_fetch_restbytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @dma_addr, align 4
  %6 = call i64 @SCSI_DMA_READ_P(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 3
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %4, align 8
  %16 = xor i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* %1, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 (i8*, ...) @DMA_PRINTK(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @phys_to_virt(i64 %20)
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, ...) @DMA_PRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i8* bitcast (%struct.TYPE_2__* @tt_scsi_dma to i8*), i8** %2, align 8
  br label %24

24:                                               ; preds = %33, %12
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %2, align 8
  %30 = load i8, i8* %28, align 1
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  store i8 %30, i8* %31, align 1
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %1, align 4
  br label %24

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %0
  ret void
}

declare dso_local i64 @SCSI_DMA_READ_P(i32) #1

declare dso_local i32 @DMA_PRINTK(i8*, ...) #1

declare dso_local i8* @phys_to_virt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
