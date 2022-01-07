; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__allocate_lcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__allocate_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { i32, %struct.alias_lcu*, %struct.alias_lcu*, %struct.alias_lcu*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dasd_uid = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@NO_PAV = common dso_local global i32 0, align 4
@NEED_UAC_UPDATE = common dso_local global i32 0, align 4
@UPDATE_PENDING = common dso_local global i32 0, align 4
@summary_unit_check_handling_work = common dso_local global i32 0, align 4
@lcu_update_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alias_lcu* (%struct.dasd_uid*)* @_allocate_lcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alias_lcu* @_allocate_lcu(%struct.dasd_uid* %0) #0 {
  %2 = alloca %struct.alias_lcu*, align 8
  %3 = alloca %struct.dasd_uid*, align 8
  %4 = alloca %struct.alias_lcu*, align 8
  store %struct.dasd_uid* %0, %struct.dasd_uid** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 88, i32 %5)
  %7 = bitcast i8* %6 to %struct.alias_lcu*
  store %struct.alias_lcu* %7, %struct.alias_lcu** %4, align 8
  %8 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %9 = icmp ne %struct.alias_lcu* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.alias_lcu* @ERR_PTR(i32 %12)
  store %struct.alias_lcu* %13, %struct.alias_lcu** %2, align 8
  br label %156

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* @GFP_DMA, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @kzalloc(i32 88, i32 %17)
  %19 = bitcast i8* %18 to %struct.alias_lcu*
  %20 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %21 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %20, i32 0, i32 1
  store %struct.alias_lcu* %19, %struct.alias_lcu** %21, align 8
  %22 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %23 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %22, i32 0, i32 1
  %24 = load %struct.alias_lcu*, %struct.alias_lcu** %23, align 8
  %25 = icmp ne %struct.alias_lcu* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %150

27:                                               ; preds = %14
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @GFP_DMA, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @kzalloc(i32 88, i32 %30)
  %32 = bitcast i8* %31 to %struct.alias_lcu*
  %33 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %34 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %33, i32 0, i32 2
  store %struct.alias_lcu* %32, %struct.alias_lcu** %34, align 8
  %35 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %36 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %35, i32 0, i32 2
  %37 = load %struct.alias_lcu*, %struct.alias_lcu** %36, align 8
  %38 = icmp ne %struct.alias_lcu* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %145

40:                                               ; preds = %27
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* @GFP_DMA, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @kzalloc(i32 4, i32 %43)
  %45 = bitcast i8* %44 to %struct.alias_lcu*
  %46 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %47 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %46, i32 0, i32 2
  %48 = load %struct.alias_lcu*, %struct.alias_lcu** %47, align 8
  %49 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %48, i32 0, i32 3
  store %struct.alias_lcu* %45, %struct.alias_lcu** %49, align 8
  %50 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %51 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %50, i32 0, i32 2
  %52 = load %struct.alias_lcu*, %struct.alias_lcu** %51, align 8
  %53 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %52, i32 0, i32 3
  %54 = load %struct.alias_lcu*, %struct.alias_lcu** %53, align 8
  %55 = icmp ne %struct.alias_lcu* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %40
  br label %140

57:                                               ; preds = %40
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* @GFP_DMA, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @kzalloc(i32 16, i32 %60)
  %62 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %63 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %62, i32 0, i32 2
  %64 = load %struct.alias_lcu*, %struct.alias_lcu** %63, align 8
  %65 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %64, i32 0, i32 14
  store i8* %61, i8** %65, align 8
  %66 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %67 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %66, i32 0, i32 2
  %68 = load %struct.alias_lcu*, %struct.alias_lcu** %67, align 8
  %69 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %68, i32 0, i32 14
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %57
  br label %133

73:                                               ; preds = %57
  %74 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %75 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %74, i32 0, i32 13
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dasd_uid*, %struct.dasd_uid** %3, align 8
  %79 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %77, i32 %80, i32 4)
  %82 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %83 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %82, i32 0, i32 13
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dasd_uid*, %struct.dasd_uid** %3, align 8
  %87 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %85, i32 %88, i32 4)
  %90 = load %struct.dasd_uid*, %struct.dasd_uid** %3, align 8
  %91 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %94 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %93, i32 0, i32 13
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @NO_PAV, align 4
  %97 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %98 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %97, i32 0, i32 12
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @NEED_UAC_UPDATE, align 4
  %100 = load i32, i32* @UPDATE_PENDING, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %103 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %105 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %104, i32 0, i32 11
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %108 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %107, i32 0, i32 10
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %111 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %110, i32 0, i32 9
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %114 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %113, i32 0, i32 8
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %117 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* @summary_unit_check_handling_work, align 4
  %120 = call i32 @INIT_WORK(i32* %118, i32 %119)
  %121 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %122 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* @lcu_update_work, align 4
  %125 = call i32 @INIT_DELAYED_WORK(i32* %123, i32 %124)
  %126 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %127 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %126, i32 0, i32 5
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %130 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %129, i32 0, i32 4
  %131 = call i32 @init_completion(i32* %130)
  %132 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  store %struct.alias_lcu* %132, %struct.alias_lcu** %2, align 8
  br label %156

133:                                              ; preds = %72
  %134 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %135 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %134, i32 0, i32 2
  %136 = load %struct.alias_lcu*, %struct.alias_lcu** %135, align 8
  %137 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %136, i32 0, i32 3
  %138 = load %struct.alias_lcu*, %struct.alias_lcu** %137, align 8
  %139 = call i32 @kfree(%struct.alias_lcu* %138)
  br label %140

140:                                              ; preds = %133, %56
  %141 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %142 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %141, i32 0, i32 2
  %143 = load %struct.alias_lcu*, %struct.alias_lcu** %142, align 8
  %144 = call i32 @kfree(%struct.alias_lcu* %143)
  br label %145

145:                                              ; preds = %140, %39
  %146 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %147 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %146, i32 0, i32 1
  %148 = load %struct.alias_lcu*, %struct.alias_lcu** %147, align 8
  %149 = call i32 @kfree(%struct.alias_lcu* %148)
  br label %150

150:                                              ; preds = %145, %26
  %151 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %152 = call i32 @kfree(%struct.alias_lcu* %151)
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  %155 = call %struct.alias_lcu* @ERR_PTR(i32 %154)
  store %struct.alias_lcu* %155, %struct.alias_lcu** %2, align 8
  br label %156

156:                                              ; preds = %150, %73, %10
  %157 = load %struct.alias_lcu*, %struct.alias_lcu** %2, align 8
  ret %struct.alias_lcu* %157
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.alias_lcu* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfree(%struct.alias_lcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
