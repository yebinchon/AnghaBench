; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_recover_peb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_eba.c_recover_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i64, %struct.ubi_volume** }
%struct.ubi_volume = type { i32* }
%struct.ubi_vid_hdr = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"recover PEB %d, move data to PEB %d\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"data was successfully recovered\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to write to PEB %d\00", align 1
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"try again\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32, i32, i32, i8*, i32, i32)* @recover_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_peb(%struct.ubi_device* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ubi_volume*, align 8
  %22 = alloca %struct.ubi_vid_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @vol_id2idx(%struct.ubi_device* %23, i32 %24)
  store i32 %25, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 2
  %28 = load %struct.ubi_volume**, %struct.ubi_volume*** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %28, i64 %30
  %32 = load %struct.ubi_volume*, %struct.ubi_volume** %31, align 8
  store %struct.ubi_volume* %32, %struct.ubi_volume** %21, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device* %33, i32 %34)
  store %struct.ubi_vid_hdr* %35, %struct.ubi_vid_hdr** %22, align 8
  %36 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %37 = icmp ne %struct.ubi_vid_hdr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %7
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %190

41:                                               ; preds = %7
  br label %42

42:                                               ; preds = %188, %41
  %43 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %44 = load i32, i32* @UBI_UNKNOWN, align 4
  %45 = call i32 @ubi_wl_get_peb(%struct.ubi_device* %43, i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %50 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %51 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %49, %struct.ubi_vid_hdr* %50)
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %8, align 4
  br label %190

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call i32 (i8*, ...) @ubi_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %60 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %57, i32 %58, %struct.ubi_vid_hdr* %59, i32 1)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %16, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %165

74:                                               ; preds = %63, %53
  %75 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %76 = call i32 @next_sqnum(%struct.ubi_device* %75)
  %77 = call i32 @cpu_to_be64(i32 %76)
  %78 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %79 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %83 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %80, i32 %81, %struct.ubi_vid_hdr* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %173

87:                                               ; preds = %74
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %19, align 4
  %91 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %92 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %91, i32 0, i32 0
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %95 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @memset(i64 %99, i32 255, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %87
  %105 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %106 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %107 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @ubi_io_read_data(%struct.ubi_device* %105, i64 %108, i32 %109, i32 0, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %161

119:                                              ; preds = %114, %104
  br label %120

120:                                              ; preds = %119, %87
  %121 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %122 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load i8*, i8** %13, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @memcpy(i64 %126, i8* %127, i32 %128)
  %130 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %131 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %132 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @ubi_io_write_data(%struct.ubi_device* %130, i64 %133, i32 %134, i32 0, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %120
  %140 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %141 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  br label %173

143:                                              ; preds = %120
  %144 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %145 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %148 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %149 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %147, %struct.ubi_vid_hdr* %148)
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.ubi_volume*, %struct.ubi_volume** %21, align 8
  %152 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %157, i32 %158, i32 1)
  %160 = call i32 (i8*, ...) @ubi_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %190

161:                                              ; preds = %118
  %162 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %163 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  br label %165

165:                                              ; preds = %161, %73
  %166 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %166, i32 %167, i32 1)
  %169 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %170 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %171 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %169, %struct.ubi_vid_hdr* %170)
  %172 = load i32, i32* %16, align 4
  store i32 %172, i32* %8, align 4
  br label %190

173:                                              ; preds = %139, %86
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @ubi_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %176, i32 %177, i32 1)
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* @UBI_IO_RETRIES, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %173
  %184 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %185 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %22, align 8
  %186 = call i32 @ubi_free_vid_hdr(%struct.ubi_device* %184, %struct.ubi_vid_hdr* %185)
  %187 = load i32, i32* %16, align 4
  store i32 %187, i32* %8, align 4
  br label %190

188:                                              ; preds = %173
  %189 = call i32 (i8*, ...) @ubi_msg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %42

190:                                              ; preds = %183, %165, %143, %48, %38
  %191 = load i32, i32* %8, align 4
  ret i32 %191
}

declare dso_local i32 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_zalloc_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_wl_get_peb(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_free_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_msg(i8*, ...) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @next_sqnum(%struct.ubi_device*) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ubi_io_read_data(%struct.ubi_device*, i64, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubi_wl_put_peb(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
