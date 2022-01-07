; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_fmr_check_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_fmr_check_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"bad list_len, list_len=%x e_fmr->fmr_max_pages=%x fmr=%p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"bad page, i=%x *page=%llx page=%p fmr=%p fmr_page_size=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_fmr_check_page_list(%struct.ehca_mr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_mr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ehca_mr* %0, %struct.ehca_mr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %15 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %21 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %24 = call i32 (i8*, i32, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, %struct.ehca_mr* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %12
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %56, %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %37 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %47 = load %struct.ehca_mr*, %struct.ehca_mr** %5, align 8
  %48 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32* %45, %struct.ehca_mr* %46, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %33
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %29

59:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %41, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @ehca_gen_err(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
