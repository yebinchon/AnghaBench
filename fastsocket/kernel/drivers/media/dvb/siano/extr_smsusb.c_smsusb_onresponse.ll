; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_onresponse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_onresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, i64 }
%struct.smsusb_urb_t = type { %struct.TYPE_2__*, %struct.smsusb_device_t* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.smsusb_device_t = type { i64, i32 }
%struct.SmsMsgHdr_ST = type { i64, i32 }

@ESHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"error, urb status %d (-ESHUTDOWN), %d bytes\00", align 1
@MSG_HDR_FLAG_SPLIT_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid response msglen %d offset %d size %d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid response msglen %d actual %d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"error, urb status %d, %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @smsusb_onresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsusb_onresponse(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.smsusb_urb_t*, align 8
  %4 = alloca %struct.smsusb_device_t*, align 8
  %5 = alloca %struct.SmsMsgHdr_ST*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smsusb_urb_t*
  store %struct.smsusb_urb_t* %9, %struct.smsusb_urb_t** %3, align 8
  %10 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %11 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %10, i32 0, i32 1
  %12 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %11, align 8
  store %struct.smsusb_device_t* %12, %struct.smsusb_device_t** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ESHUTDOWN, align 8
  %17 = sub nsw i64 0, %16
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, i64, i64, ...) @sms_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  br label %163

27:                                               ; preds = %1
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %150

32:                                               ; preds = %27
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %150

37:                                               ; preds = %32
  %38 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %39 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.SmsMsgHdr_ST*
  store %struct.SmsMsgHdr_ST* %43, %struct.SmsMsgHdr_ST** %5, align 8
  %44 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %45 = call i32 @smsendian_handle_message_header(%struct.SmsMsgHdr_ST* %44)
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %50 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %141

53:                                               ; preds = %37
  %54 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %55 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %58 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %62 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %126

65:                                               ; preds = %53
  %66 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %67 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MSG_HDR_FLAG_SPLIT_MSG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %126

72:                                               ; preds = %65
  %73 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %74 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %77 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %75, %81
  %83 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %84 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 %82, i64* %86, align 8
  %87 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %88 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %93 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = load %struct.urb*, %struct.urb** %2, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %72
  %103 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %104 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %107 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.urb*, %struct.urb** %2, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, i64, i64, ...) @sms_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %105, i64 %110, i64 %113)
  br label %159

115:                                              ; preds = %72
  %116 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %117 = bitcast %struct.SmsMsgHdr_ST* %116 to i8*
  %118 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %119 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  %124 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %125 = call i32 @memcpy(i8* %123, %struct.SmsMsgHdr_ST* %124, i32 16)
  br label %131

126:                                              ; preds = %65, %53
  %127 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %128 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %115
  %132 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %133 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %136 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = call i32 @smscore_onresponse(i32 %134, %struct.TYPE_2__* %137)
  %139 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %140 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %139, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %140, align 8
  br label %149

141:                                              ; preds = %37
  %142 = load %struct.SmsMsgHdr_ST*, %struct.SmsMsgHdr_ST** %5, align 8
  %143 = getelementptr inbounds %struct.SmsMsgHdr_ST, %struct.SmsMsgHdr_ST* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.urb*, %struct.urb** %2, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, i64, i64, ...) @sms_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %144, i64 %147)
  br label %149

149:                                              ; preds = %141, %131
  br label %158

150:                                              ; preds = %32, %27
  %151 = load %struct.urb*, %struct.urb** %2, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.urb*, %struct.urb** %2, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i8*, i64, i64, ...) @sms_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %153, i64 %156)
  br label %158

158:                                              ; preds = %150, %149
  br label %159

159:                                              ; preds = %158, %102
  %160 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %4, align 8
  %161 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %3, align 8
  %162 = call i32 @smsusb_submit_urb(%struct.smsusb_device_t* %160, %struct.smsusb_urb_t* %161)
  br label %163

163:                                              ; preds = %159, %19
  ret void
}

declare dso_local i32 @sms_err(i8*, i64, i64, ...) #1

declare dso_local i32 @smsendian_handle_message_header(%struct.SmsMsgHdr_ST*) #1

declare dso_local i32 @memcpy(i8*, %struct.SmsMsgHdr_ST*, i32) #1

declare dso_local i32 @smscore_onresponse(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @smsusb_submit_urb(%struct.smsusb_device_t*, %struct.smsusb_urb_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
