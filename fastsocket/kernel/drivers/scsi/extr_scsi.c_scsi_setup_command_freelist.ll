; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_setup_command_freelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_setup_command_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32*, i32, i64 }
%struct.scsi_cmnd = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_setup_command_freelist(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_DMA, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32* @scsi_get_host_cmd_pool(i32 %22)
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %14
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.scsi_cmnd* @scsi_host_alloc_command(%struct.Scsi_Host* %34, i32 %35)
  store %struct.scsi_cmnd* %36, %struct.scsi_cmnd** %4, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = icmp ne %struct.scsi_cmnd* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @scsi_put_host_cmd_pool(i32 %40)
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %33
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  %51 = call i32 @list_add(i32* %48, i32* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %39, %30
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @scsi_get_host_cmd_pool(i32) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_alloc_command(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_put_host_cmd_pool(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
