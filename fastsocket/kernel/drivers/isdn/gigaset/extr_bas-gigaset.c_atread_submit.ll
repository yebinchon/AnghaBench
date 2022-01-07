; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_atread_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_atread_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@DEBUG_USBREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"-------> HD_READ_ATMESSAGE (%d)\00", align 1
@BS_ATRDPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"could not submit HD_READ_ATMESSAGE: URB busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BS_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"HD_READ_ATMESSAGE not submitted, suspend in progress\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IN_VENDOR_REQ = common dso_local global i32 0, align 4
@HD_READ_ATMESSAGE = common dso_local global i32 0, align 4
@read_ctrl_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"could not submit HD_READ_ATMESSAGE: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"setting timeout of %d/10 secs\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@cmd_in_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32)* @atread_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atread_submit(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bas_cardstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.bas_cardstate*, %struct.bas_cardstate** %11, align 8
  store %struct.bas_cardstate* %12, %struct.bas_cardstate** %6, align 8
  %13 = load i32, i32* @DEBUG_USBREQ, align 4
  %14 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %15 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gig_dbg(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %19 = load i32, i32* @BS_ATRDPEND, align 4
  %20 = call i32 @update_basstate(%struct.bas_cardstate* %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BS_ATRDPEND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %27 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %140

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BS_SUSPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_notice(i32 %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %43 = load i32, i32* @BS_ATRDPEND, align 4
  %44 = call i32 @update_basstate(%struct.bas_cardstate* %42, i32 0, i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %140

47:                                               ; preds = %32
  %48 = load i32, i32* @IN_VENDOR_REQ, align 4
  %49 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %50 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @HD_READ_ATMESSAGE, align 4
  %53 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %54 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %57 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %60 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %63 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cpu_to_le16(i32 %64)
  %66 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %67 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %70 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %73 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %76 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @usb_rcvctrlpipe(i32 %77, i32 0)
  %79 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %80 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %79, i32 0, i32 4
  %81 = bitcast %struct.TYPE_5__* %80 to i8*
  %82 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %83 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %86 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @read_ctrl_callback, align 4
  %89 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %90 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @usb_fill_control_urb(i32 %71, i32 %74, i32 %78, i8* %81, i32 %84, i32 %87, i32 %88, i32 %91)
  %93 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %94 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call i32 @usb_submit_urb(i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %47
  %100 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %101 = load i32, i32* @BS_ATRDPEND, align 4
  %102 = call i32 @update_basstate(%struct.bas_cardstate* %100, i32 0, i32 %101)
  %103 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %104 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @get_usb_rcmsg(i32 %106)
  %108 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %140

110:                                              ; preds = %47
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load i32, i32* @DEBUG_USBREQ, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @gig_dbg(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @HZ, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sdiv i32 %120, 10
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %117, %122
  %124 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %125 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  store i64 %123, i64* %126, align 8
  %127 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %128 = ptrtoint %struct.cardstate* %127 to i64
  %129 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %130 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load i32, i32* @cmd_in_timeout, align 4
  %133 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %134 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  %136 = load %struct.bas_cardstate*, %struct.bas_cardstate** %6, align 8
  %137 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %136, i32 0, i32 1
  %138 = call i32 @add_timer(%struct.TYPE_6__* %137)
  br label %139

139:                                              ; preds = %113, %110
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %99, %37, %25
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @update_basstate(%struct.bas_cardstate*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @get_usb_rcmsg(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
