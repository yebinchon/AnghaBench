; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_rwcmd_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_rwcmd_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i64, i8* }
%struct.ata_device = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ATA_TFLAG_FUA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i8* null, align 8
@ATA_FLAG_PIO_LBA48 = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i8* null, align 8
@ata_rw_cmds = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_taskfile*, %struct.ata_device*)* @ata_rwcmd_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_rwcmd_protocol(%struct.ata_taskfile* %0, %struct.ata_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  %11 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %12 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 4, i32 0
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %20 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 0
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %28 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load i8*, i8** @ATA_PROT_PIO, align 8
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %46 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 8
  store i32 %50, i32* %7, align 4
  br label %80

51:                                               ; preds = %2
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATA_FLAG_PIO_LBA48, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load i8*, i8** @ATA_PROT_PIO, align 8
  %67 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %68 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %70 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 8
  store i32 %74, i32* %7, align 4
  br label %79

75:                                               ; preds = %54, %51
  %76 = load i8*, i8** @ATA_PROT_DMA, align 8
  %77 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %78 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  store i32 16, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i64*, i64** @ata_rw_cmds, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %81, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %97 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  store i32 0, i32* %3, align 4
  br label %99

98:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
