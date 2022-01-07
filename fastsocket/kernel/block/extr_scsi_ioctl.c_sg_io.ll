; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_sg_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_sg_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.sg_io_hdr = type { i8, i64, i32, i32, i32, i32, i32 }
%struct.request = type { i8*, i64, i64, %struct.bio* }
%struct.bio = type { i32 }
%struct.sg_iovec = type { i32 }
%struct.iovec = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.gendisk*, %struct.sg_io_hdr*, i32)* @sg_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_io(%struct.request_queue* %0, %struct.gendisk* %1, %struct.sg_io_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.sg_io_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.request*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.sg_iovec*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.gendisk* %1, %struct.gendisk** %7, align 8
  store %struct.sg_io_hdr* %2, %struct.sg_io_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 83
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

33:                                               ; preds = %4
  %34 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %35 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BLK_MAX_CDB, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

42:                                               ; preds = %33
  %43 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %44 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %47 = call i32 @queue_max_hw_sectors(%struct.request_queue* %46)
  %48 = shl i32 %47, 9
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

53:                                               ; preds = %42
  %54 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %55 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %60 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %62 [
    i32 129, label %65
    i32 128, label %66
    i32 130, label %66
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

65:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  br label %67

66:                                               ; preds = %58, %58
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @WRITE, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @READ, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.request* @blk_get_request(%struct.request_queue* %69, i32 %77, i32 %78)
  store %struct.request* %79, %struct.request** %13, align 8
  %80 = load %struct.request*, %struct.request** %13, align 8
  %81 = icmp ne %struct.request* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

85:                                               ; preds = %76
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = load %struct.request*, %struct.request** %13, align 8
  %88 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @blk_fill_sghdr_rq(%struct.request_queue* %86, %struct.request* %87, %struct.sg_io_hdr* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.request*, %struct.request** %13, align 8
  %94 = call i32 @blk_put_request(%struct.request* %93)
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

97:                                               ; preds = %85
  %98 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %99 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %172

102:                                              ; preds = %97
  %103 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %104 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.sg_iovec* @kmalloc(i32 %109, i32 %110)
  store %struct.sg_iovec* %111, %struct.sg_iovec** %20, align 8
  %112 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %113 = icmp ne %struct.sg_iovec* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %221

117:                                              ; preds = %102
  %118 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %119 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %120 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i64 @copy_from_user(%struct.sg_iovec* %118, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %127 = call i32 @kfree(%struct.sg_iovec* %126)
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %12, align 4
  br label %221

130:                                              ; preds = %117
  %131 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %132 = bitcast %struct.sg_iovec* %131 to %struct.iovec*
  %133 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %134 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @iov_length(%struct.iovec* %132, i32 %135)
  store i64 %136, i64* %19, align 8
  %137 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %138 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %19, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %130
  %144 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %145 = bitcast %struct.sg_iovec* %144 to %struct.iovec*
  %146 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %147 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %150 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = call i32 @iov_shorten(%struct.iovec* %145, i32 %148, i64 %152)
  %154 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %155 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %157 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %19, align 8
  br label %160

160:                                              ; preds = %143, %130
  %161 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %162 = load %struct.request*, %struct.request** %13, align 8
  %163 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %164 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %165 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %19, align 8
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i32 @blk_rq_map_user_iov(%struct.request_queue* %161, %struct.request* %162, i32* null, %struct.sg_iovec* %163, i32 %166, i64 %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load %struct.sg_iovec*, %struct.sg_iovec** %20, align 8
  %171 = call i32 @kfree(%struct.sg_iovec* %170)
  br label %190

172:                                              ; preds = %97
  %173 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %174 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %179 = load %struct.request*, %struct.request** %13, align 8
  %180 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %181 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %184 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call i32 @blk_rq_map_user(%struct.request_queue* %178, %struct.request* %179, i32* null, i32 %182, i64 %186, i32 %187)
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %177, %172
  br label %190

190:                                              ; preds = %189, %160
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %221

194:                                              ; preds = %190
  %195 = load %struct.request*, %struct.request** %13, align 8
  %196 = getelementptr inbounds %struct.request, %struct.request* %195, i32 0, i32 3
  %197 = load %struct.bio*, %struct.bio** %196, align 8
  store %struct.bio* %197, %struct.bio** %16, align 8
  %198 = trunc i64 %22 to i32
  %199 = call i32 @memset(i8* %24, i32 0, i32 %198)
  %200 = load %struct.request*, %struct.request** %13, align 8
  %201 = getelementptr inbounds %struct.request, %struct.request* %200, i32 0, i32 0
  store i8* %24, i8** %201, align 8
  %202 = load %struct.request*, %struct.request** %13, align 8
  %203 = getelementptr inbounds %struct.request, %struct.request* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load %struct.request*, %struct.request** %13, align 8
  %205 = getelementptr inbounds %struct.request, %struct.request* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load i64, i64* @jiffies, align 8
  store i64 %206, i64* %10, align 8
  %207 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %208 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %209 = load %struct.request*, %struct.request** %13, align 8
  %210 = call i32 @blk_execute_rq(%struct.request_queue* %207, %struct.gendisk* %208, %struct.request* %209, i32 0)
  %211 = load i64, i64* @jiffies, align 8
  %212 = load i64, i64* %10, align 8
  %213 = sub i64 %211, %212
  %214 = call i32 @jiffies_to_msecs(i64 %213)
  %215 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %216 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 4
  %217 = load %struct.request*, %struct.request** %13, align 8
  %218 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %219 = load %struct.bio*, %struct.bio** %16, align 8
  %220 = call i32 @blk_complete_sghdr_rq(%struct.request* %217, %struct.sg_io_hdr* %218, %struct.bio* %219)
  store i32 %220, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

221:                                              ; preds = %193, %125, %114
  %222 = load %struct.request*, %struct.request** %13, align 8
  %223 = call i32 @blk_put_request(%struct.request* %222)
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %225

225:                                              ; preds = %221, %194, %92, %82, %62, %50, %39, %30
  %226 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #2

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #2

declare dso_local i64 @blk_fill_sghdr_rq(%struct.request_queue*, %struct.request*, %struct.sg_io_hdr*, i32) #2

declare dso_local i32 @blk_put_request(%struct.request*) #2

declare dso_local %struct.sg_iovec* @kmalloc(i32, i32) #2

declare dso_local i64 @copy_from_user(%struct.sg_iovec*, i32, i32) #2

declare dso_local i32 @kfree(%struct.sg_iovec*) #2

declare dso_local i64 @iov_length(%struct.iovec*, i32) #2

declare dso_local i32 @iov_shorten(%struct.iovec*, i32, i64) #2

declare dso_local i32 @blk_rq_map_user_iov(%struct.request_queue*, %struct.request*, i32*, %struct.sg_iovec*, i32, i64, i32) #2

declare dso_local i32 @blk_rq_map_user(%struct.request_queue*, %struct.request*, i32*, i32, i64, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, %struct.gendisk*, %struct.request*, i32) #2

declare dso_local i32 @jiffies_to_msecs(i64) #2

declare dso_local i32 @blk_complete_sghdr_rq(%struct.request*, %struct.sg_io_hdr*, %struct.bio*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
