; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_disconnect_device_from_lcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_disconnect_device_from_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.dasd_device = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.dasd_device*, %struct.dasd_uid*)* }
%struct.dasd_uid = type { i32 }
%struct.dasd_eckd_private = type { %struct.alias_lcu* }
%struct.alias_lcu = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.dasd_device*, i32 }
%struct.TYPE_6__ = type { %struct.dasd_device*, i32 }
%struct.alias_server = type { i32, i32 }

@aliastree = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca %struct.alias_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_uid, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %3, align 8
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = load %struct.alias_lcu*, %struct.alias_lcu** %14, align 8
  store %struct.alias_lcu* %15, %struct.alias_lcu** %5, align 8
  %16 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %17 = icmp ne %struct.alias_lcu* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %158

19:                                               ; preds = %1
  %20 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dasd_device*, %struct.dasd_uid*)*, i32 (%struct.dasd_device*, %struct.dasd_uid*)** %23, align 8
  %25 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %26 = call i32 %24(%struct.dasd_device* %25, %struct.dasd_uid* %8)
  %27 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %28 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %35 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %36 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.dasd_device*, %struct.dasd_device** %37, align 8
  %39 = icmp eq %struct.dasd_device* %34, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %19
  %41 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %42 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %46 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = call i32 @cancel_work_sync(i32* %47)
  %49 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %50 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %54 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %55 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.dasd_device*, %struct.dasd_device** %56, align 8
  %58 = icmp eq %struct.dasd_device* %53, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %40
  %60 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %61 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %62, align 8
  br label %63

63:                                               ; preds = %59, %40
  br label %64

64:                                               ; preds = %63, %19
  store i32 0, i32* %7, align 4
  %65 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %66 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %67 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.dasd_device*, %struct.dasd_device** %68, align 8
  %70 = icmp eq %struct.dasd_device* %65, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %73 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %72, i32 0, i32 0
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  store i32 1, i32* %7, align 4
  %76 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %77 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = call i32 @cancel_delayed_work_sync(i32* %78)
  %80 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %81 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %80, i32 0, i32 0
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %85 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %86 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.dasd_device*, %struct.dasd_device** %87, align 8
  %89 = icmp eq %struct.dasd_device* %84, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %71
  %91 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %92 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %93, align 8
  br label %94

94:                                               ; preds = %90, %71
  br label %95

95:                                               ; preds = %94, %64
  %96 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %97 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %96, i32 0, i32 0
  store %struct.alias_lcu* null, %struct.alias_lcu** %97, align 8
  %98 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %99 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %98, i32 0, i32 0
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aliastree, i32 0, i32 0), i64 %102)
  %104 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %105 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %108 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %107, i32 0, i32 4
  %109 = call i64 @list_empty(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %95
  %112 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %113 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %112, i32 0, i32 3
  %114 = call i64 @list_empty(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %118 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %117, i32 0, i32 2
  %119 = call i64 @list_empty(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %123 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %122, i32 0, i32 1
  %124 = call i32 @list_del(i32* %123)
  %125 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %126 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %129 = call i32 @_free_lcu(%struct.alias_lcu* %128)
  store %struct.alias_lcu* null, %struct.alias_lcu** %5, align 8
  br label %140

130:                                              ; preds = %116, %111, %95
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %135 = call i32 @_schedule_lcu_update(%struct.alias_lcu* %134, i32* null)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %138 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock(i32* %138)
  br label %140

140:                                              ; preds = %136, %121
  %141 = call %struct.alias_server* @_find_server(%struct.dasd_uid* %8)
  store %struct.alias_server* %141, %struct.alias_server** %6, align 8
  %142 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %143 = icmp ne %struct.alias_server* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %146 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %145, i32 0, i32 1
  %147 = call i64 @list_empty(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %151 = getelementptr inbounds %struct.alias_server, %struct.alias_server* %150, i32 0, i32 0
  %152 = call i32 @list_del(i32* %151)
  %153 = load %struct.alias_server*, %struct.alias_server** %6, align 8
  %154 = call i32 @_free_server(%struct.alias_server* %153)
  br label %155

155:                                              ; preds = %149, %144, %140
  %156 = load i64, i64* %4, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aliastree, i32 0, i32 0), i64 %156)
  br label %158

158:                                              ; preds = %155, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @_free_lcu(%struct.alias_lcu*) #1

declare dso_local i32 @_schedule_lcu_update(%struct.alias_lcu*, i32*) #1

declare dso_local %struct.alias_server* @_find_server(%struct.dasd_uid*) #1

declare dso_local i32 @_free_server(%struct.alias_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
