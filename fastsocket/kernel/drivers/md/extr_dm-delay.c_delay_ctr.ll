; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, %struct.delay_c*, i32 }
%struct.delay_c = type { i64, i64, i64, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"requires exactly 3 or 6 arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot allocate context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid device sector\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Invalid delay\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Device lookup failed\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Invalid write device sector\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Invalid write delay\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Write device lookup failed\00", align 1
@delayed_cache = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Couldn't create delayed bio pool.\00", align 1
@handle_delayed_timer = common dso_local global i32 0, align 4
@flush_expired_bios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @delay_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.delay_c*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 6
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %181

21:                                               ; preds = %13, %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.delay_c* @kmalloc(i32 88, i32 %22)
  store %struct.delay_c* %23, %struct.delay_c** %8, align 8
  %24 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %25 = icmp ne %struct.delay_c* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %181

31:                                               ; preds = %21
  %32 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %33 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %32, i32 0, i32 12
  store i64 0, i64* %33, align 8
  %34 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %35 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %34, i32 0, i32 13
  store i64 0, i64* %35, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %9, i8* %10)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %43 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  br label %176

44:                                               ; preds = %31
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %47 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %52 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %51, i32 0, i32 1
  %53 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64* %52, i8* %10)
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %57 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %57, align 8
  br label %176

58:                                               ; preds = %44
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dm_table_get_mode(i32 %65)
  %67 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %68 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %67, i32 0, i32 4
  %69 = call i64 @dm_get_device(%struct.dm_target* %59, i8* %62, i32 %66, i32** %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %73 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %73, align 8
  br label %176

74:                                               ; preds = %58
  %75 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %76 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %120

80:                                               ; preds = %74
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @sscanf(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %9, i8* %10)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %88 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8** %88, align 8
  br label %170

89:                                               ; preds = %80
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %92 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load i8**, i8*** %7, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 5
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %97 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %96, i32 0, i32 3
  %98 = call i32 @sscanf(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64* %97, i8* %10)
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %102 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %102, align 8
  br label %170

103:                                              ; preds = %89
  %104 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %105 = load i8**, i8*** %7, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 3
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %109 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dm_table_get_mode(i32 %110)
  %112 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %113 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %112, i32 0, i32 5
  %114 = call i64 @dm_get_device(%struct.dm_target* %104, i8* %107, i32 %111, i32** %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %118 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8** %118, align 8
  br label %170

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %79
  %121 = load i32, i32* @delayed_cache, align 4
  %122 = call i32 @mempool_create_slab_pool(i32 128, i32 %121)
  %123 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %124 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %123, i32 0, i32 11
  store i32 %122, i32* %124, align 4
  %125 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %126 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %120
  %130 = call i32 @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %158

131:                                              ; preds = %120
  %132 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %133 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %132, i32 0, i32 10
  %134 = load i32, i32* @handle_delayed_timer, align 4
  %135 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %136 = ptrtoint %struct.delay_c* %135 to i64
  %137 = call i32 @setup_timer(i32* %133, i32 %134, i64 %136)
  %138 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %139 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %138, i32 0, i32 9
  %140 = load i32, i32* @flush_expired_bios, align 4
  %141 = call i32 @INIT_WORK(i32* %139, i32 %140)
  %142 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %143 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %142, i32 0, i32 8
  %144 = call i32 @INIT_LIST_HEAD(i32* %143)
  %145 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %146 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %145, i32 0, i32 7
  %147 = call i32 @mutex_init(i32* %146)
  %148 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %149 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %148, i32 0, i32 6
  %150 = call i32 @atomic_set(i32* %149, i32 1)
  %151 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %152 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %151, i32 0, i32 1
  store i32 1, i32* %152, align 8
  %153 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %154 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %153, i32 0, i32 2
  store i32 1, i32* %154, align 4
  %155 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %156 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %157 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %156, i32 0, i32 3
  store %struct.delay_c* %155, %struct.delay_c** %157, align 8
  store i32 0, i32* %4, align 4
  br label %181

158:                                              ; preds = %129
  %159 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %160 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %165 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %166 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @dm_put_device(%struct.dm_target* %164, i32* %167)
  br label %169

169:                                              ; preds = %163, %158
  br label %170

170:                                              ; preds = %169, %116, %100, %86
  %171 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %172 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %173 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @dm_put_device(%struct.dm_target* %171, i32* %174)
  br label %176

176:                                              ; preds = %170, %71, %55, %41
  %177 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %178 = call i32 @kfree(%struct.delay_c* %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %131, %26, %16
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.delay_c* @kmalloc(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i64 @dm_get_device(%struct.dm_target*, i8*, i32, i32**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32*) #1

declare dso_local i32 @kfree(%struct.delay_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
