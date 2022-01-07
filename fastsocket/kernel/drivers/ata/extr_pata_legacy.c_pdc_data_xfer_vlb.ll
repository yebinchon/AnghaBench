; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_pdc_data_xfer_vlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_pdc_data_xfer_vlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ATA_PFLAG_PIO32 = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i32, i32)* @pdc_data_xfer_vlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_data_xfer_vlb(%struct.ata_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  store %struct.ata_port* %19, %struct.ata_port** %10, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ata_id_has_dword_io(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %128

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %128

31:                                               ; preds = %28, %25
  %32 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATA_PFLAG_PIO32, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %128

38:                                               ; preds = %31
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ioread8(i32 %44)
  %46 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ioread8(i32 %49)
  %51 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ioread8(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @READ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %38
  %60 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = lshr i32 %65, 2
  %67 = call i32 @ioread32_rep(i32 %63, i8* %64, i32 %66)
  br label %77

68:                                               ; preds = %38
  %69 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %70 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = lshr i32 %74, 2
  %76 = call i32 @iowrite32_rep(i32 %72, i8* %73, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @READ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ioread32(i32 %89)
  %91 = call zeroext i8 @cpu_to_le32(i32 %90)
  store i8 %91, i8* %12, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @memcpy(i8* %99, i8* %12, i32 %100)
  br label %120

102:                                              ; preds = %81
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @memcpy(i8* %12, i8* %110, i32 %111)
  %113 = load i8, i8* %12, align 1
  %114 = call i32 @le32_to_cpu(i8 zeroext %113)
  %115 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %116 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @iowrite32(i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %102, %85
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 4, %121
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %120, %77
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @local_irq_restore(i64 %126)
  br label %134

128:                                              ; preds = %31, %28, %4
  %129 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @ata_sff_data_xfer_noirq(%struct.ata_device* %129, i8* %130, i32 %131, i32 %132)
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i64 @ata_id_has_dword_io(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ioread32_rep(i32, i8*, i32) #1

declare dso_local i32 @iowrite32_rep(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local zeroext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8 zeroext) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @ata_sff_data_xfer_noirq(%struct.ata_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
