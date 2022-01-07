; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_read_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_read_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32 }
%struct.infinipath_counters = type { i64, i64, i32, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8* }

@LBIntCnt = common dso_local global i32 0, align 4
@LBFlowStallCnt = common dso_local global i32 0, align 4
@TxUnsupVLErrCnt = common dso_local global i32 0, align 4
@TxDataPktCnt = common dso_local global i32 0, align 4
@TxFlowPktCnt = common dso_local global i32 0, align 4
@TxDwordCnt = common dso_local global i32 0, align 4
@TxLenErrCnt = common dso_local global i32 0, align 4
@TxMaxMinLenErrCnt = common dso_local global i32 0, align 4
@TxUnderrunCnt = common dso_local global i32 0, align 4
@TxFlowStallCnt = common dso_local global i32 0, align 4
@TxDroppedPktCnt = common dso_local global i32 0, align 4
@RxDroppedPktCnt = common dso_local global i32 0, align 4
@RxDataPktCnt = common dso_local global i32 0, align 4
@RxFlowPktCnt = common dso_local global i32 0, align 4
@RxDwordCnt = common dso_local global i32 0, align 4
@RxLenErrCnt = common dso_local global i32 0, align 4
@RxMaxMinLenErrCnt = common dso_local global i32 0, align 4
@RxICRCErrCnt = common dso_local global i32 0, align 4
@RxVCRCErrCnt = common dso_local global i32 0, align 4
@RxFlowCtrlErrCnt = common dso_local global i32 0, align 4
@RxBadFormatCnt = common dso_local global i32 0, align 4
@RxLinkProblemCnt = common dso_local global i32 0, align 4
@RxEBPCnt = common dso_local global i32 0, align 4
@RxLPCRCErrCnt = common dso_local global i32 0, align 4
@RxBufOvflCnt = common dso_local global i32 0, align 4
@RxTIDFullErrCnt = common dso_local global i32 0, align 4
@RxTIDValidErrCnt = common dso_local global i32 0, align 4
@RxPKeyMismatchCnt = common dso_local global i32 0, align 4
@RxP0HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP1HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP2HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP3HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP4HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP5HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP6HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP7HdrEgrOvflCnt = common dso_local global i32 0, align 4
@RxP8HdrEgrOvflCnt = common dso_local global i32 0, align 4
@IBStatusChangeCnt = common dso_local global i32 0, align 4
@IBLinkErrRecoveryCnt = common dso_local global i32 0, align 4
@IBLinkDownedCnt = common dso_local global i32 0, align 4
@IBSymbolErrCnt = common dso_local global i32 0, align 4
@IPATH_GPIO_ERRINTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, %struct.infinipath_counters*)* @ipath_ht_read_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_ht_read_counters(%struct.ipath_devdata* %0, %struct.infinipath_counters* %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca %struct.infinipath_counters*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store %struct.infinipath_counters* %1, %struct.infinipath_counters** %4, align 8
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %6 = load i32, i32* @LBIntCnt, align 4
  %7 = call i32 @IPATH_CREG_OFFSET(i32 %6)
  %8 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %5, i32 %7)
  %9 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %10 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %9, i32 0, i32 56
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %12 = load i32, i32* @LBFlowStallCnt, align 4
  %13 = call i32 @IPATH_CREG_OFFSET(i32 %12)
  %14 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %11, i32 %13)
  %15 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %16 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %15, i32 0, i32 55
  store i8* %14, i8** %16, align 8
  %17 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %18 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %17, i32 0, i32 54
  store i64 0, i64* %18, align 8
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %20 = load i32, i32* @TxUnsupVLErrCnt, align 4
  %21 = call i32 @IPATH_CREG_OFFSET(i32 %20)
  %22 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %19, i32 %21)
  %23 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %24 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %23, i32 0, i32 53
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %26 = load i32, i32* @TxDataPktCnt, align 4
  %27 = call i32 @IPATH_CREG_OFFSET(i32 %26)
  %28 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %25, i32 %27)
  %29 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %30 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %29, i32 0, i32 52
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %32 = load i32, i32* @TxFlowPktCnt, align 4
  %33 = call i32 @IPATH_CREG_OFFSET(i32 %32)
  %34 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %31, i32 %33)
  %35 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %36 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %35, i32 0, i32 51
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %38 = load i32, i32* @TxDwordCnt, align 4
  %39 = call i32 @IPATH_CREG_OFFSET(i32 %38)
  %40 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %37, i32 %39)
  %41 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %42 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %41, i32 0, i32 50
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %44 = load i32, i32* @TxLenErrCnt, align 4
  %45 = call i32 @IPATH_CREG_OFFSET(i32 %44)
  %46 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %43, i32 %45)
  %47 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %48 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %47, i32 0, i32 49
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %50 = load i32, i32* @TxMaxMinLenErrCnt, align 4
  %51 = call i32 @IPATH_CREG_OFFSET(i32 %50)
  %52 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %49, i32 %51)
  %53 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %54 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %53, i32 0, i32 48
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %56 = load i32, i32* @TxUnderrunCnt, align 4
  %57 = call i32 @IPATH_CREG_OFFSET(i32 %56)
  %58 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %55, i32 %57)
  %59 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %60 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %59, i32 0, i32 47
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %62 = load i32, i32* @TxFlowStallCnt, align 4
  %63 = call i32 @IPATH_CREG_OFFSET(i32 %62)
  %64 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %61, i32 %63)
  %65 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %66 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %65, i32 0, i32 46
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %68 = load i32, i32* @TxDroppedPktCnt, align 4
  %69 = call i32 @IPATH_CREG_OFFSET(i32 %68)
  %70 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %67, i32 %69)
  %71 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %72 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %71, i32 0, i32 45
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %74 = load i32, i32* @RxDroppedPktCnt, align 4
  %75 = call i32 @IPATH_CREG_OFFSET(i32 %74)
  %76 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %73, i32 %75)
  %77 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %78 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %77, i32 0, i32 44
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %80 = load i32, i32* @RxDataPktCnt, align 4
  %81 = call i32 @IPATH_CREG_OFFSET(i32 %80)
  %82 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %79, i32 %81)
  %83 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %84 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %83, i32 0, i32 43
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %86 = load i32, i32* @RxFlowPktCnt, align 4
  %87 = call i32 @IPATH_CREG_OFFSET(i32 %86)
  %88 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %85, i32 %87)
  %89 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %90 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %89, i32 0, i32 42
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %92 = load i32, i32* @RxDwordCnt, align 4
  %93 = call i32 @IPATH_CREG_OFFSET(i32 %92)
  %94 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %91, i32 %93)
  %95 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %96 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %95, i32 0, i32 41
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %98 = load i32, i32* @RxLenErrCnt, align 4
  %99 = call i32 @IPATH_CREG_OFFSET(i32 %98)
  %100 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %97, i32 %99)
  %101 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %102 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %101, i32 0, i32 40
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %104 = load i32, i32* @RxMaxMinLenErrCnt, align 4
  %105 = call i32 @IPATH_CREG_OFFSET(i32 %104)
  %106 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %103, i32 %105)
  %107 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %108 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %107, i32 0, i32 39
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %110 = load i32, i32* @RxICRCErrCnt, align 4
  %111 = call i32 @IPATH_CREG_OFFSET(i32 %110)
  %112 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %109, i32 %111)
  %113 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %114 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %113, i32 0, i32 38
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %116 = load i32, i32* @RxVCRCErrCnt, align 4
  %117 = call i32 @IPATH_CREG_OFFSET(i32 %116)
  %118 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %115, i32 %117)
  %119 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %120 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %119, i32 0, i32 37
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %122 = load i32, i32* @RxFlowCtrlErrCnt, align 4
  %123 = call i32 @IPATH_CREG_OFFSET(i32 %122)
  %124 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %121, i32 %123)
  %125 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %126 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %125, i32 0, i32 36
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %128 = load i32, i32* @RxBadFormatCnt, align 4
  %129 = call i32 @IPATH_CREG_OFFSET(i32 %128)
  %130 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %127, i32 %129)
  %131 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %132 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %131, i32 0, i32 35
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %134 = load i32, i32* @RxLinkProblemCnt, align 4
  %135 = call i32 @IPATH_CREG_OFFSET(i32 %134)
  %136 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %133, i32 %135)
  %137 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %138 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %137, i32 0, i32 34
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %140 = load i32, i32* @RxEBPCnt, align 4
  %141 = call i32 @IPATH_CREG_OFFSET(i32 %140)
  %142 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %139, i32 %141)
  %143 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %144 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %143, i32 0, i32 33
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %146 = load i32, i32* @RxLPCRCErrCnt, align 4
  %147 = call i32 @IPATH_CREG_OFFSET(i32 %146)
  %148 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %145, i32 %147)
  %149 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %150 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %149, i32 0, i32 32
  store i8* %148, i8** %150, align 8
  %151 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %152 = load i32, i32* @RxBufOvflCnt, align 4
  %153 = call i32 @IPATH_CREG_OFFSET(i32 %152)
  %154 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %151, i32 %153)
  %155 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %156 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %155, i32 0, i32 31
  store i8* %154, i8** %156, align 8
  %157 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %158 = load i32, i32* @RxTIDFullErrCnt, align 4
  %159 = call i32 @IPATH_CREG_OFFSET(i32 %158)
  %160 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %157, i32 %159)
  %161 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %162 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %161, i32 0, i32 30
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %164 = load i32, i32* @RxTIDValidErrCnt, align 4
  %165 = call i32 @IPATH_CREG_OFFSET(i32 %164)
  %166 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %163, i32 %165)
  %167 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %168 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %167, i32 0, i32 29
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %170 = load i32, i32* @RxPKeyMismatchCnt, align 4
  %171 = call i32 @IPATH_CREG_OFFSET(i32 %170)
  %172 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %169, i32 %171)
  %173 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %174 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %173, i32 0, i32 28
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %176 = load i32, i32* @RxP0HdrEgrOvflCnt, align 4
  %177 = call i32 @IPATH_CREG_OFFSET(i32 %176)
  %178 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %175, i32 %177)
  %179 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %180 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %179, i32 0, i32 27
  store i8* %178, i8** %180, align 8
  %181 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %182 = load i32, i32* @RxP1HdrEgrOvflCnt, align 4
  %183 = call i32 @IPATH_CREG_OFFSET(i32 %182)
  %184 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %181, i32 %183)
  %185 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %186 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %185, i32 0, i32 26
  store i8* %184, i8** %186, align 8
  %187 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %188 = load i32, i32* @RxP2HdrEgrOvflCnt, align 4
  %189 = call i32 @IPATH_CREG_OFFSET(i32 %188)
  %190 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %187, i32 %189)
  %191 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %192 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %191, i32 0, i32 25
  store i8* %190, i8** %192, align 8
  %193 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %194 = load i32, i32* @RxP3HdrEgrOvflCnt, align 4
  %195 = call i32 @IPATH_CREG_OFFSET(i32 %194)
  %196 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %193, i32 %195)
  %197 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %198 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %197, i32 0, i32 24
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %200 = load i32, i32* @RxP4HdrEgrOvflCnt, align 4
  %201 = call i32 @IPATH_CREG_OFFSET(i32 %200)
  %202 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %199, i32 %201)
  %203 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %204 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %203, i32 0, i32 23
  store i8* %202, i8** %204, align 8
  %205 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %206 = load i32, i32* @RxP5HdrEgrOvflCnt, align 4
  %207 = call i32 @IPATH_CREG_OFFSET(i32 %206)
  %208 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %205, i32 %207)
  %209 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %210 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %209, i32 0, i32 22
  store i8* %208, i8** %210, align 8
  %211 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %212 = load i32, i32* @RxP6HdrEgrOvflCnt, align 4
  %213 = call i32 @IPATH_CREG_OFFSET(i32 %212)
  %214 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %211, i32 %213)
  %215 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %216 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %215, i32 0, i32 21
  store i8* %214, i8** %216, align 8
  %217 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %218 = load i32, i32* @RxP7HdrEgrOvflCnt, align 4
  %219 = call i32 @IPATH_CREG_OFFSET(i32 %218)
  %220 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %217, i32 %219)
  %221 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %222 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %221, i32 0, i32 20
  store i8* %220, i8** %222, align 8
  %223 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %224 = load i32, i32* @RxP8HdrEgrOvflCnt, align 4
  %225 = call i32 @IPATH_CREG_OFFSET(i32 %224)
  %226 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %223, i32 %225)
  %227 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %228 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %227, i32 0, i32 19
  store i8* %226, i8** %228, align 8
  %229 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %230 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %229, i32 0, i32 18
  store i64 0, i64* %230, align 8
  %231 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %232 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %231, i32 0, i32 17
  store i64 0, i64* %232, align 8
  %233 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %234 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %233, i32 0, i32 16
  store i64 0, i64* %234, align 8
  %235 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %236 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %235, i32 0, i32 15
  store i64 0, i64* %236, align 8
  %237 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %238 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %237, i32 0, i32 14
  store i64 0, i64* %238, align 8
  %239 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %240 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %239, i32 0, i32 13
  store i64 0, i64* %240, align 8
  %241 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %242 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %241, i32 0, i32 12
  store i64 0, i64* %242, align 8
  %243 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %244 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %243, i32 0, i32 11
  store i64 0, i64* %244, align 8
  %245 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %246 = load i32, i32* @IBStatusChangeCnt, align 4
  %247 = call i32 @IPATH_CREG_OFFSET(i32 %246)
  %248 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %245, i32 %247)
  %249 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %250 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %249, i32 0, i32 10
  store i8* %248, i8** %250, align 8
  %251 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %252 = load i32, i32* @IBLinkErrRecoveryCnt, align 4
  %253 = call i32 @IPATH_CREG_OFFSET(i32 %252)
  %254 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %251, i32 %253)
  %255 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %256 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %255, i32 0, i32 9
  store i8* %254, i8** %256, align 8
  %257 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %258 = load i32, i32* @IBLinkDownedCnt, align 4
  %259 = call i32 @IPATH_CREG_OFFSET(i32 %258)
  %260 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %257, i32 %259)
  %261 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %262 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %261, i32 0, i32 8
  store i8* %260, i8** %262, align 8
  %263 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %264 = load i32, i32* @IBSymbolErrCnt, align 4
  %265 = call i32 @IPATH_CREG_OFFSET(i32 %264)
  %266 = call i8* @ipath_snap_cntr(%struct.ipath_devdata* %263, i32 %265)
  %267 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %268 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %267, i32 0, i32 7
  store i8* %266, i8** %268, align 8
  %269 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %270 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %269, i32 0, i32 6
  store i64 0, i64* %270, align 8
  %271 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %272 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %271, i32 0, i32 5
  store i64 0, i64* %272, align 8
  %273 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %274 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %273, i32 0, i32 4
  store i64 0, i64* %274, align 8
  %275 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %276 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %279 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  %280 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %281 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @IPATH_GPIO_ERRINTRS, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %2
  %287 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %288 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  br label %294

290:                                              ; preds = %2
  %291 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %292 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  br label %294

294:                                              ; preds = %290, %286
  %295 = phi i32 [ %289, %286 ], [ %293, %290 ]
  %296 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %297 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %299 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %298, i32 0, i32 1
  store i64 0, i64* %299, align 8
  %300 = load %struct.infinipath_counters*, %struct.infinipath_counters** %4, align 8
  %301 = getelementptr inbounds %struct.infinipath_counters, %struct.infinipath_counters* %300, i32 0, i32 0
  store i64 0, i64* %301, align 8
  ret void
}

declare dso_local i8* @ipath_snap_cntr(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @IPATH_CREG_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
