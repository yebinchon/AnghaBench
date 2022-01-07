; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_atwrite_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_atwrite_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@DEBUG_USBREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"-------> HD_WRITE_ATMESSAGE (%d)\00", align 1
@BS_ATWRPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"could not submit HD_WRITE_ATMESSAGE: URB busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OUT_VENDOR_REQ = common dso_local global i32 0, align 4
@HD_WRITE_ATMESSAGE = common dso_local global i32 0, align 4
@write_command_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not submit HD_WRITE_ATMESSAGE: %s\0A\00", align 1
@BS_ATTIMER = common dso_local global i32 0, align 4
@BS_ATREADY = common dso_local global i32 0, align 4
@DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"setting ATREADY timeout of %d/10 secs\00", align 1
@ATRDY_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@atrdy_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i8*, i32)* @atwrite_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atwrite_submit(%struct.cardstate* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bas_cardstate*, align 8
  %9 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.bas_cardstate*, %struct.bas_cardstate** %12, align 8
  store %struct.bas_cardstate* %13, %struct.bas_cardstate** %8, align 8
  %14 = load i32, i32* @DEBUG_USBREQ, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @gig_dbg(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %18 = load i32, i32* @BS_ATWRPEND, align 4
  %19 = call i32 @update_basstate(%struct.bas_cardstate* %17, i32 %18, i32 0)
  %20 = load i32, i32* @BS_ATWRPEND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %122

30:                                               ; preds = %3
  %31 = load i32, i32* @OUT_VENDOR_REQ, align 4
  %32 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %33 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @HD_WRITE_ATMESSAGE, align 4
  %36 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %37 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %40 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %43 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %48 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %51 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %54 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %57 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @usb_sndctrlpipe(i32 %58, i32 0)
  %60 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %61 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %60, i32 0, i32 2
  %62 = bitcast %struct.TYPE_5__* %61 to i8*
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @write_command_callback, align 4
  %66 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %67 = call i32 @usb_fill_control_urb(i32 %52, i32 %55, i32 %59, i8* %62, i8* %63, i32 %64, i32 %65, %struct.cardstate* %66)
  %68 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %69 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32 @usb_submit_urb(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %30
  %77 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %78 = load i32, i32* @BS_ATWRPEND, align 4
  %79 = call i32 @update_basstate(%struct.bas_cardstate* %77, i32 0, i32 %78)
  %80 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @get_usb_rcmsg(i32 %83)
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %122

87:                                               ; preds = %30
  %88 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %89 = load i32, i32* @BS_ATTIMER, align 4
  %90 = load i32, i32* @BS_ATREADY, align 4
  %91 = call i32 @update_basstate(%struct.bas_cardstate* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @BS_ATTIMER, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @DEBUG_OUTPUT, align 4
  %97 = load i32, i32* @ATRDY_TIMEOUT, align 4
  %98 = call i32 @gig_dbg(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i32, i32* @ATRDY_TIMEOUT, align 4
  %101 = load i32, i32* @HZ, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sdiv i32 %102, 10
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %99, %104
  %106 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %107 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i64 %105, i64* %108, align 8
  %109 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %110 = ptrtoint %struct.cardstate* %109 to i64
  %111 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %112 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load i32, i32* @atrdy_timeout, align 4
  %115 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %116 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 8
  %118 = load %struct.bas_cardstate*, %struct.bas_cardstate** %8, align 8
  %119 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %118, i32 0, i32 0
  %120 = call i32 @add_timer(%struct.TYPE_6__* %119)
  br label %121

121:                                              ; preds = %95, %87
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %76, %23
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @update_basstate(%struct.bas_cardstate*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32, i32, i32, i8*, i8*, i32, i32, %struct.cardstate*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_usb_rcmsg(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
