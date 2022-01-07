; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_request_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_request_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i8*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i8*, i32, %struct.fnic*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@fnic_isr_legacy = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i8* null, align 8
@fnic_isr_msi = common dso_local global i32 0, align 4
@FNIC_MSIX_RQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%.11s-fcs-rq\00", align 1
@fnic_isr_msix_rq = common dso_local global i32* null, align 8
@FNIC_MSIX_WQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%.11s-fcs-wq\00", align 1
@fnic_isr_msix_wq = common dso_local global i32* null, align 8
@FNIC_MSIX_WQ_COPY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"%.11s-scsi-wq\00", align 1
@fnic_isr_msix_wq_copy = common dso_local global i32* null, align 8
@FNIC_MSIX_ERR_NOTIFY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%.11s-err-notify\00", align 1
@fnic_isr_msix_err_notify = common dso_local global i32* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"MSIX: request_irq failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_request_intr(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.fnic*, %struct.fnic** %2, align 8
  %6 = getelementptr inbounds %struct.fnic, %struct.fnic* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @vnic_dev_get_intr_mode(i32 %7)
  switch i32 %8, label %197 [
    i32 130, label %9
    i32 129, label %19
    i32 128, label %30
  ]

9:                                                ; preds = %1
  %10 = load %struct.fnic*, %struct.fnic** %2, align 8
  %11 = getelementptr inbounds %struct.fnic, %struct.fnic* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IRQF_SHARED, align 4
  %16 = load i8*, i8** @DRV_NAME, align 8
  %17 = load %struct.fnic*, %struct.fnic** %2, align 8
  %18 = call i32 @request_irq(i32 %14, i32* @fnic_isr_legacy, i32 %15, i8* %16, %struct.fnic* %17)
  store i32 %18, i32* %3, align 4
  br label %198

19:                                               ; preds = %1
  %20 = load %struct.fnic*, %struct.fnic** %2, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fnic*, %struct.fnic** %2, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.fnic*, %struct.fnic** %2, align 8
  %29 = call i32 @request_irq(i32 %24, i32* @fnic_isr_msi, i32 0, i8* %27, %struct.fnic* %28)
  store i32 %29, i32* %3, align 4
  br label %198

