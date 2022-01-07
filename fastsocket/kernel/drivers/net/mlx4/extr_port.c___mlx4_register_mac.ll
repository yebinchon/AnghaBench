; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_register_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_register_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_port_info = type { %struct.mlx4_mac_table }
%struct.mlx4_mac_table = type { i32*, i64, i64, i32, i64* }
%struct.TYPE_2__ = type { %struct.mlx4_port_info* }

@.str = private unnamed_addr constant [37 x i8] c"Registering MAC: 0x%llx for port %d\0A\00", align 1
@MLX4_MAX_MAC_NUM = common dso_local global i32 0, align 4
@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Free MAC index is %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@MLX4_MAC_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed adding MAC: 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_register_mac(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_port_info*, align 8
  %8 = alloca %struct.mlx4_mac_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %13 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %15, i64 %16
  store %struct.mlx4_port_info* %17, %struct.mlx4_port_info** %7, align 8
  %18 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %18, i32 0, i32 0
  store %struct.mlx4_mac_table* %19, %struct.mlx4_mac_table** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24)
  %26 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %26, i32 0, i32 3
  %28 = call i32 @mutex_lock(i32* %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %71, %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %38 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %11, align 4
  br label %71

47:                                               ; preds = %36, %33
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MLX4_MAC_MASK, align 4
  %50 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %51 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @be64_to_cpu(i64 %56)
  %58 = and i32 %49, %57
  %59 = icmp eq i32 %48, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %63 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %131

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %82 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %131

88:                                               ; preds = %74
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MLX4_MAC_VALID, align 4
  %91 = or i32 %89, %90
  %92 = call i64 @cpu_to_be64(i32 %91)
  %93 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %94 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %102 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %99, i64 %100, i64* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %88
  %109 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 @mlx4_err(%struct.mlx4_dev* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %111)
  %113 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %114 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %113, i32 0, i32 4
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  br label %131

119:                                              ; preds = %88
  %120 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %121 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %10, align 4
  %127 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %119, %108, %85, %60
  %132 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %8, align 8
  %133 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %132, i32 0, i32 3
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @be64_to_cpu(i64) #1

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
