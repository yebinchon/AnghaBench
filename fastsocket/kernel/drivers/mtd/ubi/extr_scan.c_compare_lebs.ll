; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_compare_lebs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_compare_lebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_scan_leb = type { i64, i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unsupported on-flash UBI format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"second PEB %d is newer, copy_flag is unset\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"VID of PEB %d header is bad, but it was OK earlier\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"first PEB %d is newer, copy_flag is unset\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"PEB %d CRC error: calculated %#08x, must be %#08x\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PEB %d CRC is OK\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"second PEB %d is newer, copy_flag is set\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"first PEB %d is newer, copy_flag is set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_scan_leb*, i32, %struct.ubi_vid_hdr*)* @compare_lebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_lebs(%struct.ubi_device* %0, %struct.ubi_scan_leb* %1, i32 %2, %struct.ubi_vid_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_scan_leb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_vid_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ubi_vid_hdr*, align 8
  %19 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_scan_leb* %1, %struct.ubi_scan_leb** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ubi_vid_hdr* %3, %struct.ubi_vid_hdr** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.ubi_vid_hdr* null, %struct.ubi_vid_hdr** %18, align 8
  %20 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64_to_cpu(i32 %22)
  store i64 %23, i64* %19, align 8
  %24 = load i64, i64* %19, align 8
  %25 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %7, align 8
  %26 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = call i32 @ubi_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %189

33:                                               ; preds = %4
  %34 = load i64, i64* %19, align 8
  %35 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %7, align 8
  %36 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 1, i32* %5, align 4
  br label %189

52:                                               ; preds = %44
  br label %99

53:                                               ; preds = %33
  %54 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %7, align 8
  %55 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device* %57, i32 %58)
  store %struct.ubi_vid_hdr* %59, %struct.ubi_vid_hdr** %18, align 8
  %60 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %61 = icmp ne %struct.ubi_vid_hdr* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %189

65:                                               ; preds = %53
  %66 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %69 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %66, i32 %67, %struct.ubi_vid_hdr* %68, i32 0)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1, i32* %14, align 4
  br label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dbg_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %184

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %89 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %184

97:                                               ; preds = %87
  %98 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  store %struct.ubi_vid_hdr* %98, %struct.ubi_vid_hdr** %9, align 8
  br label %99

99:                                               ; preds = %97, %52
  %100 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %101 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @be32_to_cpu(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i8* @vmalloc(i32 %105)
  store i8* %106, i8** %10, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %184

112:                                              ; preds = %99
  %113 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ubi_io_read_data(%struct.ubi_device* %113, i8* %114, i32 %115, i32 0, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @EBADMSG, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %181

130:                                              ; preds = %124, %120, %112
  %131 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %132 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @be32_to_cpu(i32 %133)
  store i8* %134, i8** %16, align 8
  %135 = load i32, i32* @UBI_CRC32_INIT, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i8* @crc32(i32 %135, i8* %136, i32 %137)
  store i8* %138, i8** %17, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = icmp ne i8* %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %130
  %143 = load i32, i32* %8, align 4
  %144 = load i8*, i8** %17, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %143, i8* %144, i8* %145)
  store i32 1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %13, align 4
  br label %159

151:                                              ; preds = %130
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %151, %142
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @vfree(i8* %160)
  %162 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %163 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %164 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %162, %struct.ubi_vid_hdr* %163)
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  br label %173

170:                                              ; preds = %159
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = shl i32 %175, 1
  %177 = or i32 %174, %176
  %178 = load i32, i32* %15, align 4
  %179 = shl i32 %178, 2
  %180 = or i32 %177, %179
  store i32 %180, i32* %5, align 4
  br label %189

181:                                              ; preds = %129
  %182 = load i8*, i8** %10, align 8
  %183 = call i32 @vfree(i8* %182)
  br label %184

184:                                              ; preds = %181, %109, %92, %85
  %185 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %186 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %187 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %185, %struct.ubi_vid_hdr* %186)
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %184, %173, %62, %49, %29
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @ubi_err(i8*) #1

declare dso_local i32 @dbg_bld(i8*, i32, ...) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @dbg_err(i8*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @ubi_io_read_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i8* @crc32(i32, i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @ubi_free_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
