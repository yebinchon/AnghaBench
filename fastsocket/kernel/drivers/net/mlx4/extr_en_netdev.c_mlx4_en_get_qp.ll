; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_get_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_4__*, i32*, %struct.mlx4_en_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_mac_entry = type { i64*, i32, i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Registering MAC: %pM for adding\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed adding MAC: %pM\0A\00", align 1
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Reserved qp %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to reserve qp for mac registration\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_EN_MAC_HASH_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_get_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_qp(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_mac_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 4
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %4, align 8
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 0
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %17, align 8
  store %struct.mlx4_dev* %18, %struct.mlx4_dev** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 0
  store i32* %20, i32** %10, align 8
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx4_en_mac_to_u64(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @DRV, align 4
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @en_dbg(i32 %27, %struct.mlx4_en_priv* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mlx4_register_mac(%struct.mlx4_dev* %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %154

53:                                               ; preds = %1
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %55 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mlx4_get_base_qpn(%struct.mlx4_dev* %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %2, align 4
  br label %154

70:                                               ; preds = %53
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @mlx4_qp_reserve_range(%struct.mlx4_dev* %71, i32 1, i32 1, i32* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @DRV, align 4
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @en_dbg(i32 %74, %struct.mlx4_en_priv* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %83 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %146

84:                                               ; preds = %70
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @mlx4_en_uc_steer_add(%struct.mlx4_en_priv* %85, i32 %90, i32* %91, i32* %9)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %141

96:                                               ; preds = %84
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.mlx4_mac_entry* @kmalloc(i32 16, i32 %97)
  store %struct.mlx4_mac_entry* %98, %struct.mlx4_mac_entry** %6, align 8
  %99 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %6, align 8
  %100 = icmp ne %struct.mlx4_mac_entry* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %130

104:                                              ; preds = %96
  %105 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %6, align 8
  %106 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i64* %107, i32 %112, i32 8)
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %6, align 8
  %118 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %117, i32 0, i32 1
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.mlx4_mac_entry*, %struct.mlx4_mac_entry** %6, align 8
  %123 = getelementptr inbounds %struct.mlx4_mac_entry, %struct.mlx4_mac_entry* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @MLX4_EN_MAC_HASH_IDX, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %121, i64 %127
  %129 = call i32 @hlist_add_head_rcu(i32* %118, i32* %128)
  store i32 0, i32* %2, align 4
  br label %154

130:                                              ; preds = %101
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %132 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %133 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @mlx4_en_uc_steer_release(%struct.mlx4_en_priv* %131, i32 %136, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %130, %95
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mlx4_qp_release_range(%struct.mlx4_dev* %142, i32 %144, i32 1)
  br label %146

146:                                              ; preds = %141, %81
  %147 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @mlx4_unregister_mac(%struct.mlx4_dev* %147, i32 %150, i32 %151)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %146, %104, %60, %43
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @mlx4_en_mac_to_u64(i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_register_mac(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_get_base_qpn(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_qp_reserve_range(%struct.mlx4_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_en_uc_steer_add(%struct.mlx4_en_priv*, i32, i32*, i32*) #1

declare dso_local %struct.mlx4_mac_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @mlx4_en_uc_steer_release(%struct.mlx4_en_priv*, i32, i32, i32) #1

declare dso_local i32 @mlx4_qp_release_range(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_unregister_mac(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
