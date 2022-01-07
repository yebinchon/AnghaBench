; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_rfwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_zd_usb_rfwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i64 }
%struct.usb_device = type { i32 }
%struct.usb_req_rfwrite = type { i8**, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"error: io in atomic context not supported\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@USB_MIN_RFWRITE_BIT_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"error: bits %d are smaller than USB_MIN_RFWRITE_BIT_COUNT %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_MAX_RFWRITE_BIT_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"error: bits %d exceed USB_MAX_RFWRITE_BIT_COUNT %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"value %#09x bits %d\0A\00", align 1
@ZD_CR203 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"error %d: Couldn't read ZD_CR203\0A\00", align 1
@RF_IF_LE = common dso_local global i64 0, align 8
@RF_CLK = common dso_local global i64 0, align 8
@RF_DATA = common dso_local global i64 0, align 8
@USB_REQ_WRITE_RF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"error in zd_ep_regs_out_msg(). Error number %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"error in zd_ep_regs_out_msg() req_len %d != actual_req_len %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_rfwrite(%struct.zd_usb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_usb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_req_rfwrite*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.usb_req_rfwrite* null, %struct.usb_req_rfwrite** %10, align 8
  %16 = call i64 (...) @in_atomic()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %20 = call i32 @zd_usb_dev(%struct.zd_usb* %19)
  %21 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EWOULDBLOCK, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %174

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @USB_MIN_RFWRITE_BIT_COUNT, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %30 = call i32 @zd_usb_dev(%struct.zd_usb* %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @USB_MIN_RFWRITE_BIT_COUNT, align 8
  %33 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %174

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @USB_MAX_RFWRITE_BIT_COUNT, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %42 = call i32 @zd_usb_dev(%struct.zd_usb* %41)
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @USB_MAX_RFWRITE_BIT_COUNT, align 8
  %45 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %174

48:                                               ; preds = %36
  %49 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %50 = call i32 @zd_usb_dev(%struct.zd_usb* %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %55 = load i32, i32* @ZD_CR203, align 4
  %56 = call i32 @zd_usb_ioread16(%struct.zd_usb* %54, i64* %14, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %61 = call i32 @zd_usb_dev(%struct.zd_usb* %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %174

65:                                               ; preds = %48
  %66 = load i64, i64* @RF_IF_LE, align 8
  %67 = load i64, i64* @RF_CLK, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @RF_DATA, align 8
  %70 = or i64 %68, %69
  %71 = xor i64 %70, -1
  %72 = load i64, i64* %14, align 8
  %73 = and i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %75 = call %struct.TYPE_2__* @zd_usb_to_chip(%struct.zd_usb* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @mutex_is_locked(i32* %76)
  %78 = call i32 @ZD_ASSERT(i32 %77)
  %79 = load i64, i64* @USB_MAX_RFWRITE_BIT_COUNT, align 8
  %80 = mul i64 %79, 4
  %81 = add i64 32, %80
  %82 = icmp ugt i64 %81, 8
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUILD_BUG_ON(i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = mul i64 %85, 4
  %87 = add i64 32, %86
  %88 = icmp ugt i64 %87, 8
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load i64, i64* %7, align 8
  %92 = mul i64 %91, 4
  %93 = add i64 32, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %96 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = bitcast i8* %98 to %struct.usb_req_rfwrite*
  store %struct.usb_req_rfwrite* %99, %struct.usb_req_rfwrite** %10, align 8
  %100 = load i64, i64* @USB_REQ_WRITE_RF, align 8
  %101 = call i8* @cpu_to_le16(i64 %100)
  %102 = load %struct.usb_req_rfwrite*, %struct.usb_req_rfwrite** %10, align 8
  %103 = getelementptr inbounds %struct.usb_req_rfwrite, %struct.usb_req_rfwrite* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = call i8* @cpu_to_le16(i64 2)
  %105 = load %struct.usb_req_rfwrite*, %struct.usb_req_rfwrite** %10, align 8
  %106 = getelementptr inbounds %struct.usb_req_rfwrite, %struct.usb_req_rfwrite* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i8* @cpu_to_le16(i64 %107)
  %109 = load %struct.usb_req_rfwrite*, %struct.usb_req_rfwrite** %10, align 8
  %110 = getelementptr inbounds %struct.usb_req_rfwrite, %struct.usb_req_rfwrite* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %142, %65
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %7, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %111
  %117 = load i64, i64* %14, align 8
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = sub i64 %119, 1
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = and i64 %118, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load i64, i64* @RF_DATA, align 8
  %131 = load i64, i64* %15, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %15, align 8
  br label %133

133:                                              ; preds = %129, %116
  %134 = load i64, i64* %15, align 8
  %135 = call i8* @cpu_to_le16(i64 %134)
  %136 = load %struct.usb_req_rfwrite*, %struct.usb_req_rfwrite** %10, align 8
  %137 = getelementptr inbounds %struct.usb_req_rfwrite, %struct.usb_req_rfwrite* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %135, i8** %141, align 8
  br label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %111

145:                                              ; preds = %111
  %146 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %147 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %146)
  store %struct.usb_device* %147, %struct.usb_device** %9, align 8
  %148 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %149 = load %struct.usb_req_rfwrite*, %struct.usb_req_rfwrite** %10, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @zd_ep_regs_out_msg(%struct.usb_device* %148, %struct.usb_req_rfwrite* %149, i32 %150, i32* %13, i32 50)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %145
  %155 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %156 = call i32 @zd_usb_dev(%struct.zd_usb* %155)
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %172

159:                                              ; preds = %145
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %165 = call i32 @zd_usb_dev(%struct.zd_usb* %164)
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 (i32, i8*, ...) @dev_dbg_f(i32 %165, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %172

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %163, %154
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %59, %40, %28, %18
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @zd_usb_ioread16(%struct.zd_usb*, i64*, i32) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_2__* @zd_usb_to_chip(%struct.zd_usb*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @zd_ep_regs_out_msg(%struct.usb_device*, %struct.usb_req_rfwrite*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
