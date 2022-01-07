; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_initialize_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_initialize_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_vt220_request = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.sclp_vt220_sccb = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SCLP_NORMAL_WRITE = common dso_local global i32 0, align 4
@EVTYP_VT220MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sclp_vt220_request* (i8*)* @sclp_vt220_initialize_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sclp_vt220_request* @sclp_vt220_initialize_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sclp_vt220_request*, align 8
  %4 = alloca %struct.sclp_vt220_sccb*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = add nsw i64 %6, %7
  %9 = inttoptr i64 %8 to %struct.sclp_vt220_request*
  %10 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %9, i64 -1
  store %struct.sclp_vt220_request* %10, %struct.sclp_vt220_request** %3, align 8
  %11 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %12 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  %15 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = bitcast i8* %17 to %struct.sclp_vt220_sccb*
  store %struct.sclp_vt220_sccb* %18, %struct.sclp_vt220_sccb** %4, align 8
  %19 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %4, align 8
  %20 = bitcast %struct.sclp_vt220_sccb* %19 to i8*
  %21 = call i32 @memset(i8* %20, i32 0, i32 20)
  %22 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %4, align 8
  %23 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 20, i32* %24, align 4
  %25 = load i32, i32* @SCLP_NORMAL_WRITE, align 4
  %26 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %4, align 8
  %27 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %4, align 8
  %30 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @EVTYP_VT220MSG, align 4
  %33 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %4, align 8
  %34 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %4, align 8
  %37 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %3, align 8
  ret %struct.sclp_vt220_request* %39
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
