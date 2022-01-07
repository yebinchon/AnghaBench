; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_prep_bidi_ahs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_prep_bidi_ahs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_3__*, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.iscsi_rlength_ahdr = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ISCSI_AHSTYPE_RLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"bidi-in rlen_ahdr->read_length(%d) rlen_ahdr->ahslength(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @iscsi_prep_bidi_ahs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_prep_bidi_ahs(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.iscsi_rlength_ahdr*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 1
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %11 = call %struct.iscsi_rlength_ahdr* @iscsi_next_hdr(%struct.iscsi_task* %10)
  store %struct.iscsi_rlength_ahdr* %11, %struct.iscsi_rlength_ahdr** %5, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %13 = call i32 @iscsi_add_hdr(%struct.iscsi_task* %12, i32 24)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = call i32 @cpu_to_be16(i32 12)
  %20 = load %struct.iscsi_rlength_ahdr*, %struct.iscsi_rlength_ahdr** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_rlength_ahdr, %struct.iscsi_rlength_ahdr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @ISCSI_AHSTYPE_RLENGTH, align 4
  %23 = load %struct.iscsi_rlength_ahdr*, %struct.iscsi_rlength_ahdr** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_rlength_ahdr, %struct.iscsi_rlength_ahdr* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.iscsi_rlength_ahdr*, %struct.iscsi_rlength_ahdr** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_rlength_ahdr, %struct.iscsi_rlength_ahdr* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = call %struct.TYPE_4__* @scsi_in(%struct.scsi_cmnd* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load %struct.iscsi_rlength_ahdr*, %struct.iscsi_rlength_ahdr** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_rlength_ahdr, %struct.iscsi_rlength_ahdr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iscsi_rlength_ahdr*, %struct.iscsi_rlength_ahdr** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_rlength_ahdr, %struct.iscsi_rlength_ahdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = load %struct.iscsi_rlength_ahdr*, %struct.iscsi_rlength_ahdr** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_rlength_ahdr, %struct.iscsi_rlength_ahdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @be16_to_cpu(i32 %45)
  %47 = call i32 @ISCSI_DBG_SESSION(i32 %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %18, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.iscsi_rlength_ahdr* @iscsi_next_hdr(%struct.iscsi_task*) #1

declare dso_local i32 @iscsi_add_hdr(%struct.iscsi_task*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_4__* @scsi_in(%struct.scsi_cmnd*) #1

declare dso_local i32 @ISCSI_DBG_SESSION(i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
