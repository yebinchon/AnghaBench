; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__add_device_to_lcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__add_device_to_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dasd_device = type { i32, i32, i64 }
%struct.dasd_eckd_private = type { %struct.alias_pav_group*, %struct.dasd_uid }
%struct.alias_pav_group = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.dasd_uid = type { i64, i64, i64, i32, i32, i32, i32 }

@CDEV_NESTED_SECOND = common dso_local global i32 0, align 4
@NO_PAV = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UA_BASE_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alias_lcu*, %struct.dasd_device*, %struct.dasd_device*)* @_add_device_to_lcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_add_device_to_lcu(%struct.alias_lcu* %0, %struct.dasd_device* %1, %struct.dasd_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.dasd_eckd_private*, align 8
  %9 = alloca %struct.alias_pav_group*, align 8
  %10 = alloca %struct.dasd_uid, align 8
  %11 = alloca i64, align 8
  store %struct.alias_lcu* %0, %struct.alias_lcu** %5, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %6, align 8
  store %struct.dasd_device* %2, %struct.dasd_device** %7, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %15, %struct.dasd_eckd_private** %8, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %17 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %18 = icmp ne %struct.dasd_device* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_ccwdev_lock(i32 %22)
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @CDEV_NESTED_SECOND, align 4
  %26 = call i32 @spin_lock_irqsave_nested(i32 %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %29 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %34 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %41 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %44 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %49 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %56 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %59 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %58, i32 0, i32 1
  %60 = bitcast %struct.dasd_uid* %10 to i8*
  %61 = bitcast %struct.dasd_uid* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 40, i1 false)
  %62 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %63 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %64 = icmp ne %struct.dasd_device* %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %27
  %66 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %67 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @get_ccwdev_lock(i32 %68)
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %65, %27
  %73 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %74 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NO_PAV, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %80 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %79, i32 0, i32 0
  %81 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %82 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %81, i32 0, i32 2
  %83 = call i32 @list_move(i32* %80, i32* %82)
  store i32 0, i32* %4, align 4
  br label %176

84:                                               ; preds = %72
  %85 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %86 = call %struct.alias_pav_group* @_find_group(%struct.alias_lcu* %85, %struct.dasd_uid* %10)
  store %struct.alias_pav_group* %86, %struct.alias_pav_group** %9, align 8
  %87 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %88 = icmp ne %struct.alias_pav_group* %87, null
  br i1 %88, label %155, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call %struct.alias_pav_group* @kzalloc(i32 40, i32 %90)
  store %struct.alias_pav_group* %91, %struct.alias_pav_group** %9, align 8
  %92 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %93 = icmp ne %struct.alias_pav_group* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %176

97:                                               ; preds = %89
  %98 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %99 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %101, i32 %103, i32 4)
  %105 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %106 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %108, i32 %110, i32 4)
  %112 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %115 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @UA_BASE_DEVICE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %97
  %122 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %125 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  br label %133

127:                                              ; preds = %97
  %128 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %131 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %121
  %134 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %135 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memcpy(i32 %137, i32 %139, i32 4)
  %141 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %142 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %141, i32 0, i32 2
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %145 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %144, i32 0, i32 1
  %146 = call i32 @INIT_LIST_HEAD(i32* %145)
  %147 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %148 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %147, i32 0, i32 0
  %149 = call i32 @INIT_LIST_HEAD(i32* %148)
  %150 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %151 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %150, i32 0, i32 2
  %152 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %153 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %152, i32 0, i32 1
  %154 = call i32 @list_add(i32* %151, i32* %153)
  br label %155

155:                                              ; preds = %133, %84
  %156 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %10, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @UA_BASE_DEVICE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %162 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %161, i32 0, i32 0
  %163 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %164 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %163, i32 0, i32 1
  %165 = call i32 @list_move(i32* %162, i32* %164)
  br label %172

166:                                              ; preds = %155
  %167 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %168 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %167, i32 0, i32 0
  %169 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %170 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %169, i32 0, i32 0
  %171 = call i32 @list_move(i32* %168, i32* %170)
  br label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.alias_pav_group*, %struct.alias_pav_group** %9, align 8
  %174 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  %175 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %174, i32 0, i32 0
  store %struct.alias_pav_group* %173, %struct.alias_pav_group** %175, align 8
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %94, %78
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @spin_lock_irqsave_nested(i32, i64, i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local %struct.alias_pav_group* @_find_group(%struct.alias_lcu*, %struct.dasd_uid*) #1

declare dso_local %struct.alias_pav_group* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
