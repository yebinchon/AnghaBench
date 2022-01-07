; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_port.c_mlx4_SET_VLAN_FLTR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_port.c_mlx4_SET_VLAN_FLTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.vlan_group = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_vlan_fltr_mbox* }
%struct.mlx4_set_vlan_fltr_mbox = type { i32* }

@VLAN_FLTR_SIZE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_VLAN_FLTR = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_VLAN_FLTR(%struct.mlx4_dev* %0, i32 %1, %struct.vlan_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlan_group*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_set_vlan_fltr_mbox*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vlan_group* %2, %struct.vlan_group** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %15)
  store %struct.mlx4_cmd_mailbox* %16, %struct.mlx4_cmd_mailbox** %8, align 8
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %18 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %21)
  store i32 %22, i32* %4, align 4
  br label %86

23:                                               ; preds = %3
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %24, i32 0, i32 1
  %26 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %25, align 8
  store %struct.mlx4_set_vlan_fltr_mbox* %26, %struct.mlx4_set_vlan_fltr_mbox** %9, align 8
  %27 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %28 = icmp ne %struct.vlan_group* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %23
  %30 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %9, align 8
  %31 = call i32 @memset(%struct.mlx4_set_vlan_fltr_mbox* %30, i32 0, i32 8)
  %32 = load i32, i32* @VLAN_FLTR_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %65, %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = call i64 @vlan_group_get_device(%struct.vlan_group* %42, i32 %43)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @cpu_to_be32(i32 %57)
  %59 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_set_vlan_fltr_mbox, %struct.mlx4_set_vlan_fltr_mbox* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %34

68:                                               ; preds = %34
  br label %72

69:                                               ; preds = %23
  %70 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %9, align 8
  %71 = call i32 @memset(%struct.mlx4_set_vlan_fltr_mbox* %70, i32 0, i32 8)
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %74 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MLX4_CMD_SET_VLAN_FLTR, align 4
  %79 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %80 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %81 = call i32 @mlx4_cmd(%struct.mlx4_dev* %73, i32 %76, i32 %77, i32 0, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %83 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %84 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %82, %struct.mlx4_cmd_mailbox* %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %72, %20
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_set_vlan_fltr_mbox*, i32, i32) #1

declare dso_local i64 @vlan_group_get_device(%struct.vlan_group*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
