; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_dereg_internal_maxmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_dereg_internal_maxmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.ehca_mr*, i32 }
%struct.ehca_mr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ib_pd* }
%struct.ib_pd = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"bad call, shca=%p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"dereg internal max-MR failed, ret=%i e_maxmr=%p shca=%p lkey=%x\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ret=%i shca=%p shca->maxmr=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_dereg_internal_maxmr(%struct.ehca_shca* %0) #0 {
  %2 = alloca %struct.ehca_shca*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehca_mr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %2, align 8
  %6 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %7 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %6, i32 0, i32 0
  %8 = load %struct.ehca_mr*, %struct.ehca_mr** %7, align 8
  %9 = icmp ne %struct.ehca_mr* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %12 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %11, i32 0, i32 1
  %13 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %14 = call i32 (i32*, i8*, ...) @ehca_err(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ehca_shca* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %19 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %18, i32 0, i32 0
  %20 = load %struct.ehca_mr*, %struct.ehca_mr** %19, align 8
  store %struct.ehca_mr* %20, %struct.ehca_mr** %4, align 8
  %21 = load %struct.ehca_mr*, %struct.ehca_mr** %4, align 8
  %22 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.ib_pd*, %struct.ib_pd** %24, align 8
  store %struct.ib_pd* %25, %struct.ib_pd** %5, align 8
  %26 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %27 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %26, i32 0, i32 0
  store %struct.ehca_mr* null, %struct.ehca_mr** %27, align 8
  %28 = load %struct.ehca_mr*, %struct.ehca_mr** %4, align 8
  %29 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @ehca_dereg_mr(%struct.TYPE_4__* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %17
  %35 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %36 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %35, i32 0, i32 1
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.ehca_mr*, %struct.ehca_mr** %4, align 8
  %39 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %40 = load %struct.ehca_mr*, %struct.ehca_mr** %4, align 8
  %41 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32*, i8*, ...) @ehca_err(i32* %36, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %37, %struct.ehca_mr* %38, %struct.ehca_shca* %39, i32 %44)
  %46 = load %struct.ehca_mr*, %struct.ehca_mr** %4, align 8
  %47 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %48 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %47, i32 0, i32 0
  store %struct.ehca_mr* %46, %struct.ehca_mr** %48, align 8
  br label %53

49:                                               ; preds = %17
  %50 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %51 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %50, i32 0, i32 0
  %52 = call i32 @atomic_dec(i32* %51)
  br label %53

53:                                               ; preds = %49, %34, %10
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %58 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %57, i32 0, i32 1
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %61 = load %struct.ehca_shca*, %struct.ehca_shca** %2, align 8
  %62 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %61, i32 0, i32 0
  %63 = load %struct.ehca_mr*, %struct.ehca_mr** %62, align 8
  %64 = call i32 (i32*, i8*, ...) @ehca_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %59, %struct.ehca_shca* %60, %struct.ehca_mr* %63)
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ehca_err(i32*, i8*, ...) #1

declare dso_local i32 @ehca_dereg_mr(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
