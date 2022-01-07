; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmd_build_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmd_build_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i32 }
%struct.ub_lun = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ub_scsi_cmd = type { i64, i32, i32*, i32, i32, i32 }
%struct.ub_request = type { i32, i32, %struct.request* }
%struct.request = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@UB_DIR_WRITE = common dso_local global i64 0, align 8
@UB_DIR_READ = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_lun*, %struct.ub_scsi_cmd*, %struct.ub_request*)* @ub_cmd_build_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_cmd_build_block(%struct.ub_dev* %0, %struct.ub_lun* %1, %struct.ub_scsi_cmd* %2, %struct.ub_request* %3) #0 {
  %5 = alloca %struct.ub_dev*, align 8
  %6 = alloca %struct.ub_lun*, align 8
  %7 = alloca %struct.ub_scsi_cmd*, align 8
  %8 = alloca %struct.ub_request*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %5, align 8
  store %struct.ub_lun* %1, %struct.ub_lun** %6, align 8
  store %struct.ub_scsi_cmd* %2, %struct.ub_scsi_cmd** %7, align 8
  store %struct.ub_request* %3, %struct.ub_request** %8, align 8
  %12 = load %struct.ub_request*, %struct.ub_request** %8, align 8
  %13 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %12, i32 0, i32 2
  %14 = load %struct.request*, %struct.request** %13, align 8
  store %struct.request* %14, %struct.request** %9, align 8
  %15 = load %struct.request*, %struct.request** %9, align 8
  %16 = call i64 @rq_data_dir(%struct.request* %15)
  %17 = load i64, i64* @WRITE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* @UB_DIR_WRITE, align 8
  %21 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %27

23:                                               ; preds = %4
  %24 = load i64, i64* @UB_DIR_READ, align 8
  %25 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.ub_request*, %struct.ub_request** %8, align 8
  %29 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ub_request*, %struct.ub_request** %8, align 8
  %37 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(i32 %35, i32 %38, i32 %44)
  %46 = load %struct.request*, %struct.request** %9, align 8
  %47 = call i32 @blk_rq_pos(%struct.request* %46)
  %48 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %49 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = lshr i32 %47, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = call i32 @blk_rq_sectors(%struct.request* %53)
  %55 = load %struct.ub_lun*, %struct.ub_lun** %6, align 8
  %56 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %54, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UB_DIR_READ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %27
  %66 = load i32, i32* @READ_10, align 4
  br label %69

67:                                               ; preds = %27
  %68 = load i32, i32* @WRITE_10, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = lshr i32 %75, 24
  %77 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = lshr i32 %81, 16
  %83 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = lshr i32 %87, 8
  %89 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = lshr i32 %98, 8
  %100 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  store i32 %104, i32* %108, align 4
  %109 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %110 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %109, i32 0, i32 3
  store i32 10, i32* %110, align 8
  %111 = load %struct.request*, %struct.request** %9, align 8
  %112 = call i32 @blk_rq_bytes(%struct.request* %111)
  %113 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  ret void
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
