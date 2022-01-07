; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_itmf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_copy_desc_itmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_host_req = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i32, i64, i32, i64, i8*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@FCPIO_ITMF = common dso_local global i32 0, align 4
@LUN_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq_copy*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*)* @fnic_queue_wq_copy_desc_itmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca %struct.vnic_wq_copy*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.fcpio_host_req*, align 8
  store %struct.vnic_wq_copy* %0, %struct.vnic_wq_copy** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %20 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %10, align 8
  %21 = call %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy* %20)
  store %struct.fcpio_host_req* %21, %struct.fcpio_host_req** %19, align 8
  %22 = load i32, i32* @FCPIO_ITMF, align 4
  %23 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %24 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %27 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %30 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %34 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %32, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %40 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 8
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %45 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 7
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %50 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  store i8* %48, i8** %52, align 8
  %53 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %54 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %58 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* @LUN_ADDRESS, align 4
  %64 = call i32 @memcpy(i32 %61, i32* %62, i32 %63)
  %65 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %66 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %70 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @hton24(i32 %73, i8* %74)
  %76 = load i8*, i8** %17, align 8
  %77 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %78 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load %struct.fcpio_host_req*, %struct.fcpio_host_req** %19, align 8
  %83 = getelementptr inbounds %struct.fcpio_host_req, %struct.fcpio_host_req* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  %86 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %10, align 8
  %87 = call i32 @vnic_wq_copy_post(%struct.vnic_wq_copy* %86)
  ret void
}

declare dso_local %struct.fcpio_host_req* @vnic_wq_copy_next_desc(%struct.vnic_wq_copy*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hton24(i32, i8*) #1

declare dso_local i32 @vnic_wq_copy_post(%struct.vnic_wq_copy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
