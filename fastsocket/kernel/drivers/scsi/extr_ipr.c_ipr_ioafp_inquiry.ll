; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ioafp_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ioafp_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.ipr_ioarcb }
%struct.ipr_ioarcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8**, i32 }

@ENTER = common dso_local global i32 0, align 4
@IPR_RQTYPE_SCSICDB = common dso_local global i32 0, align 4
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i8* null, align 8
@IPR_IOADL_FLAGS_READ_LAST = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, i8*, i8*, i32, i8*)* @ipr_ioafp_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_ioafp_inquiry(%struct.ipr_cmnd* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ipr_cmnd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ipr_ioarcb*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %6, align 8
  %13 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %12, i32 0, i32 0
  store %struct.ipr_ioarcb* %13, %struct.ipr_ioarcb** %11, align 8
  %14 = load i32, i32* @ENTER, align 4
  %15 = load i32, i32* @IPR_RQTYPE_SCSICDB, align 4
  %16 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %17 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %22 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** @INQUIRY, align 8
  %24 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %25 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %23, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %31 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %29, i8** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %37 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %35, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %43 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 4
  store i8* %41, i8** %46, align 8
  %47 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @IPR_IOADL_FLAGS_READ_LAST, align 4
  %51 = call i32 @ipr_init_ioadl(%struct.ipr_cmnd* %47, i32 %48, i8* %49, i32 %50)
  %52 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %6, align 8
  %53 = load i32, i32* @ipr_reset_ioa_job, align 4
  %54 = load i32, i32* @ipr_timeout, align 4
  %55 = load i32, i32* @IPR_INTERNAL_TIMEOUT, align 4
  %56 = call i32 @ipr_do_req(%struct.ipr_cmnd* %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_init_ioadl(%struct.ipr_cmnd*, i32, i8*, i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
