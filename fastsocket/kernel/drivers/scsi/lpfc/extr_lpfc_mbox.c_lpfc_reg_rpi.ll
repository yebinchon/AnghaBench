; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_reg_rpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_reg_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i8*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32*, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@OWN_HOST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MBX_REG_LOGIN64 = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"0302 REG_LOGIN: no buffers, VPI:%d DID:x%x, rpi x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_reg_rpi(%struct.lpfc_hba* %0, i64 %1, i32 %2, i32* %3, %struct.TYPE_13__* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %14, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %21 = call i32 @memset(%struct.TYPE_13__* %20, i32 0, i32 56)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LPFC_SLI_REV4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %6
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %31, %6
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LPFC_SLI_REV3, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 8
  br label %60

60:                                               ; preds = %49, %43
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @OWN_HOST, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %69)
  store %struct.lpfc_dmabuf* %70, %struct.lpfc_dmabuf** %16, align 8
  %71 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %72 = icmp ne %struct.lpfc_dmabuf* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %75 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %76 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %75, i32 0, i32 0
  %77 = call i32* @lpfc_mbuf_alloc(%struct.lpfc_hba* %74, i32 0, i32* %76)
  %78 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %79 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %60
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %82 = icmp ne %struct.lpfc_dmabuf* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %85 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %90 = call i32 @kfree(%struct.lpfc_dmabuf* %89)
  %91 = load i8*, i8** @MBX_REG_LOGIN64, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %95 = load i32, i32* @KERN_WARNING, align 4
  %96 = load i32, i32* @LOG_MBOX, align 4
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %97, i32 %98, i64 %99)
  store i32 1, i32* %7, align 4
  br label %146

101:                                              ; preds = %83
  %102 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %103 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %102, i32 0, i32 2
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %106 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %15, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @memcpy(i32* %108, i32* %109, i32 4)
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %112 = bitcast %struct.lpfc_dmabuf* %111 to i32*
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load i8*, i8** @MBX_REG_LOGIN64, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i32 4, i32* %125, align 8
  %126 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %127 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @putPaddrHigh(i32 %128)
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  store i32 %129, i32* %135, align 4
  %136 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %137 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @putPaddrLow(i32 %138)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  store i32 %139, i32* %145, align 8
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %101, %88
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
