; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_ruc_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_ruc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i64, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i8**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qib_other_headers = type { i8** }
%struct.qib_ibport = type { i32* }
%struct.TYPE_12__ = type { i32 }

@QIB_LRH_BTH = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@QIB_LRH_GRH = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i64 0, align 8
@IB_BTH_MIG_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_make_ruc_header(%struct.qib_qp* %0, %struct.qib_other_headers* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_qp*, align 8
  %6 = alloca %struct.qib_other_headers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qib_qp* %0, %struct.qib_qp** %5, align 8
  store %struct.qib_other_headers* %1, %struct.qib_other_headers** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.qib_ibport* @to_iport(i32 %16, i32 %19)
  store %struct.qib_ibport* %20, %struct.qib_ibport** %9, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 0, %23
  %25 = and i32 %24, 3
  store i32 %25, i32* %12, align 4
  %26 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %27 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %28, %29
  %31 = ashr i32 %30, 2
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @QIB_LRH_BTH, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %34 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IB_AH_GRH, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %4
  %42 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %43 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %44 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %43, i32 0, i32 5
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %50 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %53 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @qib_make_grh(%struct.qib_ibport* %42, i32* %48, i32* %51, i32 %54, i32 %55)
  %57 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %58 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load i32, i32* @QIB_LRH_GRH, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %41, %4
  %65 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %66 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %69 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 12
  %75 = sext i32 %74 to i64
  %76 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 %79, 4
  %81 = or i64 %75, %80
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = or i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i8* @cpu_to_be16(i32 %86)
  %88 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %89 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %88, i32 0, i32 5
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %87, i8** %93, align 8
  %94 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %95 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_be16(i32 %97)
  %99 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 5
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  store i8* %98, i8** %104, align 8
  %105 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %106 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @SIZE_OF_CRC, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i8* @cpu_to_be16(i32 %111)
  %113 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %114 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %113, i32 0, i32 5
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  store i8* %112, i8** %118, align 8
  %119 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %120 = call %struct.TYPE_12__* @ppd_from_ibp(%struct.qib_ibport* %119)
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %124 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %122, %126
  %128 = call i8* @cpu_to_be16(i32 %127)
  %129 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %130 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %129, i32 0, i32 5
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 3
  store i8* %128, i8** %134, align 8
  %135 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %136 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %137 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @qib_get_pkey(%struct.qib_ibport* %135, i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %12, align 4
  %143 = shl i32 %142, 20
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %147 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IB_MIG_MIGRATED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %64
  %152 = load i32, i32* @IB_BTH_MIG_REQ, align 4
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %64
  %156 = load i32, i32* %7, align 4
  %157 = call i8* @cpu_to_be32(i32 %156)
  %158 = load %struct.qib_other_headers*, %struct.qib_other_headers** %6, align 8
  %159 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  store i8* %157, i8** %161, align 8
  %162 = load %struct.qib_qp*, %struct.qib_qp** %5, align 8
  %163 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @cpu_to_be32(i32 %164)
  %166 = load %struct.qib_other_headers*, %struct.qib_other_headers** %6, align 8
  %167 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 1
  store i8* %165, i8** %169, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i8* @cpu_to_be32(i32 %170)
  %172 = load %struct.qib_other_headers*, %struct.qib_other_headers** %6, align 8
  %173 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 2
  store i8* %171, i8** %175, align 8
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qib_make_grh(%struct.qib_ibport*, i32*, i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_12__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
