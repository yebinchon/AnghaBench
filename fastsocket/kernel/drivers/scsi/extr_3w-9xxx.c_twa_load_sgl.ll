; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_load_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_load_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_11__*, i8*, i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8* }

@TW_OP_EXECUTE_SCSI = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_3WARE_9690SA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i64, i32)* @twa_load_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twa_load_sgl(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @TW_OP_OUT(i32 %19)
  %21 = load i64, i64* @TW_OP_EXECUTE_SCSI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %5
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %12, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @TW_LUN_OUT(i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @TW_REQ_LUN_IN(i32 %30, i32 %31)
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %23
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 4
  %41 = sub i64 %40, 1
  %42 = call i8* @TW_CPU_TO_SGL(i64 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i8* %49, i8** %54, align 8
  br label %55

55:                                               ; preds = %38, %23
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @TW_LUN_OUT(i8* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = call i32 @TW_REQ_LUN_IN(i32 %59, i32 %63)
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %128

68:                                               ; preds = %5
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %11, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TW_SGL_OUT(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %68
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCI_DEVICE_ID_3WARE_9690SA, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %90 = bitcast %struct.TYPE_18__* %89 to i32*
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = getelementptr inbounds i32, i32* %95, i64 -4
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = bitcast i32* %99 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %13, align 8
  br label %111

101:                                              ; preds = %80
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %103 = bitcast %struct.TYPE_18__* %102 to i32*
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @TW_SGL_OUT(i32 %106)
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = bitcast i32* %109 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %13, align 8
  br label %111

111:                                              ; preds = %101, %88
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, 4
  %114 = sub i64 %113, 1
  %115 = call i8* @TW_CPU_TO_SGL(i64 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %111, %68
  br label %128

128:                                              ; preds = %127, %55
  ret void
}

declare dso_local i64 @TW_OP_OUT(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @TW_REQ_LUN_IN(i32, i32) #1

declare dso_local i32 @TW_LUN_OUT(i8*) #1

declare dso_local i8* @TW_CPU_TO_SGL(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TW_SGL_OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
