; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.urb*, i32 }
%struct.urb = type { i32 }
%struct.zd_ioreq16 = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.usb_req_write_regs = type { %struct.reg_data*, i8* }
%struct.reg_data = type { i8*, i8* }
%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@USB_MAX_IOWRITE16_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: count %u exceeds possible max %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error: io in atomic context not supported\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EP_REGS_OUT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_WRITE_REGS = common dso_local global i32 0, align 4
@iowrite16v_urb_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"error in zd_submit_waiting_usb(). Error number %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_iowrite16v_async(%struct.zd_usb* %0, %struct.zd_ioreq16* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_usb*, align 8
  %6 = alloca %struct.zd_ioreq16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_req_write_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.urb*, align 8
  %14 = alloca %struct.usb_host_endpoint*, align 8
  %15 = alloca %struct.reg_data*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %5, align 8
  store %struct.zd_ioreq16* %1, %struct.zd_ioreq16** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.usb_req_write_regs* null, %struct.usb_req_write_regs** %10, align 8
  %16 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %17 = call %struct.TYPE_3__* @zd_usb_to_chip(%struct.zd_usb* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = call i32 @ZD_ASSERT(i32 %19)
  %21 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %22 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ZD_ASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %176

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @USB_MAX_IOWRITE16_COUNT, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %34 = call i32 @zd_usb_dev(%struct.zd_usb* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @USB_MAX_IOWRITE16_COUNT, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %176

40:                                               ; preds = %28
  %41 = call i64 (...) @in_atomic()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %45 = call i32 @zd_usb_dev(%struct.zd_usb* %44)
  %46 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EWOULDBLOCK, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %176

49:                                               ; preds = %40
  %50 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %51 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %50)
  store %struct.usb_device* %51, %struct.usb_device** %9, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %54 = load i32, i32* @EP_REGS_OUT, align 4
  %55 = call i32 @usb_sndintpipe(%struct.usb_device* %53, i32 %54)
  %56 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device* %52, i32 %55)
  store %struct.usb_host_endpoint* %56, %struct.usb_host_endpoint** %14, align 8
  %57 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %58 = icmp ne %struct.usb_host_endpoint* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %176

62:                                               ; preds = %49
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %63)
  store %struct.urb* %64, %struct.urb** %13, align 8
  %65 = load %struct.urb*, %struct.urb** %13, align 8
  %66 = icmp ne %struct.urb* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %176

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 16
  %74 = add i64 16, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.usb_req_write_regs* @kmalloc(i32 %76, i32 %77)
  store %struct.usb_req_write_regs* %78, %struct.usb_req_write_regs** %10, align 8
  %79 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %80 = icmp ne %struct.usb_req_write_regs* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %172

84:                                               ; preds = %70
  %85 = load i32, i32* @USB_REQ_WRITE_REGS, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %88 = getelementptr inbounds %struct.usb_req_write_regs, %struct.usb_req_write_regs* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %119, %84
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %122

93:                                               ; preds = %89
  %94 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %95 = getelementptr inbounds %struct.usb_req_write_regs, %struct.usb_req_write_regs* %94, i32 0, i32 0
  %96 = load %struct.reg_data*, %struct.reg_data** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %96, i64 %98
  store %struct.reg_data* %99, %struct.reg_data** %15, align 8
  %100 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %100, i64 %102
  %104 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i8* @cpu_to_le16(i32 %106)
  %108 = load %struct.reg_data*, %struct.reg_data** %15, align 8
  %109 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %110, i64 %112
  %114 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.reg_data*, %struct.reg_data** %15, align 8
  %118 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %93
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %89

122:                                              ; preds = %89
  %123 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %124 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %123, i32 0, i32 0
  %125 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_4__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load %struct.urb*, %struct.urb** %13, align 8
  %129 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %130 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %131 = load i32, i32* @EP_REGS_OUT, align 4
  %132 = call i32 @usb_sndintpipe(%struct.usb_device* %130, i32 %131)
  %133 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @iowrite16v_urb_complete, align 4
  %136 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %137 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %138 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @usb_fill_int_urb(%struct.urb* %128, %struct.usb_device* %129, i32 %132, %struct.usb_req_write_regs* %133, i32 %134, i32 %135, %struct.zd_usb* %136, i32 %140)
  br label %153

142:                                              ; preds = %122
  %143 = load %struct.urb*, %struct.urb** %13, align 8
  %144 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %145 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %146 = load i32, i32* @EP_REGS_OUT, align 4
  %147 = call i32 @usb_sndbulkpipe(%struct.usb_device* %145, i32 %146)
  %148 = load %struct.usb_req_write_regs*, %struct.usb_req_write_regs** %10, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @iowrite16v_urb_complete, align 4
  %151 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %152 = call i32 @usb_fill_bulk_urb(%struct.urb* %143, %struct.usb_device* %144, i32 %147, %struct.usb_req_write_regs* %148, i32 %149, i32 %150, %struct.zd_usb* %151)
  br label %153

153:                                              ; preds = %142, %127
  %154 = load i32, i32* @URB_FREE_BUFFER, align 4
  %155 = load %struct.urb*, %struct.urb** %13, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %160 = call i32 @zd_submit_waiting_urb(%struct.zd_usb* %159, i32 0)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %153
  %164 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %165 = call i32 @zd_usb_dev(%struct.zd_usb* %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %165, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %172

168:                                              ; preds = %153
  %169 = load %struct.urb*, %struct.urb** %13, align 8
  %170 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %171 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %170, i32 0, i32 0
  store %struct.urb* %169, %struct.urb** %171, align 8
  store i32 0, i32* %4, align 4
  br label %176

172:                                              ; preds = %163, %81
  %173 = load %struct.urb*, %struct.urb** %13, align 8
  %174 = call i32 @usb_free_urb(%struct.urb* %173)
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %168, %67, %59, %43, %32, %27
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_3__* @zd_usb_to_chip(%struct.zd_usb*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_req_write_regs* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, %struct.usb_req_write_regs*, i32, i32, %struct.zd_usb*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, %struct.usb_req_write_regs*, i32, i32, %struct.zd_usb*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @zd_submit_waiting_urb(%struct.zd_usb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
