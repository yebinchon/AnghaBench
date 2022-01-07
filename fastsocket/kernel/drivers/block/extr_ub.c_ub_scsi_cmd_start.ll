; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_scsi_cmd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_scsi_cmd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.bulk_cb_wrap }
%struct.TYPE_4__ = type { i64 }
%struct.bulk_cb_wrap = type { i32, i32, i32, i32, i8*, i32, i8* }
%struct.ub_scsi_cmd = type { i64, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@UB_SENSE_SIZE = common dso_local global i32 0, align 4
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@UB_DIR_READ = common dso_local global i64 0, align 8
@UB_MAX_CDB_SIZE = common dso_local global i32 0, align 4
@US_BULK_CB_WRAP_LEN = common dso_local global i32 0, align 4
@ub_urb_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@UB_URB_TIMEOUT = common dso_local global i64 0, align 8
@UB_CMDST_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_dev*, %struct.ub_scsi_cmd*)* @ub_scsi_cmd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ub_scsi_cmd_start(%struct.ub_dev* %0, %struct.ub_scsi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_dev*, align 8
  %5 = alloca %struct.ub_scsi_cmd*, align 8
  %6 = alloca %struct.bulk_cb_wrap*, align 8
  %7 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %4, align 8
  store %struct.ub_scsi_cmd* %1, %struct.ub_scsi_cmd** %5, align 8
  %8 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %9 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %8, i32 0, i32 7
  store %struct.bulk_cb_wrap* %9, %struct.bulk_cb_wrap** %6, align 8
  %10 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %10, i32 0, i32 6
  %12 = load i32, i32* @UB_SENSE_SIZE, align 4
  %13 = call i32 @memset(i32* %11, i32 0, i32 %12)
  %14 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %17 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %22 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %28 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UB_DIR_READ, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 128, i32 0
  %36 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %37 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ 0, %48 ]
  %51 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %52 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %57 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %59 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UB_MAX_CDB_SIZE, align 4
  %65 = call i32 @memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %67 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @UB_INIT_COMPLETION(i32 %68)
  %70 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %71 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %74 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %76 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %75, i32 0, i32 2
  %77 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %78 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %81 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %6, align 8
  %84 = load i32, i32* @US_BULK_CB_WRAP_LEN, align 4
  %85 = load i32, i32* @ub_urb_complete, align 4
  %86 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %87 = call i32 @usb_fill_bulk_urb(i32* %76, i32 %79, i32 %82, %struct.bulk_cb_wrap* %83, i32 %84, i32 %85, %struct.ub_dev* %86)
  %88 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %89 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %88, i32 0, i32 2
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call i32 @usb_submit_urb(i32* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %49
  %94 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %95 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %94, i32 0, i32 1
  %96 = call i32 @ub_complete(i32* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %111

98:                                               ; preds = %49
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i64, i64* @UB_URB_TIMEOUT, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %103 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %106 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %105, i32 0, i32 0
  %107 = call i32 @add_timer(%struct.TYPE_4__* %106)
  %108 = load i32, i32* @UB_CMDST_CMD, align 4
  %109 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %98, %93
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @UB_INIT_COMPLETION(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, %struct.bulk_cb_wrap*, i32, i32, %struct.ub_dev*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @ub_complete(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
