; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_create_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ah_attr = type { i64, i32, i32, i32 }
%struct.ipath_ah = type { %struct.ib_ah, %struct.ib_ah_attr }
%struct.ipath_ibdev = type { i64, i32 }

@IPATH_MULTICAST_LID_BASE = common dso_local global i64 0, align 8
@IPATH_PERMISSIVE_LID = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_ipath_max_ahs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*)* @ipath_create_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @ipath_create_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.ipath_ah*, align 8
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca i64, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.ipath_ibdev* @to_idev(%struct.TYPE_2__* %11)
  store %struct.ipath_ibdev* %12, %struct.ipath_ibdev** %7, align 8
  %13 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %14 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPATH_MULTICAST_LID_BASE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %20 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPATH_PERMISSIVE_LID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IB_AH_GRH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_ah* @ERR_PTR(i32 %33)
  store %struct.ib_ah* %34, %struct.ib_ah** %6, align 8
  br label %115

35:                                               ; preds = %24, %18, %2
  %36 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %37 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.ib_ah* @ERR_PTR(i32 %42)
  store %struct.ib_ah* %43, %struct.ib_ah** %6, align 8
  br label %115

44:                                               ; preds = %35
  %45 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %46 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %51 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %54 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %52, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49, %44
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.ib_ah* @ERR_PTR(i32 %61)
  store %struct.ib_ah* %62, %struct.ib_ah** %6, align 8
  br label %115

63:                                               ; preds = %49
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.ipath_ah* @kmalloc(i32 32, i32 %64)
  store %struct.ipath_ah* %65, %struct.ipath_ah** %5, align 8
  %66 = load %struct.ipath_ah*, %struct.ipath_ah** %5, align 8
  %67 = icmp ne %struct.ipath_ah* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.ib_ah* @ERR_PTR(i32 %70)
  store %struct.ib_ah* %71, %struct.ib_ah** %6, align 8
  br label %115

72:                                               ; preds = %63
  %73 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %74 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %73, i32 0, i32 1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %78 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ib_ipath_max_ahs, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %84 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %83, i32 0, i32 1
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.ipath_ah*, %struct.ipath_ah** %5, align 8
  %88 = call i32 @kfree(%struct.ipath_ah* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.ib_ah* @ERR_PTR(i32 %90)
  store %struct.ib_ah* %91, %struct.ib_ah** %6, align 8
  br label %115

92:                                               ; preds = %72
  %93 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %94 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %98 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %97, i32 0, i32 1
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.ipath_ah*, %struct.ipath_ah** %5, align 8
  %102 = getelementptr inbounds %struct.ipath_ah, %struct.ipath_ah* %101, i32 0, i32 1
  %103 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %104 = bitcast %struct.ib_ah_attr* %102 to i8*
  %105 = bitcast %struct.ib_ah_attr* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 24, i1 false)
  %106 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %107 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ipath_ib_rate_to_mult(i32 %108)
  %110 = load %struct.ipath_ah*, %struct.ipath_ah** %5, align 8
  %111 = getelementptr inbounds %struct.ipath_ah, %struct.ipath_ah* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  %113 = load %struct.ipath_ah*, %struct.ipath_ah** %5, align 8
  %114 = getelementptr inbounds %struct.ipath_ah, %struct.ipath_ah* %113, i32 0, i32 0
  store %struct.ib_ah* %114, %struct.ib_ah** %6, align 8
  br label %115

115:                                              ; preds = %92, %82, %68, %59, %40, %31
  %116 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  ret %struct.ib_ah* %116
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.TYPE_2__*) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.ipath_ah* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ipath_ah*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipath_ib_rate_to_mult(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
