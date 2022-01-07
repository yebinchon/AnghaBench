; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_create_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_pd = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_srq_init_attr = type { i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_create_srq = type { i32, i32, i32 }
%struct.mthca_ucontext = type { i32, i32 }
%struct.mthca_srq = type { %struct.ib_srq, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IB_SRQT_BASIC = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, %struct.ib_udata*)* @mthca_create_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_srq* @mthca_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mthca_create_srq, align 4
  %9 = alloca %struct.mthca_ucontext*, align 8
  %10 = alloca %struct.mthca_srq*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  store %struct.mthca_ucontext* null, %struct.mthca_ucontext** %9, align 8
  %12 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_SRQT_BASIC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_srq* @ERR_PTR(i32 %19)
  store %struct.ib_srq* %20, %struct.ib_srq** %4, align 8
  br label %138

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mthca_srq* @kmalloc(i32 16, i32 %22)
  store %struct.mthca_srq* %23, %struct.mthca_srq** %10, align 8
  %24 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %25 = icmp ne %struct.mthca_srq* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_srq* @ERR_PTR(i32 %28)
  store %struct.ib_srq* %29, %struct.ib_srq** %4, align 8
  br label %138

30:                                               ; preds = %21
  %31 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %32 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %37 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mthca_ucontext* @to_mucontext(i32 %40)
  store %struct.mthca_ucontext* %41, %struct.mthca_ucontext** %9, align 8
  %42 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %43 = call i64 @ib_copy_from_udata(%struct.mthca_create_srq* %8, %struct.ib_udata* %42, i32 12)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %133

48:                                               ; preds = %35
  %49 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %50 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @to_mdev(i32 %51)
  %53 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %9, align 8
  %54 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %53, i32 0, i32 1
  %55 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %9, align 8
  %56 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mthca_create_srq, %struct.mthca_create_srq* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.mthca_create_srq, %struct.mthca_create_srq* %8, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mthca_map_user_db(i32 %52, i32* %54, i32 %57, i32 %59, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %133

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.mthca_create_srq, %struct.mthca_create_srq* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %70 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = getelementptr inbounds %struct.mthca_create_srq, %struct.mthca_create_srq* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %76 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %30
  %78 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %79 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @to_mdev(i32 %80)
  %82 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %83 = call i32 @to_mpd(%struct.ib_pd* %82)
  %84 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %85 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %84, i32 0, i32 1
  %86 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %87 = call i32 @mthca_alloc_srq(i32 %81, i32 %83, i32* %85, %struct.mthca_srq* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %77
  %91 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %92 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %97 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @to_mdev(i32 %98)
  %100 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %9, align 8
  %101 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %100, i32 0, i32 1
  %102 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %9, align 8
  %103 = getelementptr inbounds %struct.mthca_ucontext, %struct.mthca_ucontext* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.mthca_create_srq, %struct.mthca_create_srq* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mthca_unmap_user_db(i32 %99, i32* %101, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %95, %90, %77
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %133

112:                                              ; preds = %108
  %113 = load %struct.mthca_ucontext*, %struct.mthca_ucontext** %9, align 8
  %114 = icmp ne %struct.mthca_ucontext* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %117 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %118 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %117, i32 0, i32 1
  %119 = call i64 @ib_copy_to_udata(%struct.ib_udata* %116, i32* %118, i32 4)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %123 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @to_mdev(i32 %124)
  %126 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %127 = call i32 @mthca_free_srq(i32 %125, %struct.mthca_srq* %126)
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %11, align 4
  br label %133

130:                                              ; preds = %115, %112
  %131 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %132 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %131, i32 0, i32 0
  store %struct.ib_srq* %132, %struct.ib_srq** %4, align 8
  br label %138

133:                                              ; preds = %121, %111, %65, %45
  %134 = load %struct.mthca_srq*, %struct.mthca_srq** %10, align 8
  %135 = call i32 @kfree(%struct.mthca_srq* %134)
  %136 = load i32, i32* %11, align 4
  %137 = call %struct.ib_srq* @ERR_PTR(i32 %136)
  store %struct.ib_srq* %137, %struct.ib_srq** %4, align 8
  br label %138

138:                                              ; preds = %133, %130, %26, %17
  %139 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  ret %struct.ib_srq* %139
}

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local %struct.mthca_srq* @kmalloc(i32, i32) #1

declare dso_local %struct.mthca_ucontext* @to_mucontext(i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mthca_create_srq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @mthca_map_user_db(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @mthca_alloc_srq(i32, i32, i32*, %struct.mthca_srq*) #1

declare dso_local i32 @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mthca_unmap_user_db(i32, i32*, i32, i32) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mthca_free_srq(i32, %struct.mthca_srq*) #1

declare dso_local i32 @kfree(%struct.mthca_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
