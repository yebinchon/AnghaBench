; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_write_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_write_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i8*, i32, i32 }
%struct.ubi_vid_hdr = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"write VID header to PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_VID_HDR_MAGIC = common dso_local global i32 0, align 4
@UBI_VERSION = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE_CRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_vid_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_vid_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ubi_vid_hdr* %2, %struct.ubi_vid_hdr** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @dbg_io(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ubi_assert(i32 %23)
  %25 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @paranoid_check_peb_ec_hdr(%struct.ubi_device* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %4, align 4
  br label %86

40:                                               ; preds = %21
  %41 = load i32, i32* @UBI_VID_HDR_MAGIC, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @UBI_VERSION, align 4
  %46 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @UBI_CRC32_INIT, align 4
  %49 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %50 = load i32, i32* @UBI_VID_HDR_SIZE_CRC, align 4
  %51 = call i32 @crc32(i32 %48, %struct.ubi_vid_hdr* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %59 = call i32 @paranoid_check_vid_hdr(%struct.ubi_device* %56, i32 %57, %struct.ubi_vid_hdr* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %40
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %86

65:                                               ; preds = %40
  %66 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %67 = bitcast %struct.ubi_vid_hdr* %66 to i8*
  %68 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %10, align 8
  %75 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %79 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ubi_io_write(%struct.ubi_device* %75, i8* %76, i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %65, %62, %38
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @paranoid_check_peb_ec_hdr(%struct.ubi_device*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @paranoid_check_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_io_write(%struct.ubi_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
