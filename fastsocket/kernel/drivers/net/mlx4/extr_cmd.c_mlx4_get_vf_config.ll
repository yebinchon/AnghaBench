; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cmd.c_mlx4_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.ifla_vf_info = type { i32, i32*, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32, i32, i32, i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_vf_config(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.ifla_vf_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifla_vf_info*, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_vport_state*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ifla_vf_info* %3, %struct.ifla_vf_info** %9, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %13)
  store %struct.mlx4_priv* %14, %struct.mlx4_priv** %10, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = call i32 @mlx4_is_master(%struct.mlx4_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EPROTONOSUPPORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %115

21:                                               ; preds = %4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %115

30:                                               ; preds = %21
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %40, i64 %42
  store %struct.mlx4_vport_state* %43, %struct.mlx4_vport_state** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %46 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %48 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 40
  %51 = and i32 %50, 255
  %52 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %53 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %57 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 32
  %60 = and i32 %59, 255
  %61 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %62 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %66 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 255
  %70 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %71 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %69, i32* %73, align 4
  %74 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %75 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %80 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %78, i32* %82, align 4
  %83 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %84 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %89 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32 %87, i32* %91, align 4
  %92 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %93 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 255
  %96 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %97 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  store i32 %95, i32* %99, align 4
  %100 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %101 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %104 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %106 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %109 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %111 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %9, align 8
  %114 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %30, %27, %18
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
