; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_host_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_host_template = type { i32 }
%struct.iscsi_host = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"iscsi_q_%d\00", align 1
@ISCSI_HOST_SETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Scsi_Host* @iscsi_host_alloc(%struct.scsi_host_template* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.iscsi_host*, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 32, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %10, i32 %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %17 = icmp ne %struct.Scsi_Host* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %21 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %20)
  store %struct.iscsi_host* %21, %struct.iscsi_host** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %26 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %33 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @create_singlethread_workqueue(i32 %34)
  %36 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %37 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %39 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  br label %57

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %46 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load i32, i32* @ISCSI_HOST_SETUP, align 4
  %49 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %50 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %52 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.iscsi_host*, %struct.iscsi_host** %9, align 8
  %54 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %53, i32 0, i32 0
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  store %struct.Scsi_Host* %56, %struct.Scsi_Host** %4, align 8
  br label %60

57:                                               ; preds = %42
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %59 = call i32 @scsi_host_put(%struct.Scsi_Host* %58)
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %4, align 8
  br label %60

60:                                               ; preds = %57, %44, %18
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  ret %struct.Scsi_Host* %61
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
