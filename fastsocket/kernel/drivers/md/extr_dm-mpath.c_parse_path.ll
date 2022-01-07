; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_parse_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dm_arg_set = type { i32, i32 }
%struct.path_selector = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.path_selector*, %struct.TYPE_6__*, i32, i32, i8**)* }
%struct.dm_target = type { i8*, i32, %struct.multipath* }
%struct.multipath = type { i8*, i8*, i64 }
%struct.request_queue = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"no device given\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error getting device\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error attaching hardware handler\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"unable to set hardware handler parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgpath* (%struct.dm_arg_set*, %struct.path_selector*, %struct.dm_target*)* @parse_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgpath* @parse_path(%struct.dm_arg_set* %0, %struct.path_selector* %1, %struct.dm_target* %2) #0 {
  %4 = alloca %struct.pgpath*, align 8
  %5 = alloca %struct.dm_arg_set*, align 8
  %6 = alloca %struct.path_selector*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pgpath*, align 8
  %10 = alloca %struct.multipath*, align 8
  %11 = alloca %struct.request_queue*, align 8
  %12 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %5, align 8
  store %struct.path_selector* %1, %struct.path_selector** %6, align 8
  store %struct.dm_target* %2, %struct.dm_target** %7, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 2
  %15 = load %struct.multipath*, %struct.multipath** %14, align 8
  store %struct.multipath* %15, %struct.multipath** %10, align 8
  store %struct.request_queue* null, %struct.request_queue** %11, align 8
  %16 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %17 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.pgpath* @ERR_PTR(i32 %24)
  store %struct.pgpath* %25, %struct.pgpath** %4, align 8
  br label %190

26:                                               ; preds = %3
  %27 = call %struct.pgpath* (...) @alloc_pgpath()
  store %struct.pgpath* %27, %struct.pgpath** %9, align 8
  %28 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %29 = icmp ne %struct.pgpath* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.pgpath* @ERR_PTR(i32 %32)
  store %struct.pgpath* %33, %struct.pgpath** %4, align 8
  br label %190

34:                                               ; preds = %26
  %35 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %36 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %37 = call i32 @dm_shift_arg(%struct.dm_arg_set* %36)
  %38 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %39 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dm_table_get_mode(i32 %40)
  %42 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %43 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @dm_get_device(%struct.dm_target* %35, i32 %37, i32 %41, %struct.TYPE_7__** %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %50 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %185

51:                                               ; preds = %34
  %52 = load %struct.multipath*, %struct.multipath** %10, align 8
  %53 = getelementptr inbounds %struct.multipath, %struct.multipath* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.multipath*, %struct.multipath** %10, align 8
  %58 = getelementptr inbounds %struct.multipath, %struct.multipath* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56, %51
  %62 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %63 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.request_queue* @bdev_get_queue(i32 %67)
  store %struct.request_queue* %68, %struct.request_queue** %11, align 8
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.multipath*, %struct.multipath** %10, align 8
  %71 = getelementptr inbounds %struct.multipath, %struct.multipath* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @scsi_dh_attached_handler_name(%struct.request_queue* %75, i32 %76)
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.multipath*, %struct.multipath** %10, align 8
  %82 = getelementptr inbounds %struct.multipath, %struct.multipath* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.multipath*, %struct.multipath** %10, align 8
  %87 = getelementptr inbounds %struct.multipath, %struct.multipath* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.multipath*, %struct.multipath** %10, align 8
  %89 = getelementptr inbounds %struct.multipath, %struct.multipath* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load %struct.multipath*, %struct.multipath** %10, align 8
  %93 = getelementptr inbounds %struct.multipath, %struct.multipath* %92, i32 0, i32 1
  store i8* null, i8** %93, align 8
  br label %94

94:                                               ; preds = %80, %74
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.multipath*, %struct.multipath** %10, align 8
  %97 = getelementptr inbounds %struct.multipath, %struct.multipath* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %156

100:                                              ; preds = %95
  %101 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %102 = load %struct.multipath*, %struct.multipath** %10, align 8
  %103 = getelementptr inbounds %struct.multipath, %struct.multipath* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @scsi_dh_attach(%struct.request_queue* %101, i8* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %100
  %111 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %112 = call i32 @scsi_dh_detach(%struct.request_queue* %111)
  %113 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %114 = load %struct.multipath*, %struct.multipath** %10, align 8
  %115 = getelementptr inbounds %struct.multipath, %struct.multipath* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @scsi_dh_attach(%struct.request_queue* %113, i8* %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %110, %100
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %123 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %123, align 8
  %124 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %125 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %126 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = call i32 @dm_put_device(%struct.dm_target* %124, %struct.TYPE_7__* %128)
  br label %185

130:                                              ; preds = %118
  %131 = load %struct.multipath*, %struct.multipath** %10, align 8
  %132 = getelementptr inbounds %struct.multipath, %struct.multipath* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %130
  %136 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %137 = load %struct.multipath*, %struct.multipath** %10, align 8
  %138 = getelementptr inbounds %struct.multipath, %struct.multipath* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @scsi_dh_set_params(%struct.request_queue* %136, i8* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %135
  %144 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %145 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %144, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8** %145, align 8
  %146 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %147 = call i32 @scsi_dh_detach(%struct.request_queue* %146)
  %148 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %149 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %150 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = call i32 @dm_put_device(%struct.dm_target* %148, %struct.TYPE_7__* %152)
  br label %185

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %130
  br label %156

156:                                              ; preds = %155, %95
  %157 = load %struct.path_selector*, %struct.path_selector** %6, align 8
  %158 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32 (%struct.path_selector*, %struct.TYPE_6__*, i32, i32, i8**)*, i32 (%struct.path_selector*, %struct.TYPE_6__*, i32, i32, i8**)** %160, align 8
  %162 = load %struct.path_selector*, %struct.path_selector** %6, align 8
  %163 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %164 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %163, i32 0, i32 0
  %165 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %166 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %169 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %172 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %171, i32 0, i32 0
  %173 = call i32 %161(%struct.path_selector* %162, %struct.TYPE_6__* %164, i32 %167, i32 %170, i8** %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %156
  %177 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %178 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %179 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = call i32 @dm_put_device(%struct.dm_target* %177, %struct.TYPE_7__* %181)
  br label %185

183:                                              ; preds = %156
  %184 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  store %struct.pgpath* %184, %struct.pgpath** %4, align 8
  br label %190

185:                                              ; preds = %176, %143, %121, %48
  %186 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %187 = call i32 @free_pgpath(%struct.pgpath* %186)
  %188 = load i32, i32* %8, align 4
  %189 = call %struct.pgpath* @ERR_PTR(i32 %188)
  store %struct.pgpath* %189, %struct.pgpath** %4, align 8
  br label %190

190:                                              ; preds = %185, %183, %30, %20
  %191 = load %struct.pgpath*, %struct.pgpath** %4, align 8
  ret %struct.pgpath* %191
}

declare dso_local %struct.pgpath* @ERR_PTR(i32) #1

declare dso_local %struct.pgpath* @alloc_pgpath(...) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i8* @scsi_dh_attached_handler_name(%struct.request_queue*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @scsi_dh_attach(%struct.request_queue*, i8*) #1

declare dso_local i32 @scsi_dh_detach(%struct.request_queue*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.TYPE_7__*) #1

declare dso_local i32 @scsi_dh_set_params(%struct.request_queue*, i8*) #1

declare dso_local i32 @free_pgpath(%struct.pgpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
