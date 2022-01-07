; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_state_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_state_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i32, i64, %struct.ub_scsi_cmd }
%struct.ub_scsi_cmd = type { i64*, i32, i32, i32, i64, %struct.ub_scsi_cmd*, i32, i32, i8*, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

@REQUEST_SENSE = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@UB_SENSE_SIZE = common dso_local global i8* null, align 8
@UB_DIR_READ = common dso_local global i32 0, align 4
@UB_CMDST_INIT = common dso_local global i32 0, align 4
@UB_MAX_REQ_SG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ub_top_sense_done = common dso_local global i32 0, align 4
@UB_CMDST_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_scsi_cmd*)* @ub_state_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_state_sense(%struct.ub_dev* %0, %struct.ub_scsi_cmd* %1) #0 {
  %3 = alloca %struct.ub_dev*, align 8
  %4 = alloca %struct.ub_scsi_cmd*, align 8
  %5 = alloca %struct.ub_scsi_cmd*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %3, align 8
  store %struct.ub_scsi_cmd* %1, %struct.ub_scsi_cmd** %4, align 8
  %8 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REQUEST_SENSE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EPIPE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %19, i32 0, i32 2
  store %struct.ub_scsi_cmd* %20, %struct.ub_scsi_cmd** %5, align 8
  %21 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %22 = call i32 @memset(%struct.ub_scsi_cmd* %21, i32 0, i32 72)
  %23 = load i64, i64* @REQUEST_SENSE, align 8
  %24 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %23, i64* %27, align 8
  %28 = load i8*, i8** @UB_SENSE_SIZE, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  store i64 %29, i64* %33, align 8
  %34 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %34, i32 0, i32 1
  store i32 6, i32* %35, align 8
  %36 = load i32, i32* @UB_DIR_READ, align 4
  %37 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @UB_CMDST_INIT, align 4
  %40 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %44, i32 0, i32 9
  %46 = load %struct.scatterlist*, %struct.scatterlist** %45, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i64 0
  store %struct.scatterlist* %47, %struct.scatterlist** %6, align 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %49 = load i32, i32* @UB_MAX_REQ_SG, align 4
  %50 = call i32 @sg_init_table(%struct.scatterlist* %48, i32 %49)
  %51 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %52 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %53 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @virt_to_page(i64 %54)
  %56 = load i8*, i8** @UB_SENSE_SIZE, align 8
  %57 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %58 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = call i32 @sg_set_page(%struct.scatterlist* %51, i32 %55, i8* %56, i64 %63)
  %65 = load i8*, i8** @UB_SENSE_SIZE, align 8
  %66 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ub_top_sense_done, align 4
  %74 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %77 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %77, i32 0, i32 5
  store %struct.ub_scsi_cmd* %76, %struct.ub_scsi_cmd** %78, align 8
  %79 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %80 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @UB_CMDST_SENSE, align 4
  %87 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %90 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %91 = call i32 @ub_cmdq_insert(%struct.ub_dev* %89, %struct.ub_scsi_cmd* %90)
  br label %97

92:                                               ; preds = %15
  %93 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %94 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @ub_state_done(%struct.ub_dev* %93, %struct.ub_scsi_cmd* %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %18
  ret void
}

declare dso_local i32 @memset(%struct.ub_scsi_cmd*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i8*, i64) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @ub_cmdq_insert(%struct.ub_dev*, %struct.ub_scsi_cmd*) #1

declare dso_local i32 @ub_state_done(%struct.ub_dev*, %struct.ub_scsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
