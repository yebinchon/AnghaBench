; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_saa7134_irq_alsa_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_saa7134_irq_alsa_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"irq: recording stopped\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"irq: lost %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"irq: field oops [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"irq: overrun [full=%d/%d] - Blocks in %d\0A\00", align 1
@SNDRV_PCM_STATE_XRUN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"irq: ok, %s, next_blk=%d, addr=%x, blocks=%u, size=%u, read=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"odd \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i64)* @saa7134_irq_alsa_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7134_irq_alsa_done(%struct.saa7134_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* @UNSET, align 4
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %12 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %197

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 251658240
  %21 = icmp ne i64 0, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = lshr i64 %23, 24
  %25 = and i64 %24, 15
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, 268435456
  %30 = icmp eq i64 0, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 0, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @SAA7134_RS_BA1(i32 6)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %31
  br label %51

41:                                               ; preds = %27
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 1, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @SAA7134_RS_BA2(i32 6)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %41
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %4, align 8
  %56 = and i64 %55, 268435456
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %197

61:                                               ; preds = %51
  %62 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %63 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %67 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %71 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 2
  %75 = mul nsw i32 %69, %74
  %76 = icmp sge i32 %65, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %61
  %78 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %79 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %83 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %87 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %85, i32 %89)
  %91 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %92 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %95 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SNDRV_PCM_STATE_XRUN, align 4
  %99 = call i32 @snd_pcm_stop(i32 %97, i32 %98)
  br label %201

100:                                              ; preds = %61
  %101 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %102 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 2
  %106 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %107 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = srem i32 %105, %109
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %114 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %112, %116
  %118 = call i32 @saa_writel(i32 %111, i32 %117)
  %119 = load i32, i32* @debug, align 4
  %120 = icmp sgt i32 %119, 2
  br i1 %120, label %121, label %147

121:                                              ; preds = %100
  %122 = load i64, i64* %4, align 8
  %123 = and i64 %122, 268435456
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %130 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %128, %132
  %134 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %135 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %139 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %143 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %126, i32 %127, i32 %133, i32 %137, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %121, %100
  %148 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %149 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  %153 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %154 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %152, %156
  %158 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %159 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  %161 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %162 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %166 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %164
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %172 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 4
  store i32 %170, i32* %173, align 4
  %174 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %175 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %179 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @snd_pcm_lib_period_bytes(i32 %181)
  %183 = icmp sge i32 %177, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %147
  %185 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %186 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %185, i32 0, i32 0
  %187 = call i32 @spin_unlock(i32* %186)
  %188 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %189 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @snd_pcm_period_elapsed(i32 %191)
  %193 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %194 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %193, i32 0, i32 0
  %195 = call i32 @spin_lock(i32* %194)
  br label %196

196:                                              ; preds = %184, %147
  br label %197

197:                                              ; preds = %196, %54, %16
  %198 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %199 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %198, i32 0, i32 0
  %200 = call i32 @spin_unlock(i32* %199)
  br label %201

201:                                              ; preds = %197, %77
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_stop(i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
