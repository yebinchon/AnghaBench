; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_get_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_get_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 (%struct.qib_pportdata*, i32)* }
%struct.qib_verbs_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QIBPORTCNTR_IBSYMBOLERR = common dso_local global i32 0, align 4
@QIBPORTCNTR_IBLINKERRRECOV = common dso_local global i32 0, align 4
@QIBPORTCNTR_IBLINKDOWN = common dso_local global i32 0, align 4
@QIBPORTCNTR_RXDROPPKT = common dso_local global i32 0, align 4
@QIBPORTCNTR_RCVOVFL = common dso_local global i32 0, align 4
@QIBPORTCNTR_ERR_RLEN = common dso_local global i32 0, align 4
@QIBPORTCNTR_INVALIDRLEN = common dso_local global i32 0, align 4
@QIBPORTCNTR_ERRLINK = common dso_local global i32 0, align 4
@QIBPORTCNTR_ERRICRC = common dso_local global i32 0, align 4
@QIBPORTCNTR_ERRVCRC = common dso_local global i32 0, align 4
@QIBPORTCNTR_ERRLPCRC = common dso_local global i32 0, align 4
@QIBPORTCNTR_BADFORMAT = common dso_local global i32 0, align 4
@QIBPORTCNTR_RXLOCALPHYERR = common dso_local global i32 0, align 4
@QIBPORTCNTR_RXVLERR = common dso_local global i32 0, align 4
@QIBPORTCNTR_RCVEBP = common dso_local global i32 0, align 4
@QIBPORTCNTR_UNSUPVL = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDSEND = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDRCV = common dso_local global i32 0, align 4
@QIBPORTCNTR_PKTSEND = common dso_local global i32 0, align 4
@QIBPORTCNTR_PKTRCV = common dso_local global i32 0, align 4
@QIBPORTCNTR_LLI = common dso_local global i32 0, align 4
@QIBPORTCNTR_EXCESSBUFOVFL = common dso_local global i32 0, align 4
@QIBPORTCNTR_VL15PKTDROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_get_counters(%struct.qib_pportdata* %0, %struct.qib_verbs_counters* %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_verbs_counters*, align 8
  %5 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store %struct.qib_verbs_counters* %1, %struct.qib_verbs_counters** %4, align 8
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @QIB_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %244

17:                                               ; preds = %2
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %21, align 8
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %24 = load i32, i32* @QIBPORTCNTR_IBSYMBOLERR, align 4
  %25 = call i64 %22(%struct.qib_pportdata* %23, i32 %24)
  %26 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %27 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %26, i32 0, i32 12
  store i64 %25, i64* %27, align 8
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %31, align 8
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %34 = load i32, i32* @QIBPORTCNTR_IBLINKERRRECOV, align 4
  %35 = call i64 %32(%struct.qib_pportdata* %33, i32 %34)
  %36 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %37 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %36, i32 0, i32 11
  store i64 %35, i64* %37, align 8
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %41, align 8
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %44 = load i32, i32* @QIBPORTCNTR_IBLINKDOWN, align 4
  %45 = call i64 %42(%struct.qib_pportdata* %43, i32 %44)
  %46 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %47 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %46, i32 0, i32 10
  store i64 %45, i64* %47, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %51, align 8
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %54 = load i32, i32* @QIBPORTCNTR_RXDROPPKT, align 4
  %55 = call i64 %52(%struct.qib_pportdata* %53, i32 %54)
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %57 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %59, align 8
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %62 = load i32, i32* @QIBPORTCNTR_RCVOVFL, align 4
  %63 = call i64 %60(%struct.qib_pportdata* %61, i32 %62)
  %64 = add nsw i64 %55, %63
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %66 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %68, align 8
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %71 = load i32, i32* @QIBPORTCNTR_ERR_RLEN, align 4
  %72 = call i64 %69(%struct.qib_pportdata* %70, i32 %71)
  %73 = add nsw i64 %64, %72
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %75 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %77, align 8
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %80 = load i32, i32* @QIBPORTCNTR_INVALIDRLEN, align 4
  %81 = call i64 %78(%struct.qib_pportdata* %79, i32 %80)
  %82 = add nsw i64 %73, %81
  %83 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %84 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %86, align 8
  %88 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %89 = load i32, i32* @QIBPORTCNTR_ERRLINK, align 4
  %90 = call i64 %87(%struct.qib_pportdata* %88, i32 %89)
  %91 = add nsw i64 %82, %90
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %95, align 8
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %98 = load i32, i32* @QIBPORTCNTR_ERRICRC, align 4
  %99 = call i64 %96(%struct.qib_pportdata* %97, i32 %98)
  %100 = add nsw i64 %91, %99
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %102 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %104, align 8
  %106 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %107 = load i32, i32* @QIBPORTCNTR_ERRVCRC, align 4
  %108 = call i64 %105(%struct.qib_pportdata* %106, i32 %107)
  %109 = add nsw i64 %100, %108
  %110 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %111 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %113, align 8
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %116 = load i32, i32* @QIBPORTCNTR_ERRLPCRC, align 4
  %117 = call i64 %114(%struct.qib_pportdata* %115, i32 %116)
  %118 = add nsw i64 %109, %117
  %119 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %120 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %122, align 8
  %124 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %125 = load i32, i32* @QIBPORTCNTR_BADFORMAT, align 4
  %126 = call i64 %123(%struct.qib_pportdata* %124, i32 %125)
  %127 = add nsw i64 %118, %126
  %128 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %129 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %128, i32 0, i32 9
  store i64 %127, i64* %129, align 8
  %130 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %131 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %133, align 8
  %135 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %136 = load i32, i32* @QIBPORTCNTR_RXLOCALPHYERR, align 4
  %137 = call i64 %134(%struct.qib_pportdata* %135, i32 %136)
  %138 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %139 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %138, i32 0, i32 9
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %143 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %145, align 8
  %147 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %148 = load i32, i32* @QIBPORTCNTR_RXVLERR, align 4
  %149 = call i64 %146(%struct.qib_pportdata* %147, i32 %148)
  %150 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %151 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %150, i32 0, i32 9
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %155 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %157, align 8
  %159 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %160 = load i32, i32* @QIBPORTCNTR_RCVEBP, align 4
  %161 = call i64 %158(%struct.qib_pportdata* %159, i32 %160)
  %162 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %163 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %162, i32 0, i32 8
  store i64 %161, i64* %163, align 8
  %164 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %165 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %167, align 8
  %169 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %170 = load i32, i32* @QIBPORTCNTR_UNSUPVL, align 4
  %171 = call i64 %168(%struct.qib_pportdata* %169, i32 %170)
  %172 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %173 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %172, i32 0, i32 7
  store i64 %171, i64* %173, align 8
  %174 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %175 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %177, align 8
  %179 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %180 = load i32, i32* @QIBPORTCNTR_WORDSEND, align 4
  %181 = call i64 %178(%struct.qib_pportdata* %179, i32 %180)
  %182 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %183 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %182, i32 0, i32 6
  store i64 %181, i64* %183, align 8
  %184 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %185 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %187, align 8
  %189 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %190 = load i32, i32* @QIBPORTCNTR_WORDRCV, align 4
  %191 = call i64 %188(%struct.qib_pportdata* %189, i32 %190)
  %192 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %193 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %192, i32 0, i32 5
  store i64 %191, i64* %193, align 8
  %194 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %195 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %197, align 8
  %199 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %200 = load i32, i32* @QIBPORTCNTR_PKTSEND, align 4
  %201 = call i64 %198(%struct.qib_pportdata* %199, i32 %200)
  %202 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %203 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %202, i32 0, i32 4
  store i64 %201, i64* %203, align 8
  %204 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %205 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %204, i32 0, i32 0
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %207, align 8
  %209 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %210 = load i32, i32* @QIBPORTCNTR_PKTRCV, align 4
  %211 = call i64 %208(%struct.qib_pportdata* %209, i32 %210)
  %212 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %213 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %212, i32 0, i32 3
  store i64 %211, i64* %213, align 8
  %214 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %215 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %214, i32 0, i32 0
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %217, align 8
  %219 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %220 = load i32, i32* @QIBPORTCNTR_LLI, align 4
  %221 = call i64 %218(%struct.qib_pportdata* %219, i32 %220)
  %222 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %223 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  %224 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %225 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %227, align 8
  %229 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %230 = load i32, i32* @QIBPORTCNTR_EXCESSBUFOVFL, align 4
  %231 = call i64 %228(%struct.qib_pportdata* %229, i32 %230)
  %232 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %233 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %235 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  %238 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %237, align 8
  %239 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %240 = load i32, i32* @QIBPORTCNTR_VL15PKTDROP, align 4
  %241 = call i64 %238(%struct.qib_pportdata* %239, i32 %240)
  %242 = load %struct.qib_verbs_counters*, %struct.qib_verbs_counters** %4, align 8
  %243 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %17, %14
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
