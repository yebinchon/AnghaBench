; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_make_device_known_to_lcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_make_device_known_to_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dasd_device = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.dasd_device*, %struct.dasd_uid*)* }
%struct.dasd_uid = type { i32 }
%struct.dasd_eckd_private = type { %struct.alias_server* }
%struct.alias_server = type { i32, i32, i32, i32, i32 }
%struct.alias_lcu = type { i32, i32, i32, i32, i32 }

@aliastree = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_alias_make_device_known_to_lcu(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.alias_server*, align 8
  %7 = alloca %struct.alias_server*, align 8
  %8 = alloca %struct.alias_lcu*, align 8
  %9 = alloca %struct.alias_lcu*, align 8
  %10 = alloca %struct.dasd_uid, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %14, %struct.dasd_eckd_private** %4, align 8
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dasd_device*, %struct.dasd_uid*)*, i32 (%struct.dasd_device*, %struct.dasd_uid*)** %18, align 8
  %20 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %21 = call i32 %19(%struct.dasd_device* %20, %struct.dasd_uid* %10)
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %22)
  %24 = call %struct.alias_server* @_find_server(%struct.dasd_uid* %10)
  store %struct.alias_server* %24, %struct.alias_server** %6, align 8
  %25 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %26 = icmp ne %struct.alias_server* %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %28)
  %30 = call %struct.alias_server* @_allocate_server(%struct.dasd_uid* %10)
  store %struct.alias_server* %30, %struct.alias_server** %7, align 8
  %31 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %32 = call i64 @IS_ERR(%struct.alias_server* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.alias_server* %35)
  store i32 %36, i32* %2, align 4
  br label %109

37:                                               ; preds = %27
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %38)
  %40 = call %struct.alias_server* @_find_server(%struct.dasd_uid* %10)
  store %struct.alias_server* %40, %struct.alias_server** %6, align 8
  %41 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %42 = icmp ne %struct.alias_server* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %45 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %44, i32 0, i32 4
  %46 = call i32 @list_add(i32* %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 1))
  %47 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  store %struct.alias_server* %47, %struct.alias_server** %6, align 8
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.alias_server*, %struct.alias_server** %7, align 8
  %50 = call i32 @_free_server(%struct.alias_server* %49)
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %54 = call %struct.alias_server* @_find_lcu(%struct.alias_server* %53, %struct.dasd_uid* %10)
  %55 = bitcast %struct.alias_server* %54 to %struct.alias_lcu*
  store %struct.alias_lcu* %55, %struct.alias_lcu** %8, align 8
  %56 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %57 = icmp ne %struct.alias_lcu* %56, null
  br i1 %57, label %91, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %59)
  %61 = call %struct.alias_server* @_allocate_lcu(%struct.dasd_uid* %10)
  %62 = bitcast %struct.alias_server* %61 to %struct.alias_lcu*
  store %struct.alias_lcu* %62, %struct.alias_lcu** %9, align 8
  %63 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %64 = bitcast %struct.alias_lcu* %63 to %struct.alias_server*
  %65 = call i64 @IS_ERR(%struct.alias_server* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %69 = bitcast %struct.alias_lcu* %68 to %struct.alias_server*
  %70 = call i32 @PTR_ERR(%struct.alias_server* %69)
  store i32 %70, i32* %2, align 4
  br label %109

71:                                               ; preds = %58
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %72)
  %74 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %75 = call %struct.alias_server* @_find_lcu(%struct.alias_server* %74, %struct.dasd_uid* %10)
  %76 = bitcast %struct.alias_server* %75 to %struct.alias_lcu*
  store %struct.alias_lcu* %76, %struct.alias_lcu** %8, align 8
  %77 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %78 = icmp ne %struct.alias_lcu* %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %71
  %80 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %81 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %80, i32 0, i32 3
  %82 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %83 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %82, i32 0, i32 2
  %84 = call i32 @list_add(i32* %81, i32* %83)
  %85 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  store %struct.alias_lcu* %85, %struct.alias_lcu** %8, align 8
  br label %90

86:                                               ; preds = %71
  %87 = load %struct.alias_lcu*, %struct.alias_lcu** %9, align 8
  %88 = bitcast %struct.alias_lcu* %87 to %struct.alias_server*
  %89 = call i32 @_free_lcu(%struct.alias_server* %88)
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %52
  %92 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %93 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %96 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %95, i32 0, i32 0
  %97 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %98 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %97, i32 0, i32 1
  %99 = call i32 @list_add(i32* %96, i32* %98)
  %100 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %101 = bitcast %struct.alias_lcu* %100 to %struct.alias_server*
  %102 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %103 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %102, i32 0, i32 0
  store %struct.alias_server* %101, %struct.alias_server** %103, align 8
  %104 = load %struct.alias_lcu*, %struct.alias_lcu** %8, align 8
  %105 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aliastree, i32 0, i32 0), i64 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %91, %67, %34
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.alias_server* @_find_server(%struct.dasd_uid*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.alias_server* @_allocate_server(%struct.dasd_uid*) #1

declare dso_local i64 @IS_ERR(%struct.alias_server*) #1

declare dso_local i32 @PTR_ERR(%struct.alias_server*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @_free_server(%struct.alias_server*) #1

declare dso_local %struct.alias_server* @_find_lcu(%struct.alias_server*, %struct.dasd_uid*) #1

declare dso_local %struct.alias_server* @_allocate_lcu(%struct.dasd_uid*) #1

declare dso_local i32 @_free_lcu(%struct.alias_server*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
