; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_gvp11.c_dma_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_gvp11.c_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32*, i64 }

@GVP11_DMAC_INT_ENABLE = common dso_local global i32 0, align 4
@BUF_SCSI_ALLOCED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_cmnd*, i32)* @dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_stop(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = call %struct.TYPE_6__* @DMA(%struct.Scsi_Host* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @GVP11_DMAC_INT_ENABLE, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call %struct.TYPE_6__* @DMA(%struct.Scsi_Host* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %3
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %24 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = icmp ne %struct.scsi_cmnd* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %35, i32* %39, i32 %43)
  br label %45

45:                                               ; preds = %31, %28, %22
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %47 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BUF_SCSI_ALLOCED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %54 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %60 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @amiga_chip_free(i32* %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %66 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %69 = call %struct.TYPE_5__* @HDATA(%struct.Scsi_Host* %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %16, %3
  ret void
}

declare dso_local %struct.TYPE_6__* @DMA(%struct.Scsi_Host*) #1

declare dso_local %struct.TYPE_5__* @HDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @amiga_chip_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
