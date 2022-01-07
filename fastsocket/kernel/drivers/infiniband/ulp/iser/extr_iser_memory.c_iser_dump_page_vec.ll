; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_dump_page_vec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_dump_page_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_page_vec = type { i32, i64, i64* }

@.str = private unnamed_addr constant [33 x i8] c"page vec length %d data size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_page_vec*)* @iser_dump_page_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_dump_page_vec(%struct.iser_page_vec* %0) #0 {
  %2 = alloca %struct.iser_page_vec*, align 8
  %3 = alloca i32, align 4
  store %struct.iser_page_vec* %0, %struct.iser_page_vec** %2, align 8
  %4 = load %struct.iser_page_vec*, %struct.iser_page_vec** %2, align 8
  %5 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.iser_page_vec*, %struct.iser_page_vec** %2, align 8
  %8 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @iser_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.iser_page_vec*, %struct.iser_page_vec** %2, align 8
  %14 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.iser_page_vec*, %struct.iser_page_vec** %2, align 8
  %20 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @iser_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18, i64 %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %11

30:                                               ; preds = %11
  ret void
}

declare dso_local i32 @iser_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
