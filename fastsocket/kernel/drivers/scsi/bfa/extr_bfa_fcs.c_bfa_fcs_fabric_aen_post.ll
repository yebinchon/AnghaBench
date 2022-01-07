; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_aen_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_aen_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@BFA_AEN_CAT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, i32)* @bfa_fcs_fabric_aen_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_aen_post(%struct.bfa_fcs_lport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfa_aen_entry_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfad_s*
  store %struct.bfad_s* %14, %struct.bfad_s** %5, align 8
  %15 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %16 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %17 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %15, %struct.bfa_aen_entry_s* %16)
  %18 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %19 = icmp ne %struct.bfa_aen_entry_s* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %23 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %22)
  %24 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %29 = call i32 @bfa_fcs_lport_get_fabric_name(%struct.bfa_fcs_lport_s* %28)
  %30 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %35 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @BFA_AEN_CAT_PORT, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %34, %struct.bfad_s* %35, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fabric_name(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
