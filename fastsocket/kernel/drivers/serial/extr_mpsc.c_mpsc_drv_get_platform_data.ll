; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_drv_get_platform_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_drv_get_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { %struct.TYPE_4__, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32*, i64, i64, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mpsc_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UPIO_MEM = common dso_local global i32 0, align 4
@PORT_MPSC = common dso_local global i32 0, align 4
@MPSC_TXBE_SIZE = common dso_local global i32 0, align 4
@mpsc_pops = common dso_local global i32 0, align 4
@mpsc_shared_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, %struct.platform_device*, i32)* @mpsc_drv_get_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_drv_get_platform_data(%struct.mpsc_port_info* %0, %struct.platform_device* %1, i32 %2) #0 {
  %4 = alloca %struct.mpsc_port_info*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpsc_pdata*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mpsc_pdata*
  store %struct.mpsc_pdata* %12, %struct.mpsc_pdata** %7, align 8
  %13 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %14 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %17 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @UPIO_MEM, align 4
  %20 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %21 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %25 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @PORT_MPSC, align 4
  %28 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %29 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @MPSC_TXBE_SIZE, align 4
  %32 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %33 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %36 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %35, i32 0, i32 16
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %39 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i64 %37, i64* %40, align 8
  %41 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %42 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %41, i32 0, i32 16
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %45 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i64 %43, i64* %46, align 8
  %47 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %48 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32* @mpsc_pops, i32** %49, align 8
  %50 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %51 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %54 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %56 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %59 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %61 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %64 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %66 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %69 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %71 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %74 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %76 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %79 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %81 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %84 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %86 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %89 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %91 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %94 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %96 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %99 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %101 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %104 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %106 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %109 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %111 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %114 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.mpsc_pdata*, %struct.mpsc_pdata** %7, align 8
  %116 = getelementptr inbounds %struct.mpsc_pdata, %struct.mpsc_pdata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %119 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %121 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %120, i32 0, i32 1
  store i32* @mpsc_shared_regs, i32** %121, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %123 = call i32 @platform_get_irq(%struct.platform_device* %122, i32 0)
  %124 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %125 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  ret void
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
