; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_unregister_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_unregister_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_info = type { %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32, i32, i64*, i64* }
%struct.TYPE_2__ = type { %struct.mlx4_port_info* }

@.str = private unnamed_addr constant [63 x i8] c"Have more references for index %d,no need to modify mac table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_unregister_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_port_info*, align 8
  %8 = alloca %struct.mlx4_mac_table*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %13, i64 %14
  store %struct.mlx4_port_info* %15, %struct.mlx4_port_info** %7, align 8
  %16 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %17 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %16, i32 0, i32 0
  store %struct.mlx4_mac_table* %17, %struct.mlx4_mac_table** %8, align 8
  %18 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %19 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %22 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @find_index(%struct.mlx4_dev* %21, %struct.mlx4_mac_table* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %26 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @validate_index(%struct.mlx4_dev* %25, %struct.mlx4_mac_table* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %62

31:                                               ; preds = %3
  %32 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %33 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlx4_dbg(%struct.mlx4_dev* %42, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %62

45:                                               ; preds = %31
  %46 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %47 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %55 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %52, i64 %53, i64* %56)
  %58 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %45, %41, %30
  %63 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_index(%struct.mlx4_dev*, %struct.mlx4_mac_table*, i32) #1

declare dso_local i64 @validate_index(%struct.mlx4_dev*, %struct.mlx4_mac_table*, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_set_port_mac_table(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
