; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_seqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_seqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Failed to load sequencer firmware file %s, error %d\0A\00", align 1
@SAS_RAZOR_SEQUENCER_FW_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't download sequencers for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_init_seqs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %6 = call i32 @asd_request_firmware(%struct.asd_ha_struct* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @SAS_RAZOR_SEQUENCER_FW_FILE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i8*, i32, ...) @asd_printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %16 = call i32 @asd_seq_download_seqs(%struct.asd_ha_struct* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %21 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_name(i32 %22)
  %24 = call i32 (i8*, i32, ...) @asd_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %14
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %28 = call i32 @asd_seq_setup_seqs(%struct.asd_ha_struct* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %19, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @asd_request_firmware(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_printk(i8*, i32, ...) #1

declare dso_local i32 @asd_seq_download_seqs(%struct.asd_ha_struct*) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @asd_seq_setup_seqs(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
