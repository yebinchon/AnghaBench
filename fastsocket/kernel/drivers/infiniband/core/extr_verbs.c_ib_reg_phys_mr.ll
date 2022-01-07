; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_reg_phys_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_reg_phys_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }
%struct.ib_phys_buf = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ib_reg_phys_mr(%struct.ib_pd* %0, %struct.ib_phys_buf* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca %struct.ib_phys_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %7, align 8
  store %struct.ib_phys_buf* %1, %struct.ib_phys_buf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)**
  %18 = load %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)*, %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)** %17, align 8
  %19 = icmp ne %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ib_mr* @ERR_PTR(i32 %22)
  store %struct.ib_mr* %23, %struct.ib_mr** %6, align 8
  br label %59

24:                                               ; preds = %5
  %25 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %26 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)**
  %30 = load %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)*, %struct.ib_mr* (%struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)** %29, align 8
  %31 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %32 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call %struct.ib_mr* %30(%struct.ib_pd* %31, %struct.ib_phys_buf* %32, i32 %33, i32 %34, i32* %35)
  store %struct.ib_mr* %36, %struct.ib_mr** %12, align 8
  %37 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %38 = call i32 @IS_ERR(%struct.ib_mr* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %24
  %41 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %42 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %45 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %44, i32 0, i32 3
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %47 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %48 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %47, i32 0, i32 2
  store %struct.ib_pd* %46, %struct.ib_pd** %48, align 8
  %49 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %50 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %52 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %51, i32 0, i32 0
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %55 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %54, i32 0, i32 0
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  br label %57

57:                                               ; preds = %40, %24
  %58 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  store %struct.ib_mr* %58, %struct.ib_mr** %6, align 8
  br label %59

59:                                               ; preds = %57, %20
  %60 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  ret %struct.ib_mr* %60
}

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
