; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_set_pagebuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_set_pagebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr_pginfo = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bad pginfo->type=%x\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_set_pagebuf(%struct.ehca_mr_pginfo* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ehca_mr_pginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ehca_mr_pginfo* %0, %struct.ehca_mr_pginfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %9 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %39 [
    i32 129, label %11
    i32 128, label %16
    i32 130, label %34
  ]

11:                                               ; preds = %3
  %12 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ehca_set_pagebuf_phys(%struct.ehca_mr_pginfo* %12, i32 %13, i32* %14)
  store i32 %15, i32* %7, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %19 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ehca_set_pagebuf_user1(%struct.ehca_mr_pginfo* %23, i32 %24, i32* %25)
  br label %32

27:                                               ; preds = %16
  %28 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ehca_set_pagebuf_user2(%struct.ehca_mr_pginfo* %28, i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i32 [ %26, %22 ], [ %31, %27 ]
  store i32 %33, i32* %7, align 4
  br label %46

34:                                               ; preds = %3
  %35 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ehca_set_pagebuf_fmr(%struct.ehca_mr_pginfo* %35, i32 %36, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %46

39:                                               ; preds = %3
  %40 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %4, align 8
  %41 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %34, %32, %11
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @ehca_set_pagebuf_phys(%struct.ehca_mr_pginfo*, i32, i32*) #1

declare dso_local i32 @ehca_set_pagebuf_user1(%struct.ehca_mr_pginfo*, i32, i32*) #1

declare dso_local i32 @ehca_set_pagebuf_user2(%struct.ehca_mr_pginfo*, i32, i32*) #1

declare dso_local i32 @ehca_set_pagebuf_fmr(%struct.ehca_mr_pginfo*, i32, i32*) #1

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
