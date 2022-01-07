; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_copy_srq_uresp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_copy_srq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_create_srq_uresp = type { i32, i32, i32, i32, i32*, i32, i32, i64, i32 }

@OCRDMA_GEN2_FAMILY = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_RQ1_OFFSET = common dso_local global i32 0, align 4
@OCRDMA_DB_RQ_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_srq*, %struct.ib_udata*)* @ocrdma_copy_srq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_copy_srq_uresp(%struct.ocrdma_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_create_srq_uresp, align 8
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %8 = call i32 @memset(%struct.ocrdma_create_srq_uresp* %7, i32 0, i32 48)
  %9 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %10 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 8
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %16 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %34 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %39 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %37, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %32, %45
  %47 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 7
  store i64 %46, i64* %47, align 8
  %48 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %49 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %56 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %61 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OCRDMA_GEN2_FAMILY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %2
  %69 = load i32, i32* @OCRDMA_DB_GEN2_RQ1_OFFSET, align 4
  %70 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 5
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 2
  store i32 24, i32* %71, align 8
  br label %76

72:                                               ; preds = %2
  %73 = load i32, i32* @OCRDMA_DB_RQ_OFFSET, align 4
  %74 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 5
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 2
  store i32 16, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %78 = call i32 @ib_copy_to_udata(%struct.ib_udata* %77, %struct.ocrdma_create_srq_uresp* %7, i32 48)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %102

83:                                               ; preds = %76
  %84 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %85 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %7, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ocrdma_add_mmap(i32 %88, i32 %92, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %83
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %98, %81
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.ocrdma_create_srq_uresp*, i32, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.ocrdma_create_srq_uresp*, i32) #1

declare dso_local i32 @ocrdma_add_mmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
