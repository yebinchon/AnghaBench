; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_src.c_src_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_src.c_src_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.aac_dev = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@MUnit = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@OUTBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@SRC_ODR_SHIFT = common dso_local global i32 0, align 4
@INBOUNDDOORBELL_0 = common dso_local global i32 0, align 4
@SRC_IDR_SHIFT = common dso_local global i32 0, align 4
@SEND_SYNCHRONOUS_FIB = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*)* @src_sync_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_sync_cmd(%struct.aac_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.aac_dev*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i64* %10, i64** %25, align 8
  store i64* %11, i64** %26, align 8
  store i64* %12, i64** %27, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %32 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @writel(i64 %30, i32* %36)
  %38 = load i64, i64* %17, align 8
  %39 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @writel(i64 %38, i32* %44)
  %46 = load i64, i64* %18, align 8
  %47 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %48 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = call i32 @writel(i64 %46, i32* %52)
  %54 = load i64, i64* %19, align 8
  %55 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %56 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = call i32 @writel(i64 %54, i32* %60)
  %62 = load i64, i64* %20, align 8
  %63 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %64 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = call i32 @writel(i64 %62, i32* %68)
  %70 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %72 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %73 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = call i32 @src_writel(%struct.aac_dev* %70, i32 %71, i32 %74)
  %76 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 3), align 4
  %78 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %79 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = call i32 @src_writel(%struct.aac_dev* %76, i32 %77, i32 -1)
  %81 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 3), align 4
  %83 = call i32 @src_readl(%struct.aac_dev* %81, i32 %82)
  %84 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 2), align 4
  %86 = load i32, i32* @INBOUNDDOORBELL_0, align 4
  %87 = load i32, i32* @SRC_IDR_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = call i32 @src_writel(%struct.aac_dev* %84, i32 %85, i32 %88)
  %90 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %91 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %13
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* @SEND_SYNCHRONOUS_FIB, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %206

98:                                               ; preds = %94, %13
  store i32 0, i32* %29, align 4
  %99 = load i64, i64* @jiffies, align 8
  store i64 %99, i64* %28, align 8
  br label %100

100:                                              ; preds = %126, %98
  %101 = load i64, i64* @jiffies, align 8
  %102 = load i64, i64* %28, align 8
  %103 = load i32, i32* @HZ, align 4
  %104 = mul nsw i32 300, %103
  %105 = sext i32 %104 to i64
  %106 = add i64 %102, %105
  %107 = call i64 @time_before(i64 %101, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %100
  %110 = call i32 @udelay(i32 5)
  %111 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 1), align 4
  %113 = call i32 @src_readl(%struct.aac_dev* %111, i32 %112)
  %114 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %122 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %123 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = call i32 @src_writel(%struct.aac_dev* %120, i32 %121, i32 %124)
  store i32 1, i32* %29, align 4
  br label %128

126:                                              ; preds = %109
  %127 = call i32 @msleep(i32 1)
  br label %100

128:                                              ; preds = %119, %100
  %129 = load i32, i32* %29, align 4
  %130 = icmp ne i32 %129, 1
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %136 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %135)
  %137 = load i32, i32* @ETIMEDOUT, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %14, align 4
  br label %209

139:                                              ; preds = %128
  %140 = load i64*, i64** %23, align 8
  %141 = icmp ne i64* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %144 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = call i64 @readl(i32* %148)
  %150 = load i64*, i64** %23, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %142, %139
  %152 = load i64*, i64** %24, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %156 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %155, i32 0, i32 1
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = call i64 @readl(i32* %160)
  %162 = load i64*, i64** %24, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %154, %151
  %164 = load i64*, i64** %25, align 8
  %165 = icmp ne i64* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %168 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = call i64 @readl(i32* %172)
  %174 = load i64*, i64** %25, align 8
  store i64 %173, i64* %174, align 8
  br label %175

175:                                              ; preds = %166, %163
  %176 = load i64*, i64** %26, align 8
  %177 = icmp ne i64* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %180 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = call i64 @readl(i32* %184)
  %186 = load i64*, i64** %26, align 8
  store i64 %185, i64* %186, align 8
  br label %187

187:                                              ; preds = %178, %175
  %188 = load i64*, i64** %27, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %192 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %191, i32 0, i32 1
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  %197 = call i64 @readl(i32* %196)
  %198 = load i64*, i64** %27, align 8
  store i64 %197, i64* %198, align 8
  br label %199

199:                                              ; preds = %190, %187
  %200 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 4
  %202 = load i32, i32* @OUTBOUNDDOORBELL_0, align 4
  %203 = load i32, i32* @SRC_ODR_SHIFT, align 4
  %204 = shl i32 %202, %203
  %205 = call i32 @src_writel(%struct.aac_dev* %200, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %199, %94
  %207 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %208 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %207)
  store i32 0, i32* %14, align 4
  br label %209

209:                                              ; preds = %206, %134
  %210 = load i32, i32* %14, align 4
  ret i32 %210
}

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @src_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aac_adapter_enable_int(%struct.aac_dev*) #1

declare dso_local i64 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
