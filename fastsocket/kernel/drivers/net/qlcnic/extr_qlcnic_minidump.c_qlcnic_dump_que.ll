; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_que.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__queue }
%struct.__queue = type { i32, i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_dump_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dump_que(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_dump_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.__queue*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.__queue* %16, %struct.__queue** %13, align 8
  %17 = load %struct.__queue*, %struct.__queue** %13, align 8
  %18 = getelementptr inbounds %struct.__queue, %struct.__queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.__queue*, %struct.__queue** %13, align 8
  %21 = getelementptr inbounds %struct.__queue, %struct.__queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %69, %3
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.__queue*, %struct.__queue** %13, align 8
  %26 = getelementptr inbounds %struct.__queue, %struct.__queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %31 = load %struct.__queue*, %struct.__queue** %13, align 8
  %32 = getelementptr inbounds %struct.__queue, %struct.__queue* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %30, i32 %33, i32 %34)
  %36 = load %struct.__queue*, %struct.__queue** %13, align 8
  %37 = getelementptr inbounds %struct.__queue, %struct.__queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %58, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %51 = load %struct.__queue*, %struct.__queue** %13, align 8
  %52 = getelementptr inbounds %struct.__queue, %struct.__queue* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load %struct.__queue*, %struct.__queue** %13, align 8
  %63 = getelementptr inbounds %struct.__queue, %struct.__queue* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %23

72:                                               ; preds = %23
  %73 = load %struct.__queue*, %struct.__queue** %13, align 8
  %74 = getelementptr inbounds %struct.__queue, %struct.__queue* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
