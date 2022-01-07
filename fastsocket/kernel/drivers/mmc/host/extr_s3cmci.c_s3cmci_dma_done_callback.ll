; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_dma_done_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_dma_done_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32 }
%struct.s3cmci_host = type { i32, i8*, %struct.TYPE_4__*, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@S3C2410_SDICMDSTAT = common dso_local global i64 0, align 8
@S3C2410_SDIDSTA = common dso_local global i64 0, align 8
@S3C2410_SDIFSTA = common dso_local global i64 0, align 8
@S3C2410_SDIDCNT = common dso_local global i64 0, align 8
@S3C2410_RES_OK = common dso_local global i32 0, align 4
@dbg_fail = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"DMA FAILED: csta=0x%08x dsta=0x%08x fsta=0x%08x dcnt:0x%08x result:0x%08x toGo:%u\0A\00", align 1
@dbg_dma = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"DMA DONE  Size:%i DSTA:[%08x] DCNT:[%08x] toGo:%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"DMA FINISHED Size:%i DSTA:%08x DCNT:%08x\0A\00", align 1
@COMPLETION_FINALIZE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_dma_chan*, i8*, i32, i32)* @s3cmci_dma_done_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_dma_done_callback(%struct.s3c2410_dma_chan* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s3c2410_dma_chan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s3cmci_host*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_chan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.s3cmci_host*
  store %struct.s3cmci_host* %16, %struct.s3cmci_host** %9, align 8
  %17 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %18 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S3C2410_SDICMDSTAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %24 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @S3C2410_SDIDSTA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %30 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @S3C2410_SDIFSTA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %36 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S3C2410_SDIDCNT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %42 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %49 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %58 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %65 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %64, i32 0, i32 3
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @S3C2410_RES_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %4
  %72 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %73 = load i32, i32* @dbg_fail, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %80 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct.s3cmci_host*, i32, i8*, i32, i32, i32, ...) @dbg(%struct.s3cmci_host* %72, i32 %73, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i64 %81)
  br label %122

83:                                               ; preds = %4
  %84 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %85 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %89 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %94 = load i32, i32* @dbg_dma, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %99 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.s3cmci_host*, i32, i8*, i32, i32, i32, ...) @dbg(%struct.s3cmci_host* %93, i32 %94, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i64 %100)
  br label %114

102:                                              ; preds = %83
  %103 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %104 = load i32, i32* @dbg_dma, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (%struct.s3cmci_host*, i32, i8*, i32, i32, i32, ...) @dbg(%struct.s3cmci_host* %103, i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %110 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i8*, i8** @COMPLETION_FINALIZE, align 8
  %112 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %113 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %122, %102, %92
  %115 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %116 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %115, i32 0, i32 4
  %117 = call i32 @tasklet_schedule(i32* %116)
  %118 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %119 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %118, i32 0, i32 3
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  ret void

122:                                              ; preds = %71
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  %125 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %126 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %124, i32* %130, align 4
  %131 = load i8*, i8** @COMPLETION_FINALIZE, align 8
  %132 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %133 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.s3cmci_host*, %struct.s3cmci_host** %9, align 8
  %135 = call i32 @clear_imask(%struct.s3cmci_host* %134)
  br label %114
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_imask(%struct.s3cmci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
