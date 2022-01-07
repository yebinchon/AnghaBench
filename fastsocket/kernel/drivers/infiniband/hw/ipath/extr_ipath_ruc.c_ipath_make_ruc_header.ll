; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_make_ruc_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_make_ruc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_ibdev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ipath_qp = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ipath_other_headers = type { i8** }

@IPATH_LRH_BTH = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IPATH_LRH_GRH = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_make_ruc_header(%struct.ipath_ibdev* %0, %struct.ipath_qp* %1, %struct.ipath_other_headers* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipath_ibdev*, align 8
  %7 = alloca %struct.ipath_qp*, align 8
  %8 = alloca %struct.ipath_other_headers*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %6, align 8
  store %struct.ipath_qp* %1, %struct.ipath_qp** %7, align 8
  store %struct.ipath_other_headers* %2, %struct.ipath_other_headers** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %15 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 0, %16
  %18 = and i32 %17, 3
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %20 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %21, %22
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @IPATH_LRH_BTH, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IB_AH_GRH, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %5
  %35 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %36 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %37 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %42 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %45 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @ipath_make_grh(%struct.ipath_ibdev* %35, i32* %40, i32* %43, i32 %46, i32 %47)
  %49 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %50 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i32, i32* @IPATH_LRH_GRH, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %34, %5
  %57 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %58 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i8* @cpu_to_be16(i32 %64)
  %66 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %67 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %65, i8** %70, align 8
  %71 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %72 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @cpu_to_be16(i32 %74)
  %76 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %77 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* %75, i8** %80, align 8
  %81 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %82 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @SIZE_OF_CRC, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i8* @cpu_to_be16(i32 %87)
  %89 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %90 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  store i8* %88, i8** %93, align 8
  %94 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %95 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %100 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %98, %102
  %104 = call i8* @cpu_to_be16(i32 %103)
  %105 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %106 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 3
  store i8* %104, i8** %109, align 8
  %110 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %111 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %114 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ipath_get_pkey(%struct.TYPE_10__* %112, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %13, align 4
  %120 = shl i32 %119, 20
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, 4194304
  %125 = call i8* @cpu_to_be32(i32 %124)
  %126 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %8, align 8
  %127 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  store i8* %125, i8** %129, align 8
  %130 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %131 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @cpu_to_be32(i32 %132)
  %134 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %8, align 8
  %135 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  store i8* %133, i8** %137, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %8, align 8
  %141 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 2
  store i8* %139, i8** %143, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ipath_make_grh(%struct.ipath_ibdev*, i32*, i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ipath_get_pkey(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
