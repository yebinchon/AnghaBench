; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_s3cmci.c_s3cmci_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@s3cmci_dma_setup.last_source = internal global i32 -1, align 4
@s3cmci_dma_setup.setup_ok = internal global i32 0, align 4
@s3cmci_dma_done_callback = common dso_local global i32 0, align 4
@S3C2410_DMAF_AUTOSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3cmci_host*, i32)* @s3cmci_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_dma_setup(%struct.s3cmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @s3cmci_dma_setup.last_source, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %42

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* @s3cmci_dma_setup.last_source, align 4
  %11 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %12 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %16 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %21 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @s3c2410_dma_devconfig(i32 %13, i32 %14, i64 %23)
  %25 = load i32, i32* @s3cmci_dma_setup.setup_ok, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %9
  %28 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %29 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @s3c2410_dma_config(i32 %30, i32 4)
  %32 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %33 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @s3cmci_dma_done_callback, align 4
  %36 = call i32 @s3c2410_dma_set_buffdone_fn(i32 %34, i32 %35)
  %37 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %38 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @S3C2410_DMAF_AUTOSTART, align 4
  %41 = call i32 @s3c2410_dma_setflags(i32 %39, i32 %40)
  store i32 1, i32* @s3cmci_dma_setup.setup_ok, align 4
  br label %42

42:                                               ; preds = %8, %27, %9
  ret void
}

declare dso_local i32 @s3c2410_dma_devconfig(i32, i32, i64) #1

declare dso_local i32 @s3c2410_dma_config(i32, i32) #1

declare dso_local i32 @s3c2410_dma_set_buffdone_fn(i32, i32) #1

declare dso_local i32 @s3c2410_dma_setflags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
