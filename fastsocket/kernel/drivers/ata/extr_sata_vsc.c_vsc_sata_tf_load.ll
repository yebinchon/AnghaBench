; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_vsc.c_vsc_sata_tf_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_vsc.c_vsc_sata_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ata_ioports }
%struct.ata_ioports = type { i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_NIEN = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @vsc_sata_tf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc_sata_tf_load(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 1
  store %struct.ata_ioports* %8, %struct.ata_ioports** %5, align 8
  %9 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %10 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_NIEN, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATA_NIEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %33 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATA_NIEN, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @vsc_intr_mask_update(%struct.ata_port* %31, i32 %36)
  br label %38

38:                                               ; preds = %25, %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %114

41:                                               ; preds = %38
  %42 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %41
  %49 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %53 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %52, i32 0, i32 12
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 8
  %57 = or i32 %51, %56
  %58 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %59 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writew(i32 %57, i32 %60)
  %62 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %63 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %64, %69
  %71 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %72 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @writew(i32 %70, i32 %73)
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %79 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %78, i32 0, i32 10
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 8
  %83 = or i32 %77, %82
  %84 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %85 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @writew(i32 %83, i32 %86)
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %92 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = shl i32 %94, 8
  %96 = or i32 %90, %95
  %97 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %98 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @writew(i32 %96, i32 %99)
  %101 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %102 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %105 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 %107, 8
  %109 = or i32 %103, %108
  %110 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %111 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @writew(i32 %109, i32 %112)
  br label %154

114:                                              ; preds = %41, %38
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %114
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %122 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @writew(i32 %120, i32 %123)
  %125 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %129 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @writew(i32 %127, i32 %130)
  %132 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %133 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %136 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @writew(i32 %134, i32 %137)
  %139 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %140 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %143 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @writew(i32 %141, i32 %144)
  %146 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %147 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %150 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @writew(i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %117, %114
  br label %154

154:                                              ; preds = %153, %48
  %155 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %156 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %163 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %166 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @writeb(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %161, %154
  %170 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %171 = call i32 @ata_wait_idle(%struct.ata_port* %170)
  ret void
}

declare dso_local i32 @vsc_intr_mask_update(%struct.ata_port*, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
