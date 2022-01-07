; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_ack_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_ack_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32*, %struct.TYPE_8__*, i32*, i32*, %struct.vnic_wq_copy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_fw_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*, i32, %struct.fcpio_fw_req*)* @fnic_fcpio_ack_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_fcpio_ack_handler(%struct.fnic* %0, i32 %1, %struct.fcpio_fw_req* %2) #0 {
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fcpio_fw_req*, align 8
  %7 = alloca %struct.vnic_wq_copy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.fnic* %0, %struct.fnic** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fcpio_fw_req* %2, %struct.fcpio_fw_req** %6, align 8
  %11 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %12 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %17 = bitcast %struct.fcpio_fw_req* %16 to i8*
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load %struct.fnic*, %struct.fnic** %4, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 6
  %21 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.fnic*, %struct.fnic** %4, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  %27 = load %struct.fnic*, %struct.fnic** %4, align 8
  %28 = getelementptr inbounds %struct.fnic, %struct.fnic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %21, i64 %31
  store %struct.vnic_wq_copy* %32, %struct.vnic_wq_copy** %7, align 8
  %33 = load %struct.fnic*, %struct.fnic** %4, align 8
  %34 = getelementptr inbounds %struct.fnic, %struct.fnic* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @is_ack_index_in_range(%struct.vnic_wq_copy* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %3
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.fnic*, %struct.fnic** %4, align 8
  %46 = getelementptr inbounds %struct.fnic, %struct.fnic* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.fnic*, %struct.fnic** %4, align 8
  %50 = getelementptr inbounds %struct.fnic, %struct.fnic* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %3
  %54 = load %struct.fnic*, %struct.fnic** %4, align 8
  %55 = getelementptr inbounds %struct.fnic, %struct.fnic* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.fnic*, %struct.fnic** %4, align 8
  %61 = getelementptr inbounds %struct.fnic, %struct.fnic* %60, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @FNIC_TRACE(void (%struct.fnic*, i32, %struct.fcpio_fw_req*)* @fnic_fcpio_ack_handler, i32 %66, i32 0, i32 0, i32 %69, i32 %72, i32 %75, i32 %78)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_ack_index_in_range(%struct.vnic_wq_copy*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_TRACE(void (%struct.fnic*, i32, %struct.fcpio_fw_req*)*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
