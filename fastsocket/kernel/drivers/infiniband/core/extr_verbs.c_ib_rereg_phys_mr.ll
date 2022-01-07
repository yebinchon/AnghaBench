; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_rereg_phys_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_rereg_phys_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { %struct.TYPE_2__*, %struct.ib_pd*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32 }
%struct.ib_phys_buf = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IB_MR_REREG_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_rereg_phys_mr(%struct.ib_mr* %0, i32 %1, %struct.ib_pd* %2, %struct.ib_phys_buf* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca %struct.ib_phys_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ib_pd*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ib_pd* %2, %struct.ib_pd** %11, align 8
  store %struct.ib_phys_buf* %3, %struct.ib_phys_buf** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %19 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)**
  %23 = load i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)*, i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %70

28:                                               ; preds = %7
  %29 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %30 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %29, i32 0, i32 2
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %70

36:                                               ; preds = %28
  %37 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %38 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %37, i32 0, i32 1
  %39 = load %struct.ib_pd*, %struct.ib_pd** %38, align 8
  store %struct.ib_pd* %39, %struct.ib_pd** %16, align 8
  %40 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %41 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)**
  %45 = load i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)*, i32 (%struct.ib_mr*, i32, %struct.ib_pd*, %struct.ib_phys_buf*, i32, i32, i32*)** %44, align 8
  %46 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %49 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 %45(%struct.ib_mr* %46, i32 %47, %struct.ib_pd* %48, %struct.ib_phys_buf* %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @IB_MR_REREG_PD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.ib_pd*, %struct.ib_pd** %16, align 8
  %63 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %62, i32 0, i32 0
  %64 = call i32 @atomic_dec(i32* %63)
  %65 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %66 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %65, i32 0, i32 0
  %67 = call i32 @atomic_inc(i32* %66)
  br label %68

68:                                               ; preds = %61, %56, %36
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %33, %25
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
