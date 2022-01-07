; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_send_orb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_send_orb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_orb = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sbp2_logical_unit = type { i32, i32 }
%struct.fw_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@complete_transaction = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_orb*, %struct.sbp2_logical_unit*, i32, i32, i32)* @sbp2_send_orb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_send_orb(%struct.sbp2_orb* %0, %struct.sbp2_logical_unit* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sbp2_orb*, align 8
  %7 = alloca %struct.sbp2_logical_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_device*, align 8
  %12 = alloca i64, align 8
  store %struct.sbp2_orb* %0, %struct.sbp2_orb** %6, align 8
  store %struct.sbp2_logical_unit* %1, %struct.sbp2_logical_unit** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %14 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.fw_device* @target_device(i32 %15)
  store %struct.fw_device* %16, %struct.fw_device** %11, align 8
  %17 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %18 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %21 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %25 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.fw_device*, %struct.fw_device** %11, align 8
  %28 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %34 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %33, i32 0, i32 3
  %35 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %7, align 8
  %36 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.fw_device*, %struct.fw_device** %11, align 8
  %39 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %45 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %44, i32 0, i32 2
  %46 = call i32 @kref_get(i32* %45)
  %47 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %48 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %47, i32 0, i32 2
  %49 = call i32 @kref_get(i32* %48)
  %50 = load %struct.fw_device*, %struct.fw_device** %11, align 8
  %51 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %54 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %53, i32 0, i32 1
  %55 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.fw_device*, %struct.fw_device** %11, align 8
  %59 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %63 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %62, i32 0, i32 0
  %64 = load i32, i32* @complete_transaction, align 4
  %65 = load %struct.sbp2_orb*, %struct.sbp2_orb** %6, align 8
  %66 = call i32 @fw_send_request(%struct.TYPE_3__* %52, i32* %54, i32 %55, i32 %56, i32 %57, i32 %60, i32 %61, %struct.TYPE_4__* %63, i32 16, i32 %64, %struct.sbp2_orb* %65)
  ret void
}

declare dso_local %struct.fw_device* @target_device(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @fw_send_request(%struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.sbp2_orb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
