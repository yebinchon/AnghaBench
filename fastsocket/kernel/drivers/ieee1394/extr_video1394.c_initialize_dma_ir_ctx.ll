; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_initialize_dma_ir_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_initialize_dma_ir_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ti_ohci = type { i32 }

@VIDEO1394_INCLUDE_ISO_HEADERS = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntMaskSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_iso_ctx*, i32, i32)* @initialize_dma_ir_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_dma_ir_ctx(%struct.dma_iso_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_iso_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_ohci*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_iso_ctx* %0, %struct.dma_iso_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ti_ohci*
  store %struct.ti_ohci* %12, %struct.ti_ohci** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %17 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ohci1394_stop_context(%struct.ti_ohci* %16, i32 %19, i32* null)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %35, %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @initialize_dma_ir_prg(%struct.dma_iso_ctx* %28, i32 %29, i32 %30)
  %32 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @reset_ir_status(%struct.dma_iso_ctx* %32, i32 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %40 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @reg_write(%struct.ti_ohci* %39, i32 %42, i32 -268435456)
  %44 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %45 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reg_write(%struct.ti_ohci* %44, i32 %47, i32 -2147483648)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @VIDEO1394_INCLUDE_ISO_HEADERS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %55 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @reg_write(%struct.ti_ohci* %54, i32 %57, i32 1073741824)
  br label %59

59:                                               ; preds = %53, %38
  %60 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %61 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 15
  %66 = shl i32 %65, 8
  %67 = or i32 -268435456, %66
  %68 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %67, %70
  %72 = call i32 @reg_write(%struct.ti_ohci* %60, i32 %63, i32 %71)
  %73 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %74 = load i32, i32* @OHCI1394_IsoRecvIntMaskSet, align 4
  %75 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = call i32 @reg_write(%struct.ti_ohci* %73, i32 %74, i32 %78)
  ret void
}

declare dso_local i32 @ohci1394_stop_context(%struct.ti_ohci*, i32, i32*) #1

declare dso_local i32 @initialize_dma_ir_prg(%struct.dma_iso_ctx*, i32, i32) #1

declare dso_local i32 @reset_ir_status(%struct.dma_iso_ctx*, i32) #1

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
