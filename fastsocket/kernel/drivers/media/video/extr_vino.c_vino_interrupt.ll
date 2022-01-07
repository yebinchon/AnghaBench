; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@vino_drvdata = common dso_local global %struct.TYPE_11__* null, align 8
@vino = common dso_local global %struct.TYPE_13__* null, align 8
@VINO_INTSTAT_A = common dso_local global i32 0, align 4
@VINO_INTSTAT_A_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"channel A end-of-field interrupt: %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"channel A error interrupt: %04x\0A\00", align 1
@VINO_INTSTAT_B = common dso_local global i32 0, align 4
@VINO_INTSTAT_B_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"channel B end-of-field interrupt: %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"channel B error interrupt: %04x\0A\00", align 1
@VINO_CTRL_A_INT = common dso_local global i32 0, align 4
@VINO_CTRL_B_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"channel A %s, interrupt: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"skipping frame\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"frame done\00", align 1
@vino_tasklet_a = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"channel B %s, interrupt: %d\0A\00", align 1
@vino_tasklet_b = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vino_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  br label %18

18:                                               ; preds = %249, %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %253

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = lshr i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @VINO_INTSTAT_A, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @VINO_INTSTAT_A_EOF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %96

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = call i32 @vino_dma_stop(%struct.TYPE_12__* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = call i32 @vino_clear_interrupt(%struct.TYPE_12__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  store i32 1, i32* %11, align 4
  br label %93

64:                                               ; preds = %43
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %64
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %74, %64
  br label %93

93:                                               ; preds = %92, %54
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %108

96:                                               ; preds = %38
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = call i32 @vino_dma_stop(%struct.TYPE_12__* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = call i32 @vino_clear_interrupt(%struct.TYPE_12__* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  store i32 1, i32* %10, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %96, %93
  br label %109

109:                                              ; preds = %108, %23
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @VINO_INTSTAT_B, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @VINO_INTSTAT_B_EOF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %140

130:                                              ; preds = %119
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = call i32 @vino_dma_stop(%struct.TYPE_12__* %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = call i32 @vino_clear_interrupt(%struct.TYPE_12__* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 4
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %130, %119
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %155

143:                                              ; preds = %114
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = call i32 @vino_dma_stop(%struct.TYPE_12__* %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = call i32 @vino_clear_interrupt(%struct.TYPE_12__* %148)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 4
  store i32 1, i32* %13, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %143, %140
  br label %156

156:                                              ; preds = %155, %109
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @VINO_CTRL_A_INT, align 4
  %162 = load i32, i32* @VINO_CTRL_B_INT, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = and i32 %160, %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** @vino, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = call i32 @spin_unlock(i32* %176)
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %213, label %180

180:                                              ; preds = %156
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %213

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = call i32 @do_gettimeofday(i32* %193)
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %186
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  store i32 %201, i32* %205, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %210 = load i32, i32* %6, align 4
  %211 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %209, i32 %210)
  %212 = call i32 @tasklet_hi_schedule(i32* @vino_tasklet_a)
  store i32 1, i32* %9, align 4
  br label %213

213:                                              ; preds = %200, %183, %156
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %249, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %249

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 2
  %230 = call i32 @do_gettimeofday(i32* %229)
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  store i32 %231, i32* %235, align 4
  br label %236

236:                                              ; preds = %225, %222
  %237 = load i32, i32* %13, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %246 = load i32, i32* %6, align 4
  %247 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %245, i32 %246)
  %248 = call i32 @tasklet_hi_schedule(i32* @vino_tasklet_b)
  store i32 1, i32* %12, align 4
  br label %249

249:                                              ; preds = %236, %219, %213
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = call i32 @spin_lock(i32* %251)
  br label %18

253:                                              ; preds = %18
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = call i32 @spin_unlock(i32* %255)
  %257 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %257
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vino_dma_stop(%struct.TYPE_12__*) #1

declare dso_local i32 @vino_clear_interrupt(%struct.TYPE_12__*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
