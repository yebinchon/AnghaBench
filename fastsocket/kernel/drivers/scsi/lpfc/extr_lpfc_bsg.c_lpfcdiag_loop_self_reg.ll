; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfcdiag_loop_self_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfcdiag_loop_self_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32*)* @lpfcdiag_loop_self_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfcdiag_loop_self_reg(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_14__* @mempool_alloc(i32 %11, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %174

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPFC_SLI_REV4, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lpfc_reg_rpi(%struct.lpfc_hba* %26, i32 0, i32 %31, i32* %35, %struct.TYPE_14__* %36, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %63

40:                                               ; preds = %19
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = call i32 @lpfc_sli4_alloc_rpi(%struct.lpfc_hba* %41)
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lpfc_reg_rpi(%struct.lpfc_hba* %44, i32 %49, i32 %54, i32* %58, %struct.TYPE_14__* %59, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %40, %25
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mempool_free(%struct.TYPE_14__* %67, i32 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LPFC_SLI_REV4, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @lpfc_sli4_free_rpi(%struct.lpfc_hba* %78, i32 %80)
  br label %82

82:                                               ; preds = %77, %66
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %174

85:                                               ; preds = %63
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %89, %struct.lpfc_dmabuf** %7, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %97 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %94, %struct.TYPE_14__* %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MBX_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %85
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %101, %85
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %110 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %111 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %114 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %109, i32 %112, i32 %115)
  %117 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %118 = call i32 @kfree(%struct.lpfc_dmabuf* %117)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @MBX_TIMEOUT, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mempool_free(%struct.TYPE_14__* %123, i32 %126)
  br label %128

128:                                              ; preds = %122, %108
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @LPFC_SLI_REV4, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @lpfc_sli4_free_rpi(%struct.lpfc_hba* %135, i32 %137)
  br label %139

139:                                              ; preds = %134, %128
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %174

142:                                              ; preds = %101
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @LPFC_SLI_REV4, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %5, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %148, %142
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %160 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %161 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %164 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %159, i32 %162, i32 %165)
  %167 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %168 = call i32 @kfree(%struct.lpfc_dmabuf* %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @mempool_free(%struct.TYPE_14__* %169, i32 %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %158, %139, %82, %16
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_14__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_reg_rpi(%struct.lpfc_hba*, i32, i32, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_sli4_alloc_rpi(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_sli4_free_rpi(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
