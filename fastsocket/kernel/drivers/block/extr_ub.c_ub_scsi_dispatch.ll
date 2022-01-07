; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_scsi_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_scsi_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i32, i32, i32 }
%struct.ub_scsi_cmd = type { i64, i32, i32 (%struct.ub_dev.0*, %struct.ub_scsi_cmd*)* }
%struct.ub_dev.0 = type opaque

@UB_CMDST_DONE = common dso_local global i64 0, align 8
@UB_CMDST_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*)* @ub_scsi_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_scsi_dispatch(%struct.ub_dev* %0) #0 {
  %2 = alloca %struct.ub_dev*, align 8
  %3 = alloca %struct.ub_scsi_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %2, align 8
  br label %5

5:                                                ; preds = %65, %1
  %6 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %7 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %12 = call %struct.ub_scsi_cmd* @ub_cmdq_peek(%struct.ub_dev* %11)
  store %struct.ub_scsi_cmd* %12, %struct.ub_scsi_cmd** %3, align 8
  %13 = icmp ne %struct.ub_scsi_cmd* %12, null
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ false, %5 ], [ %13, %10 ]
  br i1 %15, label %16, label %66

16:                                               ; preds = %14
  %17 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UB_CMDST_DONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %24 = call i32 @ub_cmdq_pop(%struct.ub_dev* %23)
  %25 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %25, i32 0, i32 2
  %27 = load i32 (%struct.ub_dev.0*, %struct.ub_scsi_cmd*)*, i32 (%struct.ub_dev.0*, %struct.ub_scsi_cmd*)** %26, align 8
  %28 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %29 = bitcast %struct.ub_dev* %28 to %struct.ub_dev.0*
  %30 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %31 = call i32 %27(%struct.ub_dev.0* %29, %struct.ub_scsi_cmd* %30)
  br label %65

32:                                               ; preds = %16
  %33 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UB_CMDST_INIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %40 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %41 = call i32 @ub_scsi_cmd_start(%struct.ub_dev* %39, %struct.ub_scsi_cmd* %40)
  store i32 %41, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %66

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* @UB_CMDST_DONE, align 8
  %49 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %64

51:                                               ; preds = %32
  %52 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %53 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %52, i32 0, i32 1
  %54 = call i32 @ub_is_completed(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %66

57:                                               ; preds = %51
  %58 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %59 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %58, i32 0, i32 0
  %60 = call i32 @del_timer(i32* %59)
  %61 = load %struct.ub_dev*, %struct.ub_dev** %2, align 8
  %62 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %3, align 8
  %63 = call i32 @ub_scsi_urb_compl(%struct.ub_dev* %61, %struct.ub_scsi_cmd* %62)
  br label %64

64:                                               ; preds = %57, %44
  br label %65

65:                                               ; preds = %64, %22
  br label %5

66:                                               ; preds = %56, %43, %14
  ret void
}

declare dso_local %struct.ub_scsi_cmd* @ub_cmdq_peek(%struct.ub_dev*) #1

declare dso_local i32 @ub_cmdq_pop(%struct.ub_dev*) #1

declare dso_local i32 @ub_scsi_cmd_start(%struct.ub_dev*, %struct.ub_scsi_cmd*) #1

declare dso_local i32 @ub_is_completed(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ub_scsi_urb_compl(%struct.ub_dev*, %struct.ub_scsi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
