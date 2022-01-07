; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_read_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_read_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i8*, i32, i32 }
%struct.ubi_vid_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"read VID header from PEB %d\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@UBI_VID_HDR_MAGIC = common dso_local global i64 0, align 8
@UBI_VID_HDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"no VID header found at PEB %d, only 0xFF bytes\00", align 1
@UBI_IO_DEBUG = common dso_local global i64 0, align 8
@UBI_IO_PEB_FREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"bad magic number at PEB %d: %08x instead of %08x\00", align 1
@UBI_IO_BAD_VID_HDR = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"bad CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"validation failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_vid_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_vid_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ubi_vid_hdr* %2, %struct.ubi_vid_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ false, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ubi_assert(i32 %28)
  %30 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %31 = bitcast %struct.ubi_vid_hdr* %30 to i8*
  %32 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %31 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %15, align 8
  %39 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %43 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ubi_io_read(%struct.ubi_device* %39, i8* %40, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %26
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @EBADMSG, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %170

62:                                               ; preds = %55, %51
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %26
  %65 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %66 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @be32_to_cpu(i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %118

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @EBADMSG, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %79 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %80 = call i64 @check_pattern(%struct.ubi_vid_hdr* %78, i32 255, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %95

88:                                               ; preds = %82
  %89 = load i64, i64* @UBI_IO_DEBUG, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i32, i32* @UBI_IO_PEB_FREE, align 4
  store i32 %96, i32* %5, align 4
  br label %170

97:                                               ; preds = %77, %72
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %104 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %101, i64 %102, i64 %103)
  %105 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %106 = call i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr* %105)
  br label %116

107:                                              ; preds = %97
  %108 = load i64, i64* @UBI_IO_DEBUG, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %114 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %111, i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* @UBI_IO_BAD_VID_HDR, align 4
  store i32 %117, i32* %5, align 4
  br label %170

118:                                              ; preds = %64
  %119 = load i32, i32* @UBI_CRC32_INIT, align 4
  %120 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %121 = load i32, i32* @UBI_VID_HDR_SIZE_CRC, align 4
  %122 = call i64 @crc32(i32 %119, %struct.ubi_vid_hdr* %120, i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %124 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @be32_to_cpu(i32 %125)
  store i64 %126, i64* %14, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %12, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %118
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %14, align 8
  %137 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %134, i64 %135, i64 %136)
  %138 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %139 = call i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr* %138)
  br label %149

140:                                              ; preds = %130
  %141 = load i64, i64* @UBI_IO_DEBUG, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %144, i64 %145, i64 %146)
  br label %148

148:                                              ; preds = %143, %140
  br label %149

149:                                              ; preds = %148, %133
  %150 = load i32, i32* @UBI_IO_BAD_VID_HDR, align 4
  store i32 %150, i32* %5, align 4
  br label %170

151:                                              ; preds = %118
  %152 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %153 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %154 = call i32 @validate_vid_hdr(%struct.ubi_device* %152, %struct.ubi_vid_hdr* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @ubi_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %170

162:                                              ; preds = %151
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  br label %168

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ]
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %157, %149, %116, %95, %60
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @check_pattern(%struct.ubi_vid_hdr*, i32, i32) #1

declare dso_local i32 @ubi_warn(i8*, i32, ...) #1

declare dso_local i32 @dbg_msg(i8*, i32, ...) #1

declare dso_local i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i64 @crc32(i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @validate_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
