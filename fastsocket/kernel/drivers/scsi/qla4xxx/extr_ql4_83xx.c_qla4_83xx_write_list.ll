; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_write_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla4_83xx_reset_entry_hdr = type { i64, i64 }
%struct.qla4_83xx_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla4_83xx_reset_entry_hdr*)* @qla4_83xx_write_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_83xx_write_list(%struct.scsi_qla_host* %0, %struct.qla4_83xx_reset_entry_hdr* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla4_83xx_reset_entry_hdr*, align 8
  %5 = alloca %struct.qla4_83xx_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla4_83xx_reset_entry_hdr* %1, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %7 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %8 = bitcast %struct.qla4_83xx_reset_entry_hdr* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 16
  %10 = bitcast i8* %9 to %struct.qla4_83xx_entry*
  store %struct.qla4_83xx_entry* %10, %struct.qla4_83xx_entry** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %19 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %5, align 8
  %20 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %5, align 8
  %23 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %18, i32 %21, i32 %24)
  %26 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @udelay(i64 %33)
  br label %35

35:                                               ; preds = %30, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %5, align 8
  %40 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %39, i32 1
  store %struct.qla4_83xx_entry* %40, %struct.qla4_83xx_entry** %5, align 8
  br label %11

41:                                               ; preds = %11
  ret void
}

declare dso_local i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
