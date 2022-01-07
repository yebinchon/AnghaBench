; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmd_build_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmd_build_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i32 }
%struct.ub_lun = type { i32 }
%struct.ub_scsi_cmd = type { i32, i32, i32, i64, i32, i32*, i32 }
%struct.ub_request = type { i32, i32, %struct.request* }
%struct.request = type { i32, i32, i32 }

@UB_DIR_NONE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@UB_DIR_WRITE = common dso_local global i32 0, align 4
@UB_DIR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_lun*, %struct.ub_scsi_cmd*, %struct.ub_request*)* @ub_cmd_build_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_cmd_build_packet(%struct.ub_dev* %0, %struct.ub_lun* %1, %struct.ub_scsi_cmd* %2, %struct.ub_request* %3) #0 {
  %5 = alloca %struct.ub_dev*, align 8
  %6 = alloca %struct.ub_lun*, align 8
  %7 = alloca %struct.ub_scsi_cmd*, align 8
  %8 = alloca %struct.ub_request*, align 8
  %9 = alloca %struct.request*, align 8
  store %struct.ub_dev* %0, %struct.ub_dev** %5, align 8
  store %struct.ub_lun* %1, %struct.ub_lun** %6, align 8
  store %struct.ub_scsi_cmd* %2, %struct.ub_scsi_cmd** %7, align 8
  store %struct.ub_request* %3, %struct.ub_request** %8, align 8
  %10 = load %struct.ub_request*, %struct.ub_request** %8, align 8
  %11 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %10, i32 0, i32 2
  %12 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %12, %struct.request** %9, align 8
  %13 = load %struct.request*, %struct.request** %9, align 8
  %14 = call i64 @blk_rq_bytes(%struct.request* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @UB_DIR_NONE, align 4
  %18 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.request*, %struct.request** %9, align 8
  %22 = call i64 @rq_data_dir(%struct.request* %21)
  %23 = load i64, i64* @WRITE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @UB_DIR_WRITE, align 4
  %27 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @UB_DIR_READ, align 4
  %31 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.ub_request*, %struct.ub_request** %8, align 8
  %36 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ub_request*, %struct.ub_request** %8, align 8
  %44 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i32* %42, i32 %45, i32 %51)
  %53 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %53, i32 0, i32 4
  %55 = load %struct.request*, %struct.request** %9, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.request*, %struct.request** %9, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32* %54, i32 %57, i32 %60)
  %62 = load %struct.request*, %struct.request** %9, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.request*, %struct.request** %9, align 8
  %68 = call i64 @blk_rq_bytes(%struct.request* %67)
  %69 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.request*, %struct.request** %9, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  ret void
}

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
