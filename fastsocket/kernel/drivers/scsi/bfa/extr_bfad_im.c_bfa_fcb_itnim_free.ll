; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_fcb_itnim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32 }
%struct.bfad_itnim_s = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.bfad_im_s* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bfad_im_s = type { i32 }
%struct.bfad_port_s = type { %struct.TYPE_4__* }

@ITNIM_STATE_ONLINE = common dso_local global i64 0, align 8
@ITNIM_STATE_OFFLINE_PENDING = common dso_local global i64 0, align 8
@ITNIM_STATE_FREE = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ITNIM FREE scsi%d: FCID: %s WWPN: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcb_itnim_free(%struct.bfad_s* %0, %struct.bfad_itnim_s* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca %struct.bfad_itnim_s*, align 8
  %5 = alloca %struct.bfad_port_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.bfad_im_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store %struct.bfad_itnim_s* %1, %struct.bfad_itnim_s** %4, align 8
  %11 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %11, i32 0, i32 5
  %13 = load %struct.bfad_im_s*, %struct.bfad_im_s** %12, align 8
  store %struct.bfad_im_s* %13, %struct.bfad_im_s** %10, align 8
  %14 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ITNIM_STATE_ONLINE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ITNIM_STATE_OFFLINE_PENDING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i64, i64* @ITNIM_STATE_FREE, align 8
  %33 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %35, i32 0, i32 3
  %37 = call %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(i32* %36)
  store %struct.bfad_port_s* %37, %struct.bfad_port_s** %5, align 8
  %38 = load %struct.bfad_port_s*, %struct.bfad_port_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %41, i32 0, i32 4
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %43, i32 0, i32 3
  %45 = call i32 @bfa_fcs_itnim_get_pwwn(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %46, i32 0, i32 3
  %48 = call i32 @bfa_fcs_itnim_get_fcid(i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @wwn2str(i8* %49, i32 %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @fcid2str(i8* %52, i32 %53)
  %55 = load i32, i32* @KERN_INFO, align 4
  %56 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %57 = load i32, i32* @bfa_log_level, align 4
  %58 = load %struct.bfad_port_s*, %struct.bfad_port_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %67 = call i32 @BFA_LOG(i32 %55, %struct.bfad_s* %56, i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %65, i8* %66)
  %68 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %69 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %31
  %73 = load %struct.bfad_im_s*, %struct.bfad_im_s** %10, align 8
  %74 = getelementptr inbounds %struct.bfad_im_s, %struct.bfad_im_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %77 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %76, i32 0, i32 2
  %78 = call i32 @queue_work(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %72, %31
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bfad_port_s* @bfa_fcs_itnim_get_drvport(i32*) #1

declare dso_local i32 @bfa_fcs_itnim_get_pwwn(i32*) #1

declare dso_local i32 @bfa_fcs_itnim_get_fcid(i32*) #1

declare dso_local i32 @wwn2str(i8*, i32) #1

declare dso_local i32 @fcid2str(i8*, i32) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
