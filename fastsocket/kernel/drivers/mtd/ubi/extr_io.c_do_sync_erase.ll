; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_do_sync_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_do_sync_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.erase_info*)* }
%struct.erase_info = type { i32, i32, i64, i64, i32, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [13 x i8] c"erase PEB %d\00", align 1
@erase_callback = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error %d while erasing PEB %d, retry\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot erase PEB %d, error %d\00", align 1
@MTD_ERASE_DONE = common dso_local global i64 0, align 8
@MTD_ERASE_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"interrupted PEB %d erasure\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"error while erasing PEB %d, retry\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot erase PEB %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"cannot erase PEB %d (emulated)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @do_sync_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sync_erase(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.erase_info, align 8
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, i32, ...) @dbg_io(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %92, %49, %2
  %13 = call i32 @init_waitqueue_head(i32* %9)
  %14 = call i32 @memset(%struct.erase_info* %8, i32 0, i32 40)
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 5
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @erase_callback, align 4
  %30 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = ptrtoint i32* %9 to i64
  %32 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 2
  store i64 %31, i64* %32, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_2__*, %struct.erase_info*)*, i32 (%struct.TYPE_2__*, %struct.erase_info*)** %36, align 8
  %38 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %39 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_2__* %40, %struct.erase_info* %8)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %12
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @UBI_IO_RETRIES, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, i32, ...) @dbg_io(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = call i32 (...) @yield()
  br label %12

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, i32, ...) @ubi_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  %58 = call i32 (...) @ubi_dbg_dump_stack()
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %133

60:                                               ; preds = %12
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MTD_ERASE_DONE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MTD_ERASE_FAILED, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %66, %60
  %72 = phi i1 [ true, %60 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @wait_event_interruptible(i32 %61, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i8*, i32, ...) @ubi_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINTR, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %133

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MTD_ERASE_FAILED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @UBI_IO_RETRIES, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i8*, i32, ...) @dbg_io(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = call i32 (...) @yield()
  br label %12

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i8*, i32, ...) @ubi_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @ubi_dbg_dump_stack()
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %133

102:                                              ; preds = %82
  %103 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %106 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ubi_dbg_check_all_ff(%struct.ubi_device* %103, i32 %104, i32 0, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load i32, i32* %6, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %116, %114 ], [ %118, %117 ]
  store i32 %120, i32* %3, align 4
  br label %133

121:                                              ; preds = %102
  %122 = call i64 (...) @ubi_dbg_is_erase_failure()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @dbg_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %133

132:                                              ; preds = %124, %121
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %127, %119, %96, %77, %54
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @dbg_io(i8*, i32, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(%struct.erase_info*, i32, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @ubi_err(i8*, i32, ...) #1

declare dso_local i32 @ubi_dbg_dump_stack(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ubi_dbg_check_all_ff(%struct.ubi_device*, i32, i32, i32) #1

declare dso_local i64 @ubi_dbg_is_erase_failure(...) #1

declare dso_local i32 @dbg_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