30:                                               ; preds = %1
  %31 = load %struct.fnic*, %struct.fnic** %2, align 8
  %32 = getelementptr inbounds %struct.fnic, %struct.fnic* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i64, i64* @FNIC_MSIX_RQ, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.fnic*, %struct.fnic** %2, align 8
  %39 = getelementptr inbounds %struct.fnic, %struct.fnic* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** @fnic_isr_msix_rq, align 8
  %43 = load %struct.fnic*, %struct.fnic** %2, align 8
  %44 = getelementptr inbounds %struct.fnic, %struct.fnic* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i64, i64* @FNIC_MSIX_RQ, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i32* %42, i32** %48, align 8
  %49 = load %struct.fnic*, %struct.fnic** %2, align 8
  %50 = load %struct.fnic*, %struct.fnic** %2, align 8
  %51 = getelementptr inbounds %struct.fnic, %struct.fnic* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i64, i64* @FNIC_MSIX_RQ, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store %struct.fnic* %49, %struct.fnic** %55, align 8
  %56 = load %struct.fnic*, %struct.fnic** %2, align 8
  %57 = getelementptr inbounds %struct.fnic, %struct.fnic* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* @FNIC_MSIX_WQ, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.fnic*, %struct.fnic** %2, align 8
  %64 = getelementptr inbounds %struct.fnic, %struct.fnic* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** @fnic_isr_msix_wq, align 8
  %68 = load %struct.fnic*, %struct.fnic** %2, align 8
  %69 = getelementptr inbounds %struct.fnic, %struct.fnic* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i64, i64* @FNIC_MSIX_WQ, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i32* %67, i32** %73, align 8
  %74 = load %struct.fnic*, %struct.fnic** %2, align 8
  %75 = load %struct.fnic*, %struct.fnic** %2, align 8
  %76 = getelementptr inbounds %struct.fnic, %struct.fnic* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i64, i64* @FNIC_MSIX_WQ, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store %struct.fnic* %74, %struct.fnic** %80, align 8
  %81 = load %struct.fnic*, %struct.fnic** %2, align 8
  %82 = getelementptr inbounds %struct.fnic, %struct.fnic* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i64, i64* @FNIC_MSIX_WQ_COPY, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.fnic*, %struct.fnic** %2, align 8
  %89 = getelementptr inbounds %struct.fnic, %struct.fnic* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = load i32*, i32** @fnic_isr_msix_wq_copy, align 8
  %93 = load %struct.fnic*, %struct.fnic** %2, align 8
  %94 = getelementptr inbounds %struct.fnic, %struct.fnic* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i64, i64* @FNIC_MSIX_WQ_COPY, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i32* %92, i32** %98, align 8
  %99 = load %struct.fnic*, %struct.fnic** %2, align 8
  %100 = load %struct.fnic*, %struct.fnic** %2, align 8
  %101 = getelementptr inbounds %struct.fnic, %struct.fnic* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i64, i64* @FNIC_MSIX_WQ_COPY, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store %struct.fnic* %99, %struct.fnic** %105, align 8
  %106 = load %struct.fnic*, %struct.fnic** %2, align 8
  %107 = getelementptr inbounds %struct.fnic, %struct.fnic* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.fnic*, %struct.fnic** %2, align 8
  %114 = getelementptr inbounds %struct.fnic, %struct.fnic* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @sprintf(i8* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** @fnic_isr_msix_err_notify, align 8
  %118 = load %struct.fnic*, %struct.fnic** %2, align 8
  %119 = getelementptr inbounds %struct.fnic, %struct.fnic* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  store i32* %117, i32** %123, align 8
  %124 = load %struct.fnic*, %struct.fnic** %2, align 8
  %125 = load %struct.fnic*, %struct.fnic** %2, align 8
  %126 = getelementptr inbounds %struct.fnic, %struct.fnic* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store %struct.fnic* %124, %struct.fnic** %130, align 8
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %193, %30
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.fnic*, %struct.fnic** %2, align 8
  %134 = getelementptr inbounds %struct.fnic, %struct.fnic* %133, i32 0, i32 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %135)
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %196

138:                                              ; preds = %131
  %139 = load %struct.fnic*, %struct.fnic** %2, align 8
  %140 = getelementptr inbounds %struct.fnic, %struct.fnic* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.fnic*, %struct.fnic** %2, align 8
  %148 = getelementptr inbounds %struct.fnic, %struct.fnic* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.fnic*, %struct.fnic** %2, align 8
  %156 = getelementptr inbounds %struct.fnic, %struct.fnic* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.fnic*, %struct.fnic** %2, align 8
  %164 = getelementptr inbounds %struct.fnic, %struct.fnic* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load %struct.fnic*, %struct.fnic** %169, align 8
  %171 = call i32 @request_irq(i32 %146, i32* %154, i32 0, i8* %162, %struct.fnic* %170)
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* %3, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %138
  %175 = load i32, i32* @KERN_ERR, align 4
  %176 = load %struct.fnic*, %struct.fnic** %2, align 8
  %177 = getelementptr inbounds %struct.fnic, %struct.fnic* %176, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @shost_printk(i32 %175, i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load %struct.fnic*, %struct.fnic** %2, align 8
  %184 = call i32 @fnic_free_intr(%struct.fnic* %183)
  br label %196

185:                                              ; preds = %138
  %186 = load %struct.fnic*, %struct.fnic** %2, align 8
  %187 = getelementptr inbounds %struct.fnic, %struct.fnic* %186, i32 0, i32 1
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %131

196:                                              ; preds = %174, %131
  br label %198

197:                                              ; preds = %1
  br label %198

198:                                              ; preds = %197, %196, %19, %9
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.fnic*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @fnic_free_intr(%struct.fnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
