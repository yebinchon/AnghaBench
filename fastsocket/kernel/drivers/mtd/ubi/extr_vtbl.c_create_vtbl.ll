; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_create_vtbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_create_vtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vid_hdr = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }
%struct.ubi_device = type { i32 }
%struct.ubi_scan_info = type { i32, i32 }
%struct.ubi_scan_volume = type { i32 }
%struct.ubi_scan_leb = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@create_vtbl.vid_hdr = internal global %struct.ubi_vid_hdr* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"create volume table (copy #%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_ID = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_COMPAT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_scan_info*, i32, i8*)* @create_vtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_vtbl(%struct.ubi_device* %0, %struct.ubi_scan_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_scan_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubi_scan_volume*, align 8
  %13 = alloca %struct.ubi_scan_leb*, align 8
  %14 = alloca %struct.ubi_scan_leb*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_scan_info* %1, %struct.ubi_scan_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store %struct.ubi_scan_leb* null, %struct.ubi_scan_leb** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @ubi_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device* %18, i32 %19)
  store %struct.ubi_vid_hdr* %20, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %21 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %22 = icmp ne %struct.ubi_vid_hdr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %139

26:                                               ; preds = %4
  %27 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %7, align 8
  %28 = load i32, i32* @UBI_LAYOUT_VOLUME_ID, align 4
  %29 = call %struct.ubi_scan_volume* @ubi_scan_find_sv(%struct.ubi_scan_info* %27, i32 %28)
  store %struct.ubi_scan_volume* %29, %struct.ubi_scan_volume** %12, align 8
  %30 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %12, align 8
  %31 = icmp ne %struct.ubi_scan_volume* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.ubi_scan_leb* @ubi_scan_find_seb(%struct.ubi_scan_volume* %33, i32 %34)
  store %struct.ubi_scan_leb* %35, %struct.ubi_scan_leb** %14, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %124, %36
  %38 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %39 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %7, align 8
  %40 = call %struct.ubi_scan_leb* @ubi_scan_get_free_peb(%struct.ubi_device* %38, %struct.ubi_scan_info* %39)
  store %struct.ubi_scan_leb* %40, %struct.ubi_scan_leb** %13, align 8
  %41 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %42 = call i64 @IS_ERR(%struct.ubi_scan_leb* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %46 = call i32 @PTR_ERR(%struct.ubi_scan_leb* %45)
  store i32 %46, i32* %10, align 4
  br label %134

47:                                               ; preds = %37
  %48 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %49 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %50 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @UBI_LAYOUT_VOLUME_ID, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %54 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @UBI_LAYOUT_VOLUME_COMPAT, align 4
  %56 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %57 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = call i8* @cpu_to_be32(i32 0)
  %59 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %60 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %62 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %61, i32 0, i32 3
  store i8* %58, i8** %62, align 8
  %63 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %64 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %63, i32 0, i32 4
  store i8* %58, i8** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %68 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %7, align 8
  %70 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = call i32 @cpu_to_be64(i32 %72)
  %74 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %75 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %77 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %78 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %81 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %76, i32 %79, %struct.ubi_vid_hdr* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %47
  br label %115

85:                                               ; preds = %47
  %86 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %89 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %92 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ubi_io_write_data(%struct.ubi_device* %86, i8* %87, i32 %90, i32 0, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %115

98:                                               ; preds = %85
  %99 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %100 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %7, align 8
  %101 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %102 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %105 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %108 = call i32 @ubi_scan_add_used(%struct.ubi_device* %99, %struct.ubi_scan_info* %100, i32 %103, i32 %106, %struct.ubi_vid_hdr* %107, i32 0)
  store i32 %108, i32* %10, align 4
  %109 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %110 = call i32 @kfree(%struct.ubi_scan_leb* %109)
  %111 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %112 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %113 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %111, %struct.ubi_vid_hdr* %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %139

115:                                              ; preds = %97, %84
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = icmp sle i32 %122, 5
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %126 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %7, align 8
  %129 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %128, i32 0, i32 0
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  br label %37

131:                                              ; preds = %120, %115
  %132 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %13, align 8
  %133 = call i32 @kfree(%struct.ubi_scan_leb* %132)
  br label %134

134:                                              ; preds = %131, %44
  %135 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %136 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** @create_vtbl.vid_hdr, align 8
  %137 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %135, %struct.ubi_vid_hdr* %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %134, %98, %23
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @ubi_msg(i8*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_scan_volume* @ubi_scan_find_sv(%struct.ubi_scan_info*, i32) #1

declare dso_local %struct.ubi_scan_leb* @ubi_scan_find_seb(%struct.ubi_scan_volume*, i32) #1

declare dso_local %struct.ubi_scan_leb* @ubi_scan_get_free_peb(%struct.ubi_device*, %struct.ubi_scan_info*) #1

declare dso_local i64 @IS_ERR(%struct.ubi_scan_leb*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_scan_leb*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_scan_add_used(%struct.ubi_device*, %struct.ubi_scan_info*, i32, i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @kfree(%struct.ubi_scan_leb*) #1

declare dso_local i32 @ubi_free_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
