; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_num_of_discovered_ports_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_num_of_discovered_ports_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s*, %struct.bfad_port_s* }
%struct.bfad_s = type { i32 }
%struct.bfad_port_s = type { i32 }
%struct.bfa_rport_qualifier_s = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bfad_im_num_of_discovered_ports_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_num_of_discovered_ports_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.bfad_im_port_s*, align 8
  %10 = alloca %struct.bfad_port_s*, align 8
  %11 = alloca %struct.bfad_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfa_rport_qualifier_s*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %8, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %22, %struct.bfad_im_port_s** %9, align 8
  %23 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %9, align 8
  %24 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %23, i32 0, i32 1
  %25 = load %struct.bfad_port_s*, %struct.bfad_port_s** %24, align 8
  store %struct.bfad_port_s* %25, %struct.bfad_port_s** %10, align 8
  %26 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %9, align 8
  %27 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %26, i32 0, i32 0
  %28 = load %struct.bfad_s*, %struct.bfad_s** %27, align 8
  store %struct.bfad_s* %28, %struct.bfad_s** %11, align 8
  store i32 2048, i32* %12, align 4
  store %struct.bfa_rport_qualifier_s* null, %struct.bfa_rport_qualifier_s** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.bfa_rport_qualifier_s* @kzalloc(i32 %32, i32 %33)
  store %struct.bfa_rport_qualifier_s* %34, %struct.bfa_rport_qualifier_s** %13, align 8
  %35 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %13, align 8
  %36 = icmp eq %struct.bfa_rport_qualifier_s* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %3
  %42 = load %struct.bfad_s*, %struct.bfad_s** %11, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 0
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.bfad_port_s*, %struct.bfad_port_s** %10, align 8
  %47 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %13, align 8
  %50 = call i32 @bfa_fcs_lport_get_rport_quals(i32 %48, %struct.bfa_rport_qualifier_s* %49, i32* %12)
  %51 = load %struct.bfad_s*, %struct.bfad_s** %11, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 0
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %13, align 8
  %56 = call i32 @kfree(%struct.bfa_rport_qualifier_s* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %41, %37
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.bfa_rport_qualifier_s* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcs_lport_get_rport_quals(i32, %struct.bfa_rport_qualifier_s*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.bfa_rport_qualifier_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
