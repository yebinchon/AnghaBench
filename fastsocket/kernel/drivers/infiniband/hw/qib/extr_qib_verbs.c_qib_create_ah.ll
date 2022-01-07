; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_create_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32 }
%struct.qib_ah = type { %struct.ib_ah, i32, %struct.ib_ah_attr }
%struct.qib_ibdev = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_qib_max_ahs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*)* @qib_create_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @qib_create_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.qib_ah*, align 8
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.qib_ibdev*, align 8
  %8 = alloca i64, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qib_ibdev* @to_idev(i32 %11)
  store %struct.qib_ibdev* %12, %struct.qib_ibdev** %7, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %17 = call i64 @qib_check_ah(i32 %15, %struct.ib_ah_attr* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ib_ah* @ERR_PTR(i32 %21)
  store %struct.ib_ah* %22, %struct.ib_ah** %6, align 8
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.qib_ah* @kmalloc(i32 12, i32 %24)
  store %struct.qib_ah* %25, %struct.qib_ah** %5, align 8
  %26 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %27 = icmp ne %struct.qib_ah* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ib_ah* @ERR_PTR(i32 %30)
  store %struct.ib_ah* %31, %struct.ib_ah** %6, align 8
  br label %71

32:                                               ; preds = %23
  %33 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %34 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %33, i32 0, i32 1
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %38 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ib_qib_max_ahs, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %44 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %48 = call i32 @kfree(%struct.qib_ah* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.ib_ah* @ERR_PTR(i32 %50)
  store %struct.ib_ah* %51, %struct.ib_ah** %6, align 8
  br label %71

52:                                               ; preds = %32
  %53 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %54 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %58 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %57, i32 0, i32 1
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %62 = getelementptr inbounds %struct.qib_ah, %struct.qib_ah* %61, i32 0, i32 2
  %63 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %64 = bitcast %struct.ib_ah_attr* %62 to i8*
  %65 = bitcast %struct.ib_ah_attr* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %67 = getelementptr inbounds %struct.qib_ah, %struct.qib_ah* %66, i32 0, i32 1
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  %69 = load %struct.qib_ah*, %struct.qib_ah** %5, align 8
  %70 = getelementptr inbounds %struct.qib_ah, %struct.qib_ah* %69, i32 0, i32 0
  store %struct.ib_ah* %70, %struct.ib_ah** %6, align 8
  br label %71

71:                                               ; preds = %52, %42, %28, %19
  %72 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  ret %struct.ib_ah* %72
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i64 @qib_check_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.qib_ah* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.qib_ah*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
