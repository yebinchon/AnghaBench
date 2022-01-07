; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.skge_port = type { i32 }

@B0_SP_ISRC = common dso_local global i32 0, align 4
@IS_EXT_REG = common dso_local global i32 0, align 4
@IS_XA1_F = common dso_local global i32 0, align 4
@IS_R1_F = common dso_local global i32 0, align 4
@IS_PA_TO_TX1 = common dso_local global i32 0, align 4
@B3_PA_CTRL = common dso_local global i32 0, align 4
@PA_CLR_TO_TX1 = common dso_local global i32 0, align 4
@IS_PA_TO_RX1 = common dso_local global i32 0, align 4
@PA_CLR_TO_RX1 = common dso_local global i32 0, align 4
@IS_MAC1 = common dso_local global i32 0, align 4
@IS_XA2_F = common dso_local global i32 0, align 4
@IS_R2_F = common dso_local global i32 0, align 4
@IS_PA_TO_RX2 = common dso_local global i32 0, align 4
@PA_CLR_TO_RX2 = common dso_local global i32 0, align 4
@IS_PA_TO_TX2 = common dso_local global i32 0, align 4
@PA_CLR_TO_TX2 = common dso_local global i32 0, align 4
@IS_MAC2 = common dso_local global i32 0, align 4
@IS_HW_ERR = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @skge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skge_port*, align 8
  %9 = alloca %struct.skge_port*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.skge_hw*
  store %struct.skge_hw* %11, %struct.skge_hw** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %13 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %16 = load i32, i32* @B0_SP_ISRC, align 4
  %17 = call i32 @skge_read32(%struct.skge_hw* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  br label %194

24:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  %25 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %26 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IS_EXT_REG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i32, i32* @IS_EXT_REG, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %38 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %42 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %41, i32 0, i32 3
  %43 = call i32 @tasklet_schedule(i32* %42)
  br label %44

44:                                               ; preds = %34, %24
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @IS_XA1_F, align 4
  %47 = load i32, i32* @IS_R1_F, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %53 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call %struct.skge_port* @netdev_priv(%struct.TYPE_4__* %56)
  store %struct.skge_port* %57, %struct.skge_port** %8, align 8
  %58 = load i32, i32* @IS_XA1_F, align 4
  %59 = load i32, i32* @IS_R1_F, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %63 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.skge_port*, %struct.skge_port** %8, align 8
  %67 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %66, i32 0, i32 0
  %68 = call i32 @napi_schedule(i32* %67)
  br label %69

69:                                               ; preds = %51, %44
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IS_PA_TO_TX1, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %76 = load i32, i32* @B3_PA_CTRL, align 4
  %77 = load i32, i32* @PA_CLR_TO_TX1, align 4
  %78 = call i32 @skge_write16(%struct.skge_hw* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IS_PA_TO_RX1, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %86 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %87, i64 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %95 = load i32, i32* @B3_PA_CTRL, align 4
  %96 = load i32, i32* @PA_CLR_TO_RX1, align 4
  %97 = call i32 @skge_write16(%struct.skge_hw* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %84, %79
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @IS_MAC1, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %105 = call i32 @skge_mac_intr(%struct.skge_hw* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %108 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %176

113:                                              ; preds = %106
  %114 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %115 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call %struct.skge_port* @netdev_priv(%struct.TYPE_4__* %118)
  store %struct.skge_port* %119, %struct.skge_port** %9, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @IS_XA2_F, align 4
  %122 = load i32, i32* @IS_R2_F, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %113
  %127 = load i32, i32* @IS_XA2_F, align 4
  %128 = load i32, i32* @IS_R2_F, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %132 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %136 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %135, i32 0, i32 0
  %137 = call i32 @napi_schedule(i32* %136)
  br label %138

138:                                              ; preds = %126, %113
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @IS_PA_TO_RX2, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %145 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %154 = load i32, i32* @B3_PA_CTRL, align 4
  %155 = load i32, i32* @PA_CLR_TO_RX2, align 4
  %156 = call i32 @skge_write16(%struct.skge_hw* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %143, %138
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @IS_PA_TO_TX2, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %164 = load i32, i32* @B3_PA_CTRL, align 4
  %165 = load i32, i32* @PA_CLR_TO_TX2, align 4
  %166 = call i32 @skge_write16(%struct.skge_hw* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IS_MAC2, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %174 = call i32 @skge_mac_intr(%struct.skge_hw* %173, i32 1)
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175, %106
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @IS_HW_ERR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %183 = call i32 @skge_error_irq(%struct.skge_hw* %182)
  br label %184

184:                                              ; preds = %181, %176
  %185 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %186 = load i32, i32* @B0_IMSK, align 4
  %187 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %188 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @skge_write32(%struct.skge_hw* %185, i32 %186, i32 %189)
  %191 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %192 = load i32, i32* @B0_IMSK, align 4
  %193 = call i32 @skge_read32(%struct.skge_hw* %191, i32 %192)
  br label %194

194:                                              ; preds = %184, %23
  %195 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %196 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %195, i32 0, i32 1
  %197 = call i32 @spin_unlock(i32* %196)
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @IRQ_RETVAL(i32 %198)
  ret i32 %199
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.TYPE_4__*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_mac_intr(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_error_irq(%struct.skge_hw*) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
