; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ftl.c_prepare_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ftl.c_prepare_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_9__, %struct.xfer_info_t* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i64, i32, i32*, i32*)* }
%struct.TYPE_9__ = type { i32, i8*, i32 }
%struct.xfer_info_t = type { i32, i64, i32 }

@XFER_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ftl_cs: preparing xfer unit at 0x%x\0A\00", align 1
@SECTOR_SIZE = common dso_local global i32 0, align 4
@BLOCK_CONTROL = common dso_local global i32 0, align 4
@XFER_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @prepare_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_xfer(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.xfer_info_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load %struct.xfer_info_t*, %struct.xfer_info_t** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %15, i64 %17
  store %struct.xfer_info_t* %18, %struct.xfer_info_t** %7, align 8
  %19 = load i32, i32* @XFER_FAILED, align 4
  %20 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %21 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %23 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = bitcast %struct.TYPE_9__* %6 to i8*
  %29 = bitcast %struct.TYPE_9__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = call i32 @cpu_to_le16(i32 65535)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %33 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_10__*, i64, i32, i32*, i32*)*, i32 (%struct.TYPE_10__*, i64, i32, i32*, i32*)** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %48 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = bitcast %struct.TYPE_9__* %6 to i32*
  %51 = call i32 %42(%struct.TYPE_10__* %46, i64 %49, i32 24, i32* %11, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %121

56:                                               ; preds = %2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = add i64 %61, %67
  %69 = load i32, i32* @SECTOR_SIZE, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = sub i64 %71, 1
  %73 = load i32, i32* @SECTOR_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %72, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %78 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %79, %85
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* @BLOCK_CONTROL, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  store i8* %88, i8** %10, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %112, %56
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_10__*, i64, i32, i32*, i32*)*, i32 (%struct.TYPE_10__*, i64, i32, i32*, i32*)** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = bitcast i8** %10 to i32*
  %106 = call i32 %99(%struct.TYPE_10__* %103, i64 %104, i32 8, i32* %11, i32* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %121

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 8
  store i64 %116, i64* %12, align 8
  br label %89

117:                                              ; preds = %89
  %118 = load i32, i32* @XFER_PREPARED, align 4
  %119 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %120 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %109, %54
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @DEBUG(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
