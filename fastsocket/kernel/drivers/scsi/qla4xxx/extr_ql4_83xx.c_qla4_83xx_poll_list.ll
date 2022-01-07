; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_poll_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_poll_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla4_83xx_reset_entry_hdr = type { i64, i64 }
%struct.qla4_83xx_entry = type { i32, i32 }
%struct.qla4_83xx_poll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.qla4_83xx_reset_entry_hdr*)* @qla4_83xx_poll_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_83xx_poll_list(%struct.scsi_qla_host* %0, %struct.qla4_83xx_reset_entry_hdr* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla4_83xx_reset_entry_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qla4_83xx_entry*, align 8
  %7 = alloca %struct.qla4_83xx_poll*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla4_83xx_reset_entry_hdr* %1, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %10 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %11 = bitcast %struct.qla4_83xx_reset_entry_hdr* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to %struct.qla4_83xx_poll*
  store %struct.qla4_83xx_poll* %13, %struct.qla4_83xx_poll** %7, align 8
  %14 = load %struct.qla4_83xx_poll*, %struct.qla4_83xx_poll** %7, align 8
  %15 = bitcast %struct.qla4_83xx_poll* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 8
  %17 = bitcast i8* %16 to %struct.qla4_83xx_entry*
  store %struct.qla4_83xx_entry* %17, %struct.qla4_83xx_entry** %6, align 8
  %18 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %6, align 8
  %33 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.qla4_83xx_poll*, %struct.qla4_83xx_poll** %7, align 8
  %37 = getelementptr inbounds %struct.qla4_83xx_poll, %struct.qla4_83xx_poll* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qla4_83xx_poll*, %struct.qla4_83xx_poll** %7, align 8
  %40 = getelementptr inbounds %struct.qla4_83xx_poll, %struct.qla4_83xx_poll* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @qla4_83xx_poll_reg(%struct.scsi_qla_host* %31, i32 %34, i64 %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %6, align 8
  %47 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %46, i32 1
  store %struct.qla4_83xx_entry* %47, %struct.qla4_83xx_entry** %6, align 8
  br label %24

48:                                               ; preds = %24
  br label %88

49:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.qla4_83xx_reset_entry_hdr*, %struct.qla4_83xx_reset_entry_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, %struct.qla4_83xx_reset_entry_hdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %58 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %6, align 8
  %59 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.qla4_83xx_poll*, %struct.qla4_83xx_poll** %7, align 8
  %63 = getelementptr inbounds %struct.qla4_83xx_poll, %struct.qla4_83xx_poll* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qla4_83xx_poll*, %struct.qla4_83xx_poll** %7, align 8
  %66 = getelementptr inbounds %struct.qla4_83xx_poll, %struct.qla4_83xx_poll* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @qla4_83xx_poll_reg(%struct.scsi_qla_host* %57, i32 %60, i64 %61, i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %56
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %72 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %6, align 8
  %73 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %71, i32 %74, i64* %9)
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %77 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %6, align 8
  %78 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host* %76, i32 %79, i64* %9)
  br label %81

81:                                               ; preds = %70, %56
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = load %struct.qla4_83xx_entry*, %struct.qla4_83xx_entry** %6, align 8
  %86 = getelementptr inbounds %struct.qla4_83xx_entry, %struct.qla4_83xx_entry* %85, i32 1
  store %struct.qla4_83xx_entry* %86, %struct.qla4_83xx_entry** %6, align 8
  br label %50

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %48
  ret void
}

declare dso_local i64 @qla4_83xx_poll_reg(%struct.scsi_qla_host*, i32, i64, i32, i32) #1

declare dso_local i32 @qla4_83xx_rd_reg_indirect(%struct.scsi_qla_host*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
