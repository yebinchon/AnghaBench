; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_vsc.c_vsc_sata_tf_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_vsc.c_vsc_sata_tf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @vsc_sata_tf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc_sata_tf_read(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  store %struct.ata_ioports* %12, %struct.ata_ioports** %5, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = call i32 @ata_sff_check_status(%struct.ata_port* %13)
  %15 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %16 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %18 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @readw(i32 %19)
  %21 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %24 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @readw(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %29 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @readw(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %34 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @readw(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %39 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @readw(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %44 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @readw(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %53 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %59 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %62 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %2
  %70 = load i32, i32* %10, align 4
  %71 = ashr i32 %70, 8
  %72 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %73 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 8
  %76 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %77 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 8
  %80 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %81 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 8
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 8
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %69, %2
  ret void
}

declare dso_local i32 @ata_sff_check_status(%struct.ata_port*) #1

declare dso_local i8* @readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
