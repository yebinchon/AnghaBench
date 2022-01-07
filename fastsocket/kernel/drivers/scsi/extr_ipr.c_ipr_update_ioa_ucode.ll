; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_update_ioa_ucode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_update_ioa_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.TYPE_3__*, %struct.ipr_sglist*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ipr_sglist = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Microcode download already in progress\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to map microcode download buffer!\0A\00", align 1
@IPR_SHUTDOWN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*, %struct.ipr_sglist*)* @ipr_update_ioa_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_update_ioa_ucode(%struct.ipr_ioa_cfg* %0, %struct.ipr_sglist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_sglist*, align 8
  %6 = alloca i64, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store %struct.ipr_sglist* %1, %struct.ipr_sglist** %5, align 8
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  br label %14

14:                                               ; preds = %19, %2
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32 %24, i64 %25)
  %27 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %29, i32 %35)
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32 %41, i64 %42)
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %45, i32 0, i32 1
  %47 = load %struct.ipr_sglist*, %struct.ipr_sglist** %46, align 8
  %48 = icmp ne %struct.ipr_sglist* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32 %54, i64 %55)
  %57 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %137

64:                                               ; preds = %44
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %69 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %72 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @pci_map_sg(%struct.TYPE_4__* %67, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %77 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %79 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %64
  %83 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %84 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32 %87, i64 %88)
  %90 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %91 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %137

97:                                               ; preds = %64
  %98 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %99 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %100 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %99, i32 0, i32 1
  store %struct.ipr_sglist* %98, %struct.ipr_sglist** %100, align 8
  %101 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %102 = load i32, i32* @IPR_SHUTDOWN_NORMAL, align 4
  %103 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %101, i32 %102)
  %104 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %105 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32 %108, i64 %109)
  %111 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %115 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @wait_event(i32 %113, i32 %119)
  %121 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %122 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @spin_lock_irqsave(i32 %125, i64 %126)
  %128 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %129 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %128, i32 0, i32 1
  store %struct.ipr_sglist* null, %struct.ipr_sglist** %129, align 8
  %130 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %131 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32 %134, i64 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %97, %82, %49
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_map_sg(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
