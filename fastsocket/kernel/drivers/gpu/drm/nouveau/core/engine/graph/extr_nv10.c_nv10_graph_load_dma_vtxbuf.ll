; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_load_dma_vtxbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_load_dma_vtxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_graph_chan = type { i32 }
%struct.nv10_graph_priv = type { i32 }

@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2_DL = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2_DH = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_FIFO_PTR = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_graph_chan*, i32, i32)* @nv10_graph_load_dma_vtxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_graph_load_dma_vtxbuf(%struct.nv10_graph_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nv10_graph_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv10_graph_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [24 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nv10_graph_chan* %0, %struct.nv10_graph_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %19 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %18)
  store %struct.nv10_graph_priv* %19, %struct.nv10_graph_priv** %7, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %40, %3
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @NV10_PGRAPH_CTX_CACHE(i32 %25, i32 0)
  %27 = call i32 @nv_rd32(%struct.nv10_graph_priv* %24, i32 %26)
  %28 = and i32 %27, 4095
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp eq i32 %29, 86
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 150
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %17, align 4
  %36 = icmp eq i32 %35, 153
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31, %23
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %16, align 4
  br label %43

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  br label %20

43:                                               ; preds = %37, %20
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %43
  br label %202

50:                                               ; preds = %46
  %51 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %52 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %53 = call i32 @nv_rd32(%struct.nv10_graph_priv* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %65, %50
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 5
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 %59)
  %61 = call i32 @nv_rd32(%struct.nv10_graph_priv* %58, i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %70 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %71 = call i32 @nv_rd32(%struct.nv10_graph_priv* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %73 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DL, align 4
  %74 = call i32 @nv_rd32(%struct.nv10_graph_priv* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %76 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DH, align 4
  %77 = call i32 @nv_rd32(%struct.nv10_graph_priv* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %79 = load i32, i32* @NV10_PGRAPH_FFINTFC_FIFO_PTR, align 4
  %80 = call i32 @nv_rd32(%struct.nv10_graph_priv* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %95, %68
  %82 = load i32, i32* %15, align 4
  %83 = getelementptr inbounds [24 x i32], [24 x i32]* %12, i64 0, i64 0
  %84 = call i32 @ARRAY_SIZE(i32* %83)
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 4, %88
  %90 = add nsw i32 4196256, %89
  %91 = call i32 @nv_rd32(%struct.nv10_graph_priv* %87, i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [24 x i32], [24 x i32]* %12, i64 0, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %81

98:                                               ; preds = %81
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %112, %98
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 %104)
  %106 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @NV10_PGRAPH_CTX_CACHE(i32 %107, i32 %108)
  %110 = call i32 @nv_rd32(%struct.nv10_graph_priv* %106, i32 %109)
  %111 = call i32 @nv_wr32(%struct.nv10_graph_priv* %103, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %117 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 %118, 13
  %120 = call i32 @nv_mask(%struct.nv10_graph_priv* %116, i32 %117, i32 57344, i32 %119)
  %121 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %122 = load i32, i32* @NV10_PGRAPH_FFINTFC_FIFO_PTR, align 4
  %123 = call i32 @nv_wr32(%struct.nv10_graph_priv* %121, i32 %122, i32 0)
  %124 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %125 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %126 = load i32, i32* %5, align 4
  %127 = shl i32 %126, 20
  %128 = or i32 738197504, %127
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 %129, 16
  %131 = or i32 %128, %130
  %132 = or i32 %131, 396
  %133 = call i32 @nv_wr32(%struct.nv10_graph_priv* %124, i32 %125, i32 %132)
  %134 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %135 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DL, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @nv_wr32(%struct.nv10_graph_priv* %134, i32 %135, i32 %136)
  %138 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %139 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %140 = call i32 @nv_mask(%struct.nv10_graph_priv* %138, i32 %139, i32 0, i32 65536)
  %141 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %142 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %143 = call i32 @nv_mask(%struct.nv10_graph_priv* %141, i32 %142, i32 1, i32 1)
  %144 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %145 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %146 = call i32 @nv_mask(%struct.nv10_graph_priv* %144, i32 %145, i32 1, i32 0)
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %162, %115
  %148 = load i32, i32* %15, align 4
  %149 = getelementptr inbounds [24 x i32], [24 x i32]* %12, i64 0, i64 0
  %150 = call i32 @ARRAY_SIZE(i32* %149)
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %154 = load i32, i32* %15, align 4
  %155 = mul nsw i32 4, %154
  %156 = add nsw i32 4196256, %155
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [24 x i32], [24 x i32]* %12, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @nv_wr32(%struct.nv10_graph_priv* %153, i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %152
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %147

165:                                              ; preds = %147
  %166 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %167 = load i32, i32* @NV10_PGRAPH_FFINTFC_FIFO_PTR, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @nv_wr32(%struct.nv10_graph_priv* %166, i32 %167, i32 %168)
  %170 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %171 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @nv_wr32(%struct.nv10_graph_priv* %170, i32 %171, i32 %172)
  %174 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %175 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DL, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @nv_wr32(%struct.nv10_graph_priv* %174, i32 %175, i32 %176)
  %178 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %179 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DH, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @nv_wr32(%struct.nv10_graph_priv* %178, i32 %179, i32 %180)
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %194, %165
  %183 = load i32, i32* %15, align 4
  %184 = icmp slt i32 %183, 5
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 %187)
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @nv_wr32(%struct.nv10_graph_priv* %186, i32 %188, i32 %192)
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %15, align 4
  br label %182

197:                                              ; preds = %182
  %198 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %7, align 8
  %199 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @nv_wr32(%struct.nv10_graph_priv* %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %49
  ret void
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local i32 @NV10_PGRAPH_CTX_CACHE(i32, i32) #1

declare dso_local i32 @NV10_PGRAPH_CTX_SWITCH(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv10_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
