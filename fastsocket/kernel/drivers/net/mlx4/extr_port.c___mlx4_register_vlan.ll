; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_register_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_register_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vlan_table = type { i64, i64, i32*, i32, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx4_vlan_table }

@ENOSPC = common dso_local global i32 0, align 4
@MLX4_VLAN_REGULAR = common dso_local global i32 0, align 4
@MLX4_MAX_VLAN_NUM = common dso_local global i32 0, align 4
@MLX4_VLAN_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_VLAN_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed adding vlan: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_register_vlan(%struct.mlx4_dev* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_vlan_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.mlx4_vlan_table* %19, %struct.mlx4_vlan_table** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %20 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %21 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %24 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %145

33:                                               ; preds = %4
  %34 = load i32, i32* @MLX4_VLAN_REGULAR, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %87, %33
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MLX4_MAX_VLAN_NUM, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %44 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %12, align 4
  br label %87

53:                                               ; preds = %42, %39
  %54 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MLX4_VLAN_MASK, align 4
  %65 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %66 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @be32_to_cpu(i64 %71)
  %73 = and i32 %64, %72
  %74 = icmp eq i32 %63, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %62
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %79 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %145

86:                                               ; preds = %62, %53
  br label %87

87:                                               ; preds = %86, %51
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %35

90:                                               ; preds = %35
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %145

96:                                               ; preds = %90
  %97 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 1, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @MLX4_VLAN_VALID, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @cpu_to_be32(i32 %105)
  %107 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %108 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %107, i32 0, i32 4
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %106, i64* %112, align 8
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = call i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %113, i64 %114, i64* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %96
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @mlx4_warn(%struct.mlx4_dev* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 0, i32* %131, align 4
  %132 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %132, i32 0, i32 4
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 0, i64* %137, align 8
  br label %145

138:                                              ; preds = %96
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %8, align 8
  store i32 %139, i32* %140, align 4
  %141 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %142 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %138, %122, %93, %75, %30
  %146 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %9, align 8
  %147 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %146, i32 0, i32 3
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
