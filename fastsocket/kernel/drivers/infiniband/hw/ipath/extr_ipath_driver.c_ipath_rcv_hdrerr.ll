; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_rcv_hdrerr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_rcv_hdrerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i64, i32 }
%struct.ipath_message_header = type { i32* }

@PKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"RHFerrs %x hdrqtail=%x typ=%u tlen=%x opcode=%x egridx=%x: %s\0A\00", align 1
@INFINIPATH_RHF_H_ICRCERR = common dso_local global i32 0, align 4
@INFINIPATH_RHF_H_VCRCERR = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT = common dso_local global i64 0, align 8
@INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32, i32, i32, i32*, %struct.ipath_message_header*)* @ipath_rcv_hdrerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_rcv_hdrerr(%struct.ipath_devdata* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.ipath_message_header* %5) #0 {
  %7 = alloca %struct.ipath_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ipath_message_header*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.ipath_message_header* %5, %struct.ipath_message_header** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %17 = call i32 @get_rhf_errstring(i32 %15, i8* %16, i32 128)
  %18 = load i32, i32* @PKT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @ipath_hdrget_rcv_type(i32* %21)
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @ipath_hdrget_length_in_bytes(i32* %23)
  %25 = load %struct.ipath_message_header*, %struct.ipath_message_header** %12, align 8
  %26 = getelementptr inbounds %struct.ipath_message_header, %struct.ipath_message_header* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = ashr i32 %30, 24
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %34 = call i32 @ipath_cdbg(i32 %18, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %22, i32 %24, i32 %31, i32 %32, i8* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @INFINIPATH_RHF_H_ICRCERR, align 4
  %37 = load i32, i32* @INFINIPATH_RHF_H_VCRCERR, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %6
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %43 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT, align 8
  %46 = ashr i64 %44, %45
  %47 = load i64, i64* @INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %14, align 8
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %57 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %41
  br label %63

63:                                               ; preds = %62, %6
  ret void
}

declare dso_local i32 @get_rhf_errstring(i32, i8*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ipath_hdrget_rcv_type(i32*) #1

declare dso_local i32 @ipath_hdrget_length_in_bytes(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
