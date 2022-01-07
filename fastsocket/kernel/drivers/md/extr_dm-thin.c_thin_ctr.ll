; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, i32, i32, %struct.thin_c* }
%struct.thin_c = type { %struct.dm_dev*, %struct.dm_dev*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.mapped_device = type { i32 }

@dm_thin_pool_table = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error opening origin device\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error opening pool device\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid device id\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Couldn't get pool mapped device\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Couldn't find pool object\00", align 1
@PM_FAIL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"Couldn't open thin device, Pool is in fail mode\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Couldn't open thin internal device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @thin_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thin_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thin_c*, align 8
  %10 = alloca %struct.dm_dev*, align 8
  %11 = alloca %struct.dm_dev*, align 8
  %12 = alloca %struct.mapped_device*, align 8
  %13 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %259

25:                                               ; preds = %17, %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.thin_c* @kzalloc(i32 64, i32 %26)
  %28 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 8
  store %struct.thin_c* %27, %struct.thin_c** %29, align 8
  store %struct.thin_c* %27, %struct.thin_c** %9, align 8
  %30 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %31 = icmp ne %struct.thin_c* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %34 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %259

37:                                               ; preds = %25
  %38 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %39 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %38, i32 0, i32 11
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %42 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %41, i32 0, i32 10
  %43 = call i32 @bio_list_init(i32* %42)
  %44 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %45 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %44, i32 0, i32 9
  %46 = call i32 @bio_list_init(i32* %45)
  %47 = load i32, i32* @RB_ROOT, align 4
  %48 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %49 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %68

52:                                               ; preds = %37
  %53 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @FMODE_READ, align 4
  %58 = call i32 @dm_get_device(%struct.dm_target* %53, i8* %56, i32 %57, %struct.dm_dev** %11)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  br label %256

64:                                               ; preds = %52
  %65 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %66 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %67 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %66, i32 0, i32 0
  store %struct.dm_dev* %65, %struct.dm_dev** %67, align 8
  br label %68

68:                                               ; preds = %64, %37
  %69 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %74 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dm_table_get_mode(i32 %75)
  %77 = call i32 @dm_get_device(%struct.dm_target* %69, i8* %72, i32 %76, %struct.dm_dev** %10)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %82, align 8
  br label %244

83:                                               ; preds = %68
  %84 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  %85 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %86 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %85, i32 0, i32 1
  store %struct.dm_dev* %84, %struct.dm_dev** %86, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %91 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %90, i32 0, i32 7
  %92 = bitcast i32* %91 to i64*
  %93 = call i64 @read_dev_id(i8* %89, i64* %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %97 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %97, align 8
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %238

100:                                              ; preds = %83
  %101 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %102 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %101, i32 0, i32 1
  %103 = load %struct.dm_dev*, %struct.dm_dev** %102, align 8
  %104 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.mapped_device* @dm_get_md(i32 %107)
  store %struct.mapped_device* %108, %struct.mapped_device** %12, align 8
  %109 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %110 = icmp ne %struct.mapped_device* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %100
  %112 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %113 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %112, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %113, align 8
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %238

116:                                              ; preds = %100
  %117 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %118 = call %struct.TYPE_10__* @__pool_table_lookup(%struct.mapped_device* %117)
  %119 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %120 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %119, i32 0, i32 2
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %120, align 8
  %121 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %122 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %121, i32 0, i32 2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = icmp ne %struct.TYPE_10__* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %116
  %126 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %127 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %127, align 8
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %235

130:                                              ; preds = %116
  %131 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %132 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = call i32 @__pool_inc(%struct.TYPE_10__* %133)
  %135 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %136 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call i64 @get_pool_mode(%struct.TYPE_10__* %137)
  %139 = load i64, i64* @PM_FAIL, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %130
  %142 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %143 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8** %143, align 8
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %230

146:                                              ; preds = %130
  %147 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %148 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %147, i32 0, i32 2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %153 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %156 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %155, i32 0, i32 3
  %157 = call i32 @dm_pool_open_thin_device(i32 %151, i32 %154, i32* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %162 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8** %162, align 8
  br label %230

163:                                              ; preds = %146
  %164 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %165 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %166 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %164, i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %225

174:                                              ; preds = %163
  %175 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %176 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %175, i32 0, i32 1
  store i32 1, i32* %176, align 8
  %177 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %178 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %177, i32 0, i32 2
  store i32 1, i32* %178, align 4
  %179 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %180 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %179, i32 0, i32 3
  store i32 1, i32* %180, align 8
  %181 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %182 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %174
  %189 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %190 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %189, i32 0, i32 4
  store i32 1, i32* %190, align 4
  %191 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %192 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %191, i32 0, i32 5
  store i32 1, i32* %192, align 8
  %193 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %194 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %193, i32 0, i32 6
  store i32 1, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %174
  %196 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %197 = call i32 @dm_put(%struct.mapped_device* %196)
  %198 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %199 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %200 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %199, i32 0, i32 6
  %201 = call i32 @atomic_set(i32* %200, i32 1)
  %202 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %203 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %202, i32 0, i32 5
  %204 = call i32 @init_completion(i32* %203)
  %205 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %206 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %205, i32 0, i32 2
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i64, i64* %13, align 8
  %210 = call i32 @spin_lock_irqsave(i32* %208, i64 %209)
  %211 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %212 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %211, i32 0, i32 4
  %213 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %214 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %213, i32 0, i32 2
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = call i32 @list_add_tail_rcu(i32* %212, i32* %216)
  %218 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %219 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %218, i32 0, i32 2
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  %224 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %4, align 4
  br label %262

225:                                              ; preds = %173
  %226 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %227 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dm_pool_close_thin_device(i32 %228)
  br label %230

230:                                              ; preds = %225, %160, %141
  %231 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %232 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %231, i32 0, i32 2
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = call i32 @__pool_dec(%struct.TYPE_10__* %233)
  br label %235

235:                                              ; preds = %230, %125
  %236 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %237 = call i32 @dm_put(%struct.mapped_device* %236)
  br label %238

238:                                              ; preds = %235, %111, %95
  %239 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %240 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %241 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %240, i32 0, i32 1
  %242 = load %struct.dm_dev*, %struct.dm_dev** %241, align 8
  %243 = call i32 @dm_put_device(%struct.dm_target* %239, %struct.dm_dev* %242)
  br label %244

244:                                              ; preds = %238, %80
  %245 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %246 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %245, i32 0, i32 0
  %247 = load %struct.dm_dev*, %struct.dm_dev** %246, align 8
  %248 = icmp ne %struct.dm_dev* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %251 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %252 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %251, i32 0, i32 0
  %253 = load %struct.dm_dev*, %struct.dm_dev** %252, align 8
  %254 = call i32 @dm_put_device(%struct.dm_target* %250, %struct.dm_dev* %253)
  br label %255

255:                                              ; preds = %249, %244
  br label %256

256:                                              ; preds = %255, %61
  %257 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %258 = call i32 @kfree(%struct.thin_c* %257)
  br label %259

259:                                              ; preds = %256, %32, %20
  %260 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %259, %195
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.thin_c* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i64 @read_dev_id(i8*, i64*, i32) #1

declare dso_local %struct.mapped_device* @dm_get_md(i32) #1

declare dso_local %struct.TYPE_10__* @__pool_table_lookup(%struct.mapped_device*) #1

declare dso_local i32 @__pool_inc(%struct.TYPE_10__*) #1

declare dso_local i64 @get_pool_mode(%struct.TYPE_10__*) #1

declare dso_local i32 @dm_pool_open_thin_device(i32, i32, i32*) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dm_pool_close_thin_device(i32) #1

declare dso_local i32 @__pool_dec(%struct.TYPE_10__*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

declare dso_local i32 @kfree(%struct.thin_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
