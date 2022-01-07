; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_calc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_calc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_LLC_SNAP_SIZE = common dso_local global i32 0, align 4
@frag_sizes = common dso_local global i32* null, align 8
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Rx buffer scatter-list (effective-mtu:%d num_frags:%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"  frag:%d - size:%d prefix:%d align:%d stride:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_calc_rx_buf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx4_en_priv* %8, %struct.mlx4_en_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ETH_HLEN, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @VLAN_HLEN, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @ETH_LLC_SNAP_SIZE, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %108, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %121

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** @frag_sizes, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %24, %29
  %31 = icmp sgt i32 %23, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32*, i32** @frag_sizes, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  br label %42

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i32 [ %37, %32 ], [ %41, %38 ]
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %51, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %42
  %62 = load i32, i32* @NET_IP_ALIGN, align 4
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %62, i32* %69, align 8
  %70 = load i32*, i32** @frag_sizes, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NET_IP_ALIGN, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %78 = call i8* @ALIGN(i32 %76, i32 %77)
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i8* %78, i8** %85, align 8
  br label %108

86:                                               ; preds = %42
  %87 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load i32*, i32** @frag_sizes, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %100 = call i8* @ALIGN(i32 %98, i32 %99)
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  store i8* %100, i8** %107, align 8
  br label %108

108:                                              ; preds = %86, %61
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %18

121:                                              ; preds = %18
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @ROUNDUP_LOG2(i32 %131)
  %133 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %134 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @DRV, align 4
  %136 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %139 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @en_dbg(i32 %135, %struct.mlx4_en_priv* %136, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %140)
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %184, %121
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %187

148:                                              ; preds = %142
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %152 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %160 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %168 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %176 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @en_err(%struct.mlx4_en_priv* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %158, i32 %166, i32 %174, i8* %182)
  br label %184

184:                                              ; preds = %148
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %142

187:                                              ; preds = %142
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @ROUNDUP_LOG2(i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
