; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_copy_pd_uresp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_copy_pd_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_pd = type { i32, %struct.ocrdma_ucontext*, i64, %struct.TYPE_4__* }
%struct.ocrdma_ucontext = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_alloc_pd_uresp = type { i32, i64, i32, i64 }

@OCRDMA_DPP_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_pd*, %struct.ib_ucontext*, %struct.ib_udata*)* @ocrdma_copy_pd_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_copy_pd_uresp(%struct.ocrdma_pd* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_pd*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocrdma_alloc_pd_uresp, align 8
  %13 = alloca %struct.ocrdma_ucontext*, align 8
  store %struct.ocrdma_pd* %0, %struct.ocrdma_pd** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %15 = call %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext* %14)
  store %struct.ocrdma_ucontext* %15, %struct.ocrdma_ucontext** %13, align 8
  %16 = call i32 @memset(%struct.ocrdma_alloc_pd_uresp* %12, i32 0, i32 32)
  %17 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %18 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, %struct.ocrdma_alloc_pd_uresp* %12, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %22 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, %struct.ocrdma_alloc_pd_uresp* %12, i32 0, i32 3
  store i64 %23, i64* %24, align 8
  %25 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %26 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %32 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %35 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %33, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %30, %41
  store i64 %42, i64* %9, align 8
  %43 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %44 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %13, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext* %49, i64 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %3
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %120

57:                                               ; preds = %3
  %58 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %59 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %64 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %70 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OCRDMA_DPP_PAGE_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %68, %74
  store i64 %75, i64* %10, align 8
  %76 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %13, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @OCRDMA_DPP_PAGE_SIZE, align 4
  %79 = call i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext* %76, i64 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  br label %112

83:                                               ; preds = %62
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @upper_32_bits(i64 %84)
  %86 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, %struct.ocrdma_alloc_pd_uresp* %12, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, %struct.ocrdma_alloc_pd_uresp* %12, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %57
  %90 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %91 = call i32 @ib_copy_to_udata(%struct.ib_udata* %90, %struct.ocrdma_alloc_pd_uresp* %12, i32 32)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  %96 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %13, align 8
  %97 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %98 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %97, i32 0, i32 1
  store %struct.ocrdma_ucontext* %96, %struct.ocrdma_ucontext** %98, align 8
  store i32 0, i32* %4, align 4
  br label %120

99:                                               ; preds = %94
  %100 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %101 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %106 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %105, i32 0, i32 1
  %107 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* @OCRDMA_DPP_PAGE_SIZE, align 4
  %110 = call i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext* %107, i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %99
  br label %112

112:                                              ; preds = %111, %82
  %113 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %114 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %113, i32 0, i32 1
  %115 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext* %115, i64 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %112, %95, %55
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @memset(%struct.ocrdma_alloc_pd_uresp*, i32, i32) #1

declare dso_local i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext*, i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.ocrdma_alloc_pd_uresp*, i32) #1

declare dso_local i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
