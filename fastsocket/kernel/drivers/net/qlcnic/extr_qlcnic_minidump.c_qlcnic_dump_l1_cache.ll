; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_l1_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_l1_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__cache }
%struct.__cache = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_dump_l1_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dump_l1_cache(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_dump_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.__cache*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.__cache* %15, %struct.__cache** %12, align 8
  %16 = load %struct.__cache*, %struct.__cache** %12, align 8
  %17 = getelementptr inbounds %struct.__cache, %struct.__cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %75, %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.__cache*, %struct.__cache** %12, align 8
  %22 = getelementptr inbounds %struct.__cache, %struct.__cache* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %19
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %27 = load %struct.__cache*, %struct.__cache** %12, align 8
  %28 = getelementptr inbounds %struct.__cache, %struct.__cache* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %26, i32 %29, i32 %30)
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %33 = load %struct.__cache*, %struct.__cache** %12, align 8
  %34 = getelementptr inbounds %struct.__cache, %struct.__cache* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.__cache*, %struct.__cache** %12, align 8
  %37 = getelementptr inbounds %struct.__cache, %struct.__cache* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @LSW(i32 %38)
  %40 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %32, i32 %35, i32 %39)
  %41 = load %struct.__cache*, %struct.__cache** %12, align 8
  %42 = getelementptr inbounds %struct.__cache, %struct.__cache* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  %44 = load %struct.__cache*, %struct.__cache** %12, align 8
  %45 = getelementptr inbounds %struct.__cache, %struct.__cache* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %50, %25
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @cpu_to_le32(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.__cache*, %struct.__cache** %12, align 8
  %59 = getelementptr inbounds %struct.__cache, %struct.__cache* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  br label %47

67:                                               ; preds = %47
  %68 = load %struct.__cache*, %struct.__cache** %12, align 8
  %69 = getelementptr inbounds %struct.__cache, %struct.__cache* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %19

78:                                               ; preds = %19
  %79 = load %struct.__cache*, %struct.__cache** %12, align 8
  %80 = getelementptr inbounds %struct.__cache, %struct.__cache* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.__cache*, %struct.__cache** %12, align 8
  %83 = getelementptr inbounds %struct.__cache, %struct.__cache* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  ret i32 %88
}

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
