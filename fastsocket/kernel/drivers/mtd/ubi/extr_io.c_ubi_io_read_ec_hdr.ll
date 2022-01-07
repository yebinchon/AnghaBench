; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_read_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_read_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_ec_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"read EC header from PEB %d\00", align 1
@UBI_EC_HDR_SIZE = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@UBI_EC_HDR_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"no EC header found at PEB %d, only 0xFF bytes\00", align 1
@UBI_IO_DEBUG = common dso_local global i64 0, align 8
@UBI_IO_PEB_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"bad magic number at PEB %d: %08x instead of %08x\00", align 1
@UBI_IO_BAD_EC_HDR = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_EC_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"bad EC header CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"validation failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_ec_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ec_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ubi_ec_hdr* %2, %struct.ubi_ec_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @dbg_io(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br label %25

25:                                               ; preds = %19, %4
  %26 = phi i1 [ false, %4 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubi_assert(i32 %27)
  %29 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %30 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %33 = call i32 @ubi_io_read(%struct.ubi_device* %29, %struct.ubi_ec_hdr* %30, i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @EBADMSG, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %155

47:                                               ; preds = %40, %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %51 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @be32_to_cpu(i32 %52)
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @UBI_EC_HDR_MAGIC, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @EBADMSG, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %64 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %65 = call i64 @check_pattern(%struct.ubi_ec_hdr* %63, i32 255, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %80

73:                                               ; preds = %67
  %74 = load i64, i64* @UBI_IO_DEBUG, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32, i32* @UBI_IO_PEB_EMPTY, align 4
  store i32 %81, i32* %5, align 4
  br label %155

82:                                               ; preds = %62, %57
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @UBI_EC_HDR_MAGIC, align 8
  %89 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %86, i64 %87, i64 %88)
  %90 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %91 = call i32 @ubi_dbg_dump_ec_hdr(%struct.ubi_ec_hdr* %90)
  br label %101

92:                                               ; preds = %82
  %93 = load i64, i64* @UBI_IO_DEBUG, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @UBI_EC_HDR_MAGIC, align 8
  %99 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %96, i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i32, i32* @UBI_IO_BAD_EC_HDR, align 4
  store i32 %102, i32* %5, align 4
  br label %155

103:                                              ; preds = %49
  %104 = load i32, i32* @UBI_CRC32_INIT, align 4
  %105 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %106 = load i32, i32* @UBI_EC_HDR_SIZE_CRC, align 4
  %107 = call i64 @crc32(i32 %104, %struct.ubi_ec_hdr* %105, i32 %106)
  store i64 %107, i64* %12, align 8
  %108 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %109 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @be32_to_cpu(i32 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 (i8*, i32, ...) @ubi_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %119, i64 %120, i64 %121)
  %123 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %124 = call i32 @ubi_dbg_dump_ec_hdr(%struct.ubi_ec_hdr* %123)
  br label %134

125:                                              ; preds = %115
  %126 = load i64, i64* @UBI_IO_DEBUG, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %129, i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %125
  br label %134

134:                                              ; preds = %133, %118
  %135 = load i32, i32* @UBI_IO_BAD_EC_HDR, align 4
  store i32 %135, i32* %5, align 4
  br label %155

136:                                              ; preds = %103
  %137 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %138 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %139 = call i32 @validate_ec_hdr(%struct.ubi_device* %137, %struct.ubi_ec_hdr* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @ubi_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %155

147:                                              ; preds = %136
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  br label %153

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i32 [ %151, %150 ], [ 0, %152 ]
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %142, %134, %101, %80, %45
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, %struct.ubi_ec_hdr*, i32, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @check_pattern(%struct.ubi_ec_hdr*, i32, i32) #1

declare dso_local i32 @ubi_warn(i8*, i32, ...) #1

declare dso_local i32 @dbg_msg(i8*, i32, ...) #1

declare dso_local i32 @ubi_dbg_dump_ec_hdr(%struct.ubi_ec_hdr*) #1

declare dso_local i64 @crc32(i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @validate_ec_hdr(%struct.ubi_device*, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @ubi_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
