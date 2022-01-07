; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_replace_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_replace_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_info = type { i32, %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32, i64* }
%struct.TYPE_2__ = type { %struct.mlx4_port_info* }

@MLX4_MAC_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed adding MAC: 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_replace_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_port_info*, align 8
  %10 = alloca %struct.mlx4_mac_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %16, i64 %17
  store %struct.mlx4_port_info* %18, %struct.mlx4_port_info** %9, align 8
  %19 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %9, align 8
  %20 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %19, i32 0, i32 1
  store %struct.mlx4_mac_table* %20, %struct.mlx4_mac_table** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %9, align 8
  %23 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %27 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %30 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @validate_index(%struct.mlx4_dev* %29, %struct.mlx4_mac_table* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %68

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MLX4_MAC_VALID, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @cpu_to_be64(i32 %39)
  %41 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %42 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %50 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %47, i64 %48, i64* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %36
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @mlx4_err(%struct.mlx4_dev* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %62 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %56, %36
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %10, align 8
  %70 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @validate_index(%struct.mlx4_dev*, %struct.mlx4_mac_table*, i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @mlx4_set_port_mac_table(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
