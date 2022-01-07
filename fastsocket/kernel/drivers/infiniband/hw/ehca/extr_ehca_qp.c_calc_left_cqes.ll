; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_calc_left_cqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_calc_left_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_queue = type { i64 }
%struct.ehca_queue_map = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [63 x i8] c"Invalid offset for calculating left cqes wqe_p=%#llx wqe_v=%p\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.ipz_queue*, %struct.ehca_queue_map*)* @calc_left_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_left_cqes(i64 %0, %struct.ipz_queue* %1, %struct.ehca_queue_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipz_queue*, align 8
  %7 = alloca %struct.ehca_queue_map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.ipz_queue* %1, %struct.ipz_queue** %6, align 8
  store %struct.ehca_queue_map* %2, %struct.ehca_queue_map** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, 9223372036854775807
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i8* @abs_to_virt(i64 %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.ipz_queue*, %struct.ipz_queue** %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @ipz_queue_abs_to_offset(%struct.ipz_queue* %16, i64 %17, i64* %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %21, i8* %22)
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %3
  %27 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %7, align 8
  %28 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %7, align 8
  %31 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @next_index(i32 %29, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.ipz_queue*, %struct.ipz_queue** %6, align 8
  %36 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = udiv i64 %34, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %59, %26
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %7, align 8
  %46 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %7, align 8
  %56 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %44
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %7, align 8
  %62 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @next_index(i32 %60, i32 %63)
  store i32 %64, i32* %11, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %7, align 8
  %68 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @abs_to_virt(i64) #1

declare dso_local i64 @ipz_queue_abs_to_offset(%struct.ipz_queue*, i64, i64*) #1

declare dso_local i32 @ehca_gen_err(i8*, i64, i8*) #1

declare dso_local i32 @next_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
