; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_wd33c93_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_wd33c93_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i64 }
%struct.WD33C93_hostdata = type { i64, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i64*, i32 (%struct.Scsi_Host.0*, i32*, i32)* }
%struct.Scsi_Host.0 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"scsi%d: reset. \00", align 1
@DEFAULT_SX_PER = common dso_local global i32 0, align 4
@DEFAULT_SX_OFF = common dso_local global i32 0, align 4
@SS_UNSET = common dso_local global i32 0, align 4
@S_UNCONNECTED = common dso_local global i32 0, align 4
@D_DMA_OFF = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wd33c93_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.WD33C93_hostdata*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %14, %struct.WD33C93_hostdata** %4, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @disable_irq(i32 %21)
  %23 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %24 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %23, i32 0, i32 12
  %25 = load i32 (%struct.Scsi_Host.0*, i32*, i32)*, i32 (%struct.Scsi_Host.0*, i32*, i32)** %24, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %27 = bitcast %struct.Scsi_Host* %26 to %struct.Scsi_Host.0*
  %28 = call i32 %25(%struct.Scsi_Host.0* %27, i32* null, i32 0)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %59, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %34 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %33, i32 0, i32 11
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @DEFAULT_SX_PER, align 4
  %40 = sdiv i32 %39, 4
  %41 = load i32, i32* @DEFAULT_SX_OFF, align 4
  %42 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %43 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @calc_sync_xfer(i32 %40, i32 %41, i32 0, i32 %44)
  %46 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %47 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %46, i32 0, i32 10
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* @SS_UNSET, align 4
  %53 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %54 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %32
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %64 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %63, i32 0, i32 7
  store i32* null, i32** %64, align 8
  %65 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %66 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %65, i32 0, i32 6
  store i32* null, i32** %66, align 8
  %67 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %68 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %67, i32 0, i32 5
  store i32* null, i32** %68, align 8
  %69 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %70 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @S_UNCONNECTED, align 4
  %72 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %73 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @D_DMA_OFF, align 4
  %75 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %76 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %78 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %4, align 8
  %80 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %82 = call i32 @reset_wd33c93(%struct.Scsi_Host* %81)
  %83 = load i32, i32* @DID_RESET, align 4
  %84 = shl i32 %83, 16
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @enable_irq(i32 %89)
  %91 = load i32, i32* @SUCCESS, align 4
  ret i32 %91
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @calc_sync_xfer(i32, i32, i32, i32) #1

declare dso_local i32 @reset_wd33c93(%struct.Scsi_Host*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
