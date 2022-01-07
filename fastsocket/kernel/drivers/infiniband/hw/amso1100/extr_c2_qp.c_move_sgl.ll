; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_move_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_move_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_data_addr = type { i8*, i64, i8* }
%struct.ib_sge = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_data_addr*, %struct.ib_sge*, i32, i64*, i64*)* @move_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_sgl(%struct.c2_data_addr* %0, %struct.ib_sge* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.c2_data_addr*, align 8
  %8 = alloca %struct.ib_sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.c2_data_addr* %0, %struct.c2_data_addr** %7, align 8
  store %struct.ib_sge* %1, %struct.ib_sge** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %61, %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %14
  %18 = load i64, i64* %12, align 8
  %19 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %20 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* %12, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %81

28:                                               ; preds = %17
  %29 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %30 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %35 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %40 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @cpu_to_be32(i64 %41)
  %43 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %44 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %46 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @cpu_to_be64(i32 %47)
  %49 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %50 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %52 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @cpu_to_be32(i64 %53)
  %55 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %56 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %58 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %57, i32 1
  store %struct.c2_data_addr* %58, %struct.c2_data_addr** %7, align 8
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %33, %28
  %62 = load %struct.ib_sge*, %struct.ib_sge** %8, align 8
  %63 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %62, i32 1
  store %struct.ib_sge* %63, %struct.ib_sge** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %71 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %70, i32 0, i32 2
  store i8* null, i8** %71, align 8
  %72 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %73 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.c2_data_addr*, %struct.c2_data_addr** %7, align 8
  %75 = getelementptr inbounds %struct.c2_data_addr, %struct.c2_data_addr* %74, i32 0, i32 0
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i64, i64* %12, align 8
  %78 = load i64*, i64** %10, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64*, i64** %11, align 8
  store i64 %79, i64* %80, align 8
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %25
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
