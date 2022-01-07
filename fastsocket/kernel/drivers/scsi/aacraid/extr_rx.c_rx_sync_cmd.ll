; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_rx_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_rx_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.aac_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@OutboundDoorbellReg = common dso_local global i32 0, align 4
@OUTBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@MUnit = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@InboundDoorbellReg = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)* @rx_sync_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_sync_cmd(%struct.aac_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.aac_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %32 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @writel(i32 %30, i32* %36)
  %38 = load i32, i32* %17, align 4
  %39 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @writel(i32 %38, i32* %44)
  %46 = load i32, i32* %18, align 4
  %47 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %48 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = call i32 @writel(i32 %46, i32* %52)
  %54 = load i32, i32* %19, align 4
  %55 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %56 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = call i32 @writel(i32 %54, i32* %60)
  %62 = load i32, i32* %20, align 4
  %63 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %64 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = call i32 @writel(i32 %62, i32* %68)
  %70 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %71 = load i32, i32* @OutboundDoorbellReg, align 4
  %72 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %73 = call i32 @rx_writel(%struct.aac_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %76 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %77 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %76, i32 0, i32 0
  store i32 255, i32* %77, align 8
  %78 = call i32 @rx_writeb(%struct.aac_dev* %74, i32 %75, i32 255)
  %79 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %81 = call i32 @rx_readb(%struct.aac_dev* %79, i32 %80)
  %82 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %83 = load i32, i32* @InboundDoorbellReg, align 4
  %84 = load i32, i32* @INBOUNDDOORBELL_0, align 4
  %85 = call i32 @rx_writel(%struct.aac_dev* %82, i32 %83, i32 %84)
  store i32 0, i32* %29, align 4
  %86 = load i64, i64* @jiffies, align 8
  store i64 %86, i64* %28, align 8
  br label %87

87:                                               ; preds = %109, %13
  %88 = load i64, i64* @jiffies, align 8
  %89 = load i64, i64* %28, align 8
  %90 = load i32, i32* @HZ, align 4
  %91 = mul nsw i32 30, %90
  %92 = sext i32 %91 to i64
  %93 = add i64 %89, %92
  %94 = call i64 @time_before(i64 %88, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %87
  %97 = call i32 @udelay(i32 5)
  %98 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %99 = load i32, i32* @OutboundDoorbellReg, align 4
  %100 = call i32 @rx_readl(%struct.aac_dev* %98, i32 %99)
  %101 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %106 = load i32, i32* @OutboundDoorbellReg, align 4
  %107 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %108 = call i32 @rx_writel(%struct.aac_dev* %105, i32 %106, i32 %107)
  store i32 1, i32* %29, align 4
  br label %111

109:                                              ; preds = %96
  %110 = call i32 @msleep(i32 1)
  br label %87

111:                                              ; preds = %104, %87
  %112 = load i32, i32* %29, align 4
  %113 = icmp ne i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %119 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %118)
  %120 = load i32, i32* @ETIMEDOUT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %14, align 4
  br label %189

122:                                              ; preds = %111
  %123 = load i32*, i32** %23, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %127 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = call i32 @readl(i32* %131)
  %133 = load i32*, i32** %23, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %125, %122
  %135 = load i32*, i32** %24, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %139 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = call i32 @readl(i32* %143)
  %145 = load i32*, i32** %24, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %134
  %147 = load i32*, i32** %25, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %151 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = call i32 @readl(i32* %155)
  %157 = load i32*, i32** %25, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %146
  %159 = load i32*, i32** %26, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %163 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = call i32 @readl(i32* %167)
  %169 = load i32*, i32** %26, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %161, %158
  %171 = load i32*, i32** %27, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %175 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %174, i32 0, i32 1
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  %180 = call i32 @readl(i32* %179)
  %181 = load i32*, i32** %27, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %173, %170
  %183 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %184 = load i32, i32* @OutboundDoorbellReg, align 4
  %185 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %186 = call i32 @rx_writel(%struct.aac_dev* %183, i32 %184, i32 %185)
  %187 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %188 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %187)
  store i32 0, i32* %14, align 4
  br label %189

189:                                              ; preds = %182, %117
  %190 = load i32, i32* %14, align 4
  ret i32 %190
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @rx_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @rx_writeb(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @rx_readb(%struct.aac_dev*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rx_readl(%struct.aac_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aac_adapter_enable_int(%struct.aac_dev*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
