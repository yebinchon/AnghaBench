; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_itnim_s = type { i32, i32, i32, i32, i32, i32, %struct.bfad_im_s* }
%struct.bfad_im_s = type { i32 }
%struct.bfad_port_s = type { i32 }

@ITNIM_STATE_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcb_itnim_online(%struct.bfad_itnim_s* %0) #0 {
  %2 = alloca %struct.bfad_itnim_s*, align 8
  %3 = alloca %struct.bfad_port_s*, align 8
  %4 = alloca %struct.bfad_im_s*, align 8
  store %struct.bfad_itnim_s* %0, %struct.bfad_itnim_s** %2, align 8
  %5 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %5, i32 0, i32 6
  %7 = load %struct.bfad_im_s*, %struct.bfad_im_s** %6, align 8
  store %struct.bfad_im_s* %7, %struct.bfad_im_s** %4, align 8
  %8 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %8, i32 0, i32 4
  %10 = call i32 @bfa_fcs_itnim_get_halitn(i32* %9)
  %11 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %13, i32 0, i32 4
  %15 = call %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(i32* %14)
  store %struct.bfad_port_s* %15, %struct.bfad_port_s** %3, align 8
  %16 = load i32, i32* @ITNIM_STATE_ONLINE, align 4
  %17 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.bfad_port_s*, %struct.bfad_port_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.bfad_im_s*, %struct.bfad_im_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %2, align 8
  %35 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %34, i32 0, i32 1
  %36 = call i32 @queue_work(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @bfa_fcs_itnim_get_halitn(i32*) #1

declare dso_local %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
