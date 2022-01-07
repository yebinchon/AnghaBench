; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_vlb32_data_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_vlb32_data_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_PFLAG_PIO32 = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i32, i32)* @vlb32_data_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlb32_data_xfer(%struct.ata_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.ata_device* %0, %struct.ata_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ata_port*, %struct.ata_port** %16, align 8
  store %struct.ata_port* %17, %struct.ata_port** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 3
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ata_id_has_dword_io(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %108

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %108

31:                                               ; preds = %28, %25
  %32 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATA_PFLAG_PIO32, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %108

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @WRITE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = lshr i32 %48, 2
  %50 = call i32 @iowrite32_rep(i32 %46, i8* %47, i32 %49)
  br label %60

51:                                               ; preds = %38
  %52 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = lshr i32 %57, 2
  %59 = call i32 @ioread32_rep(i32 %55, i8* %56, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @WRITE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @memcpy(i8* %12, i8* %76, i32 %77)
  %79 = load i8, i8* %12, align 1
  %80 = call i32 @le32_to_cpu(i8 zeroext %79)
  %81 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %82 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @iowrite32(i32 %80, i32 %84)
  br label %103

86:                                               ; preds = %64
  %87 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %88 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ioread32(i32 %90)
  %92 = call zeroext i8 @cpu_to_le32(i32 %91)
  store i8 %92, i8* %12, align 1
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @memcpy(i8* %100, i8* %12, i32 %101)
  br label %103

103:                                              ; preds = %86, %68
  br label %104

104:                                              ; preds = %103, %60
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, 3
  %107 = and i32 %106, -4
  store i32 %107, i32* %5, align 4
  br label %114

108:                                              ; preds = %31, %28, %4
  %109 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ata_sff_data_xfer(%struct.ata_device* %109, i8* %110, i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %108, %104
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i64 @ata_id_has_dword_io(i32) #1

declare dso_local i32 @iowrite32_rep(i32, i8*, i32) #1

declare dso_local i32 @ioread32_rep(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8 zeroext) #1

declare dso_local zeroext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @ata_sff_data_xfer(%struct.ata_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
