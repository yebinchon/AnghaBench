; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_aen_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_aen_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { %struct.TYPE_13__*, %struct.bfa_fcs_rport_s* }
%struct.TYPE_13__ = type { i64 }
%struct.bfa_fcs_rport_s = type { %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i32 }

@BFA_AEN_CAT_ITNIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_itnim_s*, i32)* @bfa_fcs_itnim_aen_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_aen_post(%struct.bfa_fcs_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfa_aen_entry_s*, align 8
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %8, i32 0, i32 1
  %10 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  store %struct.bfa_fcs_rport_s* %10, %struct.bfa_fcs_rport_s** %5, align 8
  %11 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.bfad_s*
  store %struct.bfad_s* %16, %struct.bfad_s** %6, align 8
  %17 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @BFA_FCS_PID_IS_WKA(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %25 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %26 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %24, %struct.bfa_aen_entry_s* %25)
  %27 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %28 = icmp ne %struct.bfa_aen_entry_s* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %77

30:                                               ; preds = %23
  %31 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %31, i32 0, i32 2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %39 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 8
  %42 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = call %struct.TYPE_12__* @bfa_fcs_get_base_port(%struct.TYPE_13__* %44)
  %46 = call i8* @bfa_fcs_lport_get_pwwn(%struct.TYPE_12__* %45)
  %47 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %48 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i8* %46, i8** %50, align 8
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call i8* @bfa_fcs_lport_get_pwwn(%struct.TYPE_12__* %53)
  %55 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %56 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  %59 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %63 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %7, align 8
  %67 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %68 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %69 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @BFA_AEN_CAT_ITNIM, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %66, %struct.bfad_s* %67, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %30, %29, %22
  ret void
}

declare dso_local i64 @BFA_FCS_PID_IS_WKA(i32) #1

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i8* @bfa_fcs_lport_get_pwwn(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @bfa_fcs_get_base_port(%struct.TYPE_13__*) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
