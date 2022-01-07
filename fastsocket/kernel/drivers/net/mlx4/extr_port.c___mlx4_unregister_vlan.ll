; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_unregister_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c___mlx4_unregister_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vlan_table = type { i32, i32, i64*, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx4_vlan_table }

@MLX4_VLAN_REGULAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Trying to free special vlan index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No vlan entry for index %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Have more references for index %d,no need to modify vlan table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_unregister_vlan(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_vlan_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %9 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.mlx4_vlan_table* %14, %struct.mlx4_vlan_table** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MLX4_VLAN_REGULAR, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mlx4_warn(%struct.mlx4_dev* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %27 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mlx4_warn(%struct.mlx4_dev* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %69

38:                                               ; preds = %22
  %39 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mlx4_dbg(%struct.mlx4_dev* %49, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %69

52:                                               ; preds = %38
  %53 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %59, i64 %60, i64* %63)
  %65 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %66 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %52, %48, %34
  %70 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %71 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %73

73:                                               ; preds = %69, %18
  ret void
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_set_port_vlan_table(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
