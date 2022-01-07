; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state*, i32 }
%struct.stv090x_state = type { i32, i64, i64, %struct.dvb_frontend, %struct.TYPE_3__*, %struct.stv090x_config*, %struct.i2c_adapter*, i32, i32* }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, %struct.i2c_adapter*, i64 }
%struct.stv090x_config = type { i64, i64, i32 }
%struct.i2c_adapter = type { i32 }
%struct.stv090x_dev = type { %struct.TYPE_3__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@stv090x_ops = common dso_local global i32 0, align 4
@STV090x_RO_35 = common dso_local global i32 0, align 4
@STV090x_DUAL = common dso_local global i64 0, align 8
@FE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Found Internal Structure!\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Attaching %s demodulator(%d) Cut=0x%02x\00", align 1
@STV0900 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Create New Internal Structure!\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error putting device to sleep\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Error setting up device\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Error waking device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @stv090x_attach(%struct.stv090x_config* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.stv090x_config*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stv090x_state*, align 8
  %9 = alloca %struct.stv090x_dev*, align 8
  store %struct.stv090x_config* %0, %struct.stv090x_config** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stv090x_state* null, %struct.stv090x_state** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.stv090x_state* @kzalloc(i32 80, i32 %10)
  store %struct.stv090x_state* %11, %struct.stv090x_state** %8, align 8
  %12 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %13 = icmp eq %struct.stv090x_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %187

15:                                               ; preds = %3
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %17 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %16, i32 0, i32 8
  store i32* @verbose, i32** %17, align 8
  %18 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 5
  store %struct.stv090x_config* %18, %struct.stv090x_config** %20, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %23 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %22, i32 0, i32 6
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %23, align 8
  %24 = load i32, i32* @stv090x_ops, align 4
  %25 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %26 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %30 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 0
  store %struct.stv090x_state* %28, %struct.stv090x_state** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %34 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %36 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %39 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %41 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %44 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @STV090x_RO_35, align 4
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %47 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %49 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %48, i32 0, i32 6
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %49, align 8
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %52 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %51, i32 0, i32 5
  %53 = load %struct.stv090x_config*, %struct.stv090x_config** %52, align 8
  %54 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.stv090x_dev* @find_dev(%struct.i2c_adapter* %50, i32 %55)
  store %struct.stv090x_dev* %56, %struct.stv090x_dev** %9, align 8
  %57 = load %struct.stv090x_dev*, %struct.stv090x_dev** %9, align 8
  %58 = icmp ne %struct.stv090x_dev* %57, null
  br i1 %58, label %59, label %96

59:                                               ; preds = %15
  %60 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %61 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @STV090x_DUAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load %struct.stv090x_dev*, %struct.stv090x_dev** %9, align 8
  %67 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %70 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %69, i32 0, i32 4
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %70, align 8
  %71 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %72 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @FE_INFO, align 4
  %78 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %77, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @FE_ERROR, align 4
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %81 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @STV0900, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %89 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %88, i32 0, i32 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %79, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %86, i32 %87, i64 %92)
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %95 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %94, i32 0, i32 3
  store %struct.dvb_frontend* %95, %struct.dvb_frontend** %4, align 8
  br label %190

96:                                               ; preds = %59, %15
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.TYPE_3__* @kmalloc(i32 4, i32 %97)
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %100 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %99, i32 0, i32 4
  store %struct.TYPE_3__* %98, %struct.TYPE_3__** %100, align 8
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %102 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %101, i32 0, i32 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = call %struct.stv090x_dev* @append_internal(%struct.TYPE_3__* %103)
  store %struct.stv090x_dev* %104, %struct.stv090x_dev** %9, align 8
  %105 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %106 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %105, i32 0, i32 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %110 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %109, i32 0, i32 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 6
  store i64 0, i64* %112, align 8
  %113 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %114 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %113, i32 0, i32 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %118 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %117, i32 0, i32 6
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %118, align 8
  %120 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %121 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %120, i32 0, i32 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  store %struct.i2c_adapter* %119, %struct.i2c_adapter** %123, align 8
  %124 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %125 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %124, i32 0, i32 5
  %126 = load %struct.stv090x_config*, %struct.stv090x_config** %125, align 8
  %127 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %130 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %129, i32 0, i32 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  store i32 %128, i32* %132, align 8
  %133 = load i32, i32* @FE_INFO, align 4
  %134 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %133, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %96
  %136 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %137 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %136, i32 0, i32 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = call i32 @mutex_init(i32* %139)
  %141 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %142 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %141, i32 0, i32 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = call i32 @mutex_init(i32* %144)
  %146 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %147 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %146, i32 0, i32 3
  %148 = call i64 @stv090x_sleep(%struct.dvb_frontend* %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %135
  %151 = load i32, i32* @FE_ERROR, align 4
  %152 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %151, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %187

153:                                              ; preds = %135
  %154 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %155 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %154, i32 0, i32 3
  %156 = call i64 @stv090x_setup(%struct.dvb_frontend* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* @FE_ERROR, align 4
  %160 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %159, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %187

161:                                              ; preds = %153
  %162 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %163 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %162, i32 0, i32 3
  %164 = call i64 @stv090x_wakeup(%struct.dvb_frontend* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @FE_ERROR, align 4
  %168 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %167, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %187

169:                                              ; preds = %161
  %170 = load i32, i32* @FE_ERROR, align 4
  %171 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %172 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @STV0900, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %180 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %179, i32 0, i32 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %170, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %177, i32 %178, i64 %183)
  %185 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %186 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %185, i32 0, i32 3
  store %struct.dvb_frontend* %186, %struct.dvb_frontend** %4, align 8
  br label %190

187:                                              ; preds = %166, %158, %150, %14
  %188 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  %189 = call i32 @kfree(%struct.stv090x_state* %188)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %190

190:                                              ; preds = %187, %169, %65
  %191 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %191
}

declare dso_local %struct.stv090x_state* @kzalloc(i32, i32) #1

declare dso_local %struct.stv090x_dev* @find_dev(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local %struct.stv090x_dev* @append_internal(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @stv090x_sleep(%struct.dvb_frontend*) #1

declare dso_local i64 @stv090x_setup(%struct.dvb_frontend*) #1

declare dso_local i64 @stv090x_wakeup(%struct.dvb_frontend*) #1

declare dso_local i32 @kfree(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
