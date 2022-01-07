; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_flogi_reg_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_flogi_reg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, i32*, %struct.TYPE_4__, %struct.fc_lport*, i64, %struct.TYPE_3__, %struct.vnic_wq_copy* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.fc_lport = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vnic_wq_copy = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FCPIO_FLOGI_REG_DEF_DEST = common dso_local global i32 0, align 4
@FCPIO_FLOGI_REG_GW_DEST = common dso_local global i32 0, align 4
@VFCF_FIP_CAPABLE = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"FLOGI FIP reg issued fcid %x src %pM dest %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"FLOGI reg issued fcid %x map %d dest %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_flogi_reg_handler(%struct.fnic* %0, i32 %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnic_wq_copy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.fnic*, %struct.fnic** %3, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 6
  %14 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %13, align 8
  %15 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %14, i64 0
  store %struct.vnic_wq_copy* %15, %struct.vnic_wq_copy** %5, align 8
  %16 = load %struct.fnic*, %struct.fnic** %3, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 3
  %18 = load %struct.fc_lport*, %struct.fc_lport** %17, align 8
  store %struct.fc_lport* %18, %struct.fc_lport** %7, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.fnic*, %struct.fnic** %3, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %30 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %29)
  %31 = load %struct.fnic*, %struct.fnic** %3, align 8
  %32 = getelementptr inbounds %struct.fnic, %struct.fnic* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.fnic*, %struct.fnic** %3, align 8
  %39 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %40 = call i32 @free_wq_copy_descs(%struct.fnic* %38, %struct.vnic_wq_copy* %39)
  br label %41

41:                                               ; preds = %37, %2
  %42 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %43 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %124

48:                                               ; preds = %41
  %49 = load %struct.fnic*, %struct.fnic** %3, align 8
  %50 = getelementptr inbounds %struct.fnic, %struct.fnic* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memset(i32* %22, i32 255, i32 %55)
  %57 = load i32, i32* @FCPIO_FLOGI_REG_DEF_DEST, align 4
  store i32 %57, i32* %6, align 4
  br label %66

58:                                               ; preds = %48
  %59 = load %struct.fnic*, %struct.fnic** %3, align 8
  %60 = getelementptr inbounds %struct.fnic, %struct.fnic* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy(i32* %22, i32 %62, i32 %63)
  %65 = load i32, i32* @FCPIO_FLOGI_REG_GW_DEST, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.fnic*, %struct.fnic** %3, align 8
  %68 = getelementptr inbounds %struct.fnic, %struct.fnic* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VFCF_FIP_CAPABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %66
  %75 = load %struct.fnic*, %struct.fnic** %3, align 8
  %76 = getelementptr inbounds %struct.fnic, %struct.fnic* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %74
  %81 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %82 = load i32, i32* @SCSI_NO_TAG, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.fnic*, %struct.fnic** %3, align 8
  %85 = getelementptr inbounds %struct.fnic, %struct.fnic* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %88 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %91 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @fnic_queue_wq_copy_desc_fip_reg(%struct.vnic_wq_copy* %81, i32 %82, i32 %83, i32* %22, i64 %86, i32 %89, i32 %92)
  %94 = load i32, i32* @KERN_DEBUG, align 4
  %95 = load %struct.fnic*, %struct.fnic** %3, align 8
  %96 = getelementptr inbounds %struct.fnic, %struct.fnic* %95, i32 0, i32 3
  %97 = load %struct.fc_lport*, %struct.fc_lport** %96, align 8
  %98 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.fnic*, %struct.fnic** %3, align 8
  %102 = getelementptr inbounds %struct.fnic, %struct.fnic* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @FNIC_SCSI_DBG(i32 %94, i32 %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %100, i64 %103, i32* %22)
  br label %123

105:                                              ; preds = %74, %66
  %106 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %5, align 8
  %107 = load i32, i32* @SCSI_NO_TAG, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @fnic_queue_wq_copy_desc_flogi_reg(%struct.vnic_wq_copy* %106, i32 %107, i32 %108, i32 %109, i32* %22)
  %111 = load i32, i32* @KERN_DEBUG, align 4
  %112 = load %struct.fnic*, %struct.fnic** %3, align 8
  %113 = getelementptr inbounds %struct.fnic, %struct.fnic* %112, i32 0, i32 3
  %114 = load %struct.fc_lport*, %struct.fc_lport** %113, align 8
  %115 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.fnic*, %struct.fnic** %3, align 8
  %119 = getelementptr inbounds %struct.fnic, %struct.fnic* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @FNIC_SCSI_DBG(i32 %111, i32 %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %121, i32* %22)
  br label %123

123:                                              ; preds = %105, %80
  br label %124

124:                                              ; preds = %123, %45
  %125 = load %struct.fnic*, %struct.fnic** %3, align 8
  %126 = getelementptr inbounds %struct.fnic, %struct.fnic* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* %10, align 4
  %132 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %132)
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #2

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @fnic_queue_wq_copy_desc_fip_reg(%struct.vnic_wq_copy*, i32, i32, i32*, i64, i32, i32) #2

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, i32, i64, i32*) #2

declare dso_local i32 @fnic_queue_wq_copy_desc_flogi_reg(%struct.vnic_wq_copy*, i32, i32, i32, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
