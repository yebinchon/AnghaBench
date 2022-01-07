; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_bmap_mr_rpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_bmap_mr_rpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.ehca_shca = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ehca_mr = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ehca_mr_pginfo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"kpage alloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EHCA_MAP_ENTRIES = common dso_local global i32 0, align 4
@ehca_bmap = common dso_local global %struct.TYPE_10__* null, align 8
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [93 x i8] c"ehca_reg_bmap_mr_rpages failed, h_ret=%lli e_mr=%p top=%x lkey=%x hca_hndl=%llx mr_hndl=%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*)* @ehca_reg_bmap_mr_rpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_reg_bmap_mr_rpages(%struct.ehca_shca* %0, %struct.ehca_mr* %1, %struct.ehca_mr_pginfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca %struct.ehca_mr*, align 8
  %7 = alloca %struct.ehca_mr_pginfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %5, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %6, align 8
  store %struct.ehca_mr_pginfo* %2, %struct.ehca_mr_pginfo** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64* @ehca_alloc_fw_ctrlblock(i32 %11)
  store i64* %12, i64** %10, align 8
  %13 = load i64*, i64** %10, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %17 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %16, i32 0, i32 1
  %18 = call i32 (i32*, i8*, ...) @ehca_err(i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EHCA_MAP_ENTRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ehca_bmap, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ehca_bmap_valid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %53

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = load i64*, i64** %10, align 8
  %40 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %41 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %42 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %43 = call i64 @ehca_reg_mr_dir_sections(i32 %38, i64* %39, %struct.ehca_shca* %40, %struct.ehca_mr* %41, %struct.ehca_mr_pginfo* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @H_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %56

52:                                               ; preds = %47, %37
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %22

56:                                               ; preds = %51, %22
  %57 = load i64*, i64** %10, align 8
  %58 = call i32 @ehca_free_fw_ctrlblock(i64* %57)
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @H_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %85

63:                                               ; preds = %56
  %64 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %65 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %64, i32 0, i32 1
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %70 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %75 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %79 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32*, i8*, ...) @ehca_err(i32* %65, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i64 %66, %struct.ehca_mr* %67, i32 %68, i32 %73, i32 %77, i32 %81)
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @ehca2ib_return_code(i64 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %63, %62, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64* @ehca_alloc_fw_ctrlblock(i32) #1

declare dso_local i32 @ehca_err(i32*, i8*, ...) #1

declare dso_local i32 @ehca_bmap_valid(i32) #1

declare dso_local i64 @ehca_reg_mr_dir_sections(i32, i64*, %struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*) #1

declare dso_local i32 @ehca_free_fw_ctrlblock(i64*) #1

declare dso_local i32 @ehca2ib_return_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
