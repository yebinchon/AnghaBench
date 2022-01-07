; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_del_from_active_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_del_from_active_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srb = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.scsi_qla_host = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }

@SRB_DMA_VALID = common dso_local global i32 0, align 4
@MAX_SRBS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.srb* @qla4xxx_del_from_active_array(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.srb*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.srb*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.srb* null, %struct.srb** %6, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %7, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.scsi_cmnd* @scsi_host_find_tag(i32 %10, i32 %11)
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %7, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %14 = icmp ne %struct.scsi_cmnd* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load %struct.srb*, %struct.srb** %6, align 8
  store %struct.srb* %16, %struct.srb** %3, align 8
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %19 = call i64 @CMD_SP(%struct.scsi_cmnd* %18)
  %20 = inttoptr i64 %19 to %struct.srb*
  store %struct.srb* %20, %struct.srb** %6, align 8
  %21 = load %struct.srb*, %struct.srb** %6, align 8
  %22 = icmp ne %struct.srb* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load %struct.srb*, %struct.srb** %6, align 8
  store %struct.srb* %24, %struct.srb** %3, align 8
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.srb*, %struct.srb** %6, align 8
  %27 = getelementptr inbounds %struct.srb, %struct.srb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SRB_DMA_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.srb*, %struct.srb** %6, align 8
  %34 = getelementptr inbounds %struct.srb, %struct.srb* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.srb*, %struct.srb** %6, align 8
  %43 = getelementptr inbounds %struct.srb, %struct.srb* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load i64, i64* @MAX_SRBS, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.srb*, %struct.srb** %6, align 8
  %50 = getelementptr inbounds %struct.srb, %struct.srb* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %32
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.srb*, %struct.srb** %6, align 8
  store %struct.srb* %55, %struct.srb** %3, align 8
  br label %56

56:                                               ; preds = %54, %23, %15
  %57 = load %struct.srb*, %struct.srb** %3, align 8
  ret %struct.srb* %57
}

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(i32, i32) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
