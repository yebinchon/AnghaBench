; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_host_queue_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_host_queue_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { i64, i64, i32, i32 }
%struct.scsi_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"scsi%d unblocking host at zero depth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.Scsi_Host*, %struct.scsi_device*)* @scsi_host_queue_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_host_queue_ready(%struct.request_queue* %0, %struct.Scsi_Host* %1, %struct.scsi_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %6, align 8
  store %struct.scsi_device* %2, %struct.scsi_device** %7, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %9 = call i64 @scsi_host_in_recovery(%struct.Scsi_Host* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

12:                                               ; preds = %3
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %32)
  br label %35

34:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %62

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %17, %12
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %38 = call i64 @scsi_host_is_busy(%struct.Scsi_Host* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 0
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %47 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %46, i32 0, i32 0
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %45, %40
  store i32 0, i32* %4, align 4
  br label %62

52:                                               ; preds = %36
  %53 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 0
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 0
  %60 = call i32 @list_del_init(i32* %59)
  br label %61

61:                                               ; preds = %57, %52
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %51, %34, %11
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @scsi_host_in_recovery(%struct.Scsi_Host*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @scsi_host_is_busy(%struct.Scsi_Host*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
