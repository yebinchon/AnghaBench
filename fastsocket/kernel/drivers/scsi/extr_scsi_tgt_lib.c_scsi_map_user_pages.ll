; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_map_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_map_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tgt_cmd = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__, %struct.request* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%lx %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not handle request of size %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tgt_cmd*, %struct.scsi_cmnd*, i64, i32, i32)* @scsi_map_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_map_user_pages(%struct.scsi_tgt_cmd* %0, %struct.scsi_cmnd* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_tgt_cmd*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_queue*, align 8
  %13 = alloca %struct.request*, align 8
  %14 = alloca i32, align 4
  store %struct.scsi_tgt_cmd* %0, %struct.scsi_tgt_cmd** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load %struct.request*, %struct.request** %16, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 1
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  store %struct.request_queue* %19, %struct.request_queue** %12, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load %struct.request*, %struct.request** %21, align 8
  store %struct.request* %22, %struct.request** %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %27 = load %struct.request*, %struct.request** %13, align 8
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @blk_rq_map_user(%struct.request_queue* %26, %struct.request* %27, i32* null, i8* %29, i32 %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @eprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %5
  %40 = load %struct.request*, %struct.request** %13, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @scsi_init_io(%struct.scsi_cmnd* %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %52 = call i32 @scsi_release_buffers(%struct.scsi_cmnd* %51)
  br label %59

53:                                               ; preds = %39
  %54 = load %struct.request*, %struct.request** %13, align 8
  %55 = call i32 @blk_rq_bytes(%struct.request* %54)
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  store i32 0, i32* %6, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %7, align 8
  %61 = call i32 @scsi_unmap_user_pages(%struct.scsi_tgt_cmd* %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %53, %35
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @dprintk(i8*, i64, i32) #1

declare dso_local i32 @blk_rq_map_user(%struct.request_queue*, %struct.request*, i32*, i8*, i32, i32) #1

declare dso_local i32 @eprintk(i8*, i32) #1

declare dso_local i32 @scsi_init_io(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_release_buffers(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @scsi_unmap_user_pages(%struct.scsi_tgt_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
