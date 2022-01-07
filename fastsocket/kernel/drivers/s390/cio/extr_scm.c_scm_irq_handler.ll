; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_scm.c_scm_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_scm.c_scm_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aob = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.aob_rq_header = type { i32, %struct.scm_device* }
%struct.scm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scm_driver = type { i32 (%struct.scm_device.0*, i32, i32)* }
%struct.scm_device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scm_irq_handler(%struct.aob* %0, i32 %1) #0 {
  %3 = alloca %struct.aob*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aob_rq_header*, align 8
  %6 = alloca %struct.scm_device*, align 8
  %7 = alloca %struct.scm_driver*, align 8
  store %struct.aob* %0, %struct.aob** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.aob*, %struct.aob** %3, align 8
  %9 = getelementptr inbounds %struct.aob, %struct.aob* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.aob_rq_header*
  store %struct.aob_rq_header* %13, %struct.aob_rq_header** %5, align 8
  %14 = load %struct.aob_rq_header*, %struct.aob_rq_header** %5, align 8
  %15 = getelementptr inbounds %struct.aob_rq_header, %struct.aob_rq_header* %14, i32 0, i32 1
  %16 = load %struct.scm_device*, %struct.scm_device** %15, align 8
  store %struct.scm_device* %16, %struct.scm_device** %6, align 8
  %17 = load %struct.scm_device*, %struct.scm_device** %6, align 8
  %18 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.scm_driver* @to_scm_drv(i32 %20)
  store %struct.scm_driver* %21, %struct.scm_driver** %7, align 8
  %22 = load %struct.scm_driver*, %struct.scm_driver** %7, align 8
  %23 = getelementptr inbounds %struct.scm_driver, %struct.scm_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.scm_device.0*, i32, i32)*, i32 (%struct.scm_device.0*, i32, i32)** %23, align 8
  %25 = load %struct.scm_device*, %struct.scm_device** %6, align 8
  %26 = bitcast %struct.scm_device* %25 to %struct.scm_device.0*
  %27 = load %struct.aob_rq_header*, %struct.aob_rq_header** %5, align 8
  %28 = getelementptr inbounds %struct.aob_rq_header, %struct.aob_rq_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 %24(%struct.scm_device.0* %26, i32 %29, i32 %30)
  ret void
}

declare dso_local %struct.scm_driver* @to_scm_drv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
