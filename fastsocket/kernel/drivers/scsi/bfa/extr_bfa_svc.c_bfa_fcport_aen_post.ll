; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_aen_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_aen_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BFA_AEN_CAT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_aen_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_aen_post(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfa_aen_entry_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bfad_s*
  store %struct.bfad_s* %12, %struct.bfad_s** %5, align 8
  %13 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %14 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %15 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %13, %struct.bfa_aen_entry_s* %14)
  %16 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %17 = icmp ne %struct.bfa_aen_entry_s* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @bfa_get_type(%struct.TYPE_6__* %22)
  %24 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %36 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %37 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @BFA_AEN_CAT_PORT, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %35, %struct.bfad_s* %36, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i32 @bfa_get_type(%struct.TYPE_6__*) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
