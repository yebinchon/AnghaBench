; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_freebuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_freebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_buf = type { i32 }

@BUF_MAGIC = common dso_local global i32 0, align 4
@dma_kmem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"s3c2410_dma_freebuf: buff %p with bad magic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_buf*)* @s3c2410_dma_freebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_dma_freebuf(%struct.s3c2410_dma_buf* %0) #0 {
  %2 = alloca %struct.s3c2410_dma_buf*, align 8
  %3 = alloca i32, align 4
  store %struct.s3c2410_dma_buf* %0, %struct.s3c2410_dma_buf** %2, align 8
  %4 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %2, align 8
  %5 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BUF_MAGIC, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %2, align 8
  %11 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @dma_kmem, align 4
  %16 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %2, align 8
  %17 = call i32 @kmem_cache_free(i32 %15, %struct.s3c2410_dma_buf* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %2, align 8
  %20 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.s3c2410_dma_buf* %19)
  br label %21

21:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.s3c2410_dma_buf*) #1

declare dso_local i32 @printk(i8*, %struct.s3c2410_dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
