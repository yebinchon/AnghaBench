; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c___sclp_vt220_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c___sclp_vt220_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sclp_vt220_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@sclp_vt220_register = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EVTYP_VT220MSG_MASK = common dso_local global i32 0, align 4
@SCLP_REQ_FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@sclp_vt220_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_vt220_request*)* @__sclp_vt220_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sclp_vt220_emit(%struct.sclp_vt220_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_vt220_request*, align 8
  store %struct.sclp_vt220_request* %0, %struct.sclp_vt220_request** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp_vt220_register, i32 0, i32 0), align 4
  %5 = load i32, i32* @EVTYP_VT220MSG_MASK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @SCLP_REQ_FAILED, align 4
  %10 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %11 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %17 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %18 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @SCLP_REQ_FILLED, align 4
  %21 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %22 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @sclp_vt220_callback, align 4
  %25 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %26 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %29 = bitcast %struct.sclp_vt220_request* %28 to i8*
  %30 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %31 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %34 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %33, i32 0, i32 0
  %35 = call i32 @sclp_add_request(%struct.TYPE_4__* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %15, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @sclp_add_request(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
