; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_page_vec_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_page_vec_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_data_buf = type { i32 }
%struct.iser_page_vec = type { i32, i32, i64 }
%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Translating sg sz: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sg len %d page_vec_len %d\0A\00", align 1
@SIZE_4K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"page_vec too short to hold this SG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_data_buf*, %struct.iser_page_vec*, %struct.ib_device*)* @iser_page_vec_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_page_vec_build(%struct.iser_data_buf* %0, %struct.iser_page_vec* %1, %struct.ib_device* %2) #0 {
  %4 = alloca %struct.iser_data_buf*, align 8
  %5 = alloca %struct.iser_page_vec*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  store %struct.iser_data_buf* %0, %struct.iser_data_buf** %4, align 8
  store %struct.iser_page_vec* %1, %struct.iser_page_vec** %5, align 8
  store %struct.ib_device* %2, %struct.ib_device** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iser_page_vec*, %struct.iser_page_vec** %5, align 8
  %9 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.iser_page_vec*, %struct.iser_page_vec** %5, align 8
  %11 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %13 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i32, ...) @iser_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %17 = load %struct.iser_page_vec*, %struct.iser_page_vec** %5, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call i32 @iser_sg_to_page_vec(%struct.iser_data_buf* %16, %struct.iser_page_vec* %17, %struct.ib_device* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %21 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, i32, ...) @iser_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.iser_page_vec*, %struct.iser_page_vec** %5, align 8
  %27 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SIZE_4K, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.iser_page_vec*, %struct.iser_page_vec** %5, align 8
  %32 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = call i32 @iser_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %38 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %39 = call i32 @iser_data_buf_dump(%struct.iser_data_buf* %37, %struct.ib_device* %38)
  %40 = load %struct.iser_page_vec*, %struct.iser_page_vec** %5, align 8
  %41 = call i32 @iser_dump_page_vec(%struct.iser_page_vec* %40)
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %35, %3
  ret void
}

declare dso_local i32 @iser_dbg(i8*, i32, ...) #1

declare dso_local i32 @iser_sg_to_page_vec(%struct.iser_data_buf*, %struct.iser_page_vec*, %struct.ib_device*) #1

declare dso_local i32 @iser_err(i8*) #1

declare dso_local i32 @iser_data_buf_dump(%struct.iser_data_buf*, %struct.ib_device*) #1

declare dso_local i32 @iser_dump_page_vec(%struct.iser_page_vec*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
