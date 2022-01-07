; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_load_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_load_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_8__*, i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }

@TW_OP_EXECUTE_SCSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32, i32, i32)* @twl_load_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_load_sgl(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @TW_OP_OUT(i32 %19)
  %21 = load i64, i64* @TW_OP_EXECUTE_SCSI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %12, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @TW_LUN_OUT(i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @TW_REQ_LUN_IN(i32 %30, i32 %31)
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = sub i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i8* @TW_CPU_TO_SGL(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @TW_CPU_TO_SGL(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i8* %51, i8** %56, align 8
  br label %57

57:                                               ; preds = %38, %23
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @TW_LUN_OUT(i8* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = call i32 @TW_REQ_LUN_IN(i32 %61, i32 %65)
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %118

70:                                               ; preds = %5
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %11, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @TW_SGL_OUT(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %70
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %84 = bitcast %struct.TYPE_13__* %83 to i32*
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = getelementptr inbounds i32, i32* %89, i64 -4
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = bitcast i32* %94 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %13, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 4
  %99 = sub i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i8* @TW_CPU_TO_SGL(i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i8* @TW_CPU_TO_SGL(i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 0
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %82, %70
  br label %118

118:                                              ; preds = %117, %57
  ret void
}

declare dso_local i64 @TW_OP_OUT(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @TW_REQ_LUN_IN(i32, i32) #1

declare dso_local i32 @TW_LUN_OUT(i8*) #1

declare dso_local i8* @TW_CPU_TO_SGL(i32) #1

declare dso_local i64 @TW_SGL_OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
