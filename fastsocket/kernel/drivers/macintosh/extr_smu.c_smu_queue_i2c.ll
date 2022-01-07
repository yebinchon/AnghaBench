; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_queue_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_queue_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, %struct.smu_i2c_cmd* }
%struct.smu_i2c_cmd = type { i32*, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32*, %struct.smu_i2c_cmd*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }

@smu = common dso_local global %struct.TYPE_6__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SMU_CMD_I2C_COMMAND = common dso_local global i32 0, align 4
@smu_i2c_low_completion = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMU_I2C_READ_MAX = common dso_local global i32 0, align 4
@SMU_I2C_WRITE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SMU: i2c enqueuing command\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"SMU:   %s, len=%d bus=%x addr=%x sub0=%x type=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_queue_i2c(%struct.smu_i2c_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_i2c_cmd*, align 8
  %4 = alloca i64, align 8
  store %struct.smu_i2c_cmd* %0, %struct.smu_i2c_cmd** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %208

10:                                               ; preds = %1
  %11 = load i32, i32* @SMU_CMD_I2C_COMMAND, align 4
  %12 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 8
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @smu_i2c_low_completion, align 4
  %16 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  store i32 %15, i32* %18, align 8
  %19 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %20 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store %struct.smu_i2c_cmd* %19, %struct.smu_i2c_cmd** %22, align 8
  %23 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 8, i32* %31, align 8
  %32 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %32, i32 0, i32 6
  %34 = bitcast %struct.TYPE_4__* %33 to i8*
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  store i32* %35, i32** %38, align 8
  %39 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 255, i32* %47, align 4
  %48 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %48, i32 0, i32 1
  store i32 20, i32* %49, align 8
  %50 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %91 [
    i32 129, label %70
    i32 130, label %75
    i32 128, label %81
  ]

70:                                               ; preds = %10
  %71 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %72 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = call i32 @memset(i32* %73, i32 0, i32 4)
  br label %94

75:                                               ; preds = %10
  %76 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %77 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 254
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %10, %75
  %82 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 3
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %208

90:                                               ; preds = %81
  br label %94

91:                                               ; preds = %10
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %208

94:                                               ; preds = %90, %70
  %95 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %96 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SMU_I2C_READ_MAX, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %208

109:                                              ; preds = %99
  %110 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %111 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %115 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @memset(i32* %113, i32 255, i32 %117)
  %119 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %120 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32 9, i32* %121, align 8
  br label %141

122:                                              ; preds = %94
  %123 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %124 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SMU_I2C_WRITE_MAX, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %208

132:                                              ; preds = %122
  %133 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %134 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 9, %136
  %138 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %139 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 8
  br label %141

141:                                              ; preds = %132, %109
  %142 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %143 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %144 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %149 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %150 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %154 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %158 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %162 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %168 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %148, i32 %152, i32 %156, i32 %160, i32 %166, i32 %170)
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %4, align 8
  %175 = call i32 @spin_lock_irqsave(i32* %173, i64 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %177, align 8
  %179 = icmp eq %struct.smu_i2c_cmd* %178, null
  br i1 %179, label %180, label %197

180:                                              ; preds = %141
  %181 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  store %struct.smu_i2c_cmd* %181, %struct.smu_i2c_cmd** %183, align 8
  %184 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %185 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = call i32 @list_add_tail(i32* %186, i32* %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = icmp eq i32* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = call i32 (...) @smu_start_cmd()
  br label %196

196:                                              ; preds = %194, %180
  br label %203

197:                                              ; preds = %141
  %198 = load %struct.smu_i2c_cmd*, %struct.smu_i2c_cmd** %3, align 8
  %199 = getelementptr inbounds %struct.smu_i2c_cmd, %struct.smu_i2c_cmd* %198, i32 0, i32 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = call i32 @list_add_tail(i32* %199, i32* %201)
  br label %203

203:                                              ; preds = %197, %196
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** @smu, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %4, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %203, %129, %106, %91, %87, %7
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smu_start_cmd(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
