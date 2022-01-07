; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__remove_device_from_lcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c__remove_device_from_lcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { i32 }
%struct.dasd_device = type { i32, i64 }
%struct.dasd_eckd_private = type { %struct.alias_pav_group* }
%struct.alias_pav_group = type { %struct.dasd_device*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_lcu*, %struct.dasd_device*)* @_remove_device_from_lcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_remove_device_from_lcu(%struct.alias_lcu* %0, %struct.dasd_device* %1) #0 {
  %3 = alloca %struct.alias_lcu*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca %struct.alias_pav_group*, align 8
  store %struct.alias_lcu* %0, %struct.alias_lcu** %3, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %4, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %10, %struct.dasd_eckd_private** %5, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 0
  %13 = load %struct.alias_lcu*, %struct.alias_lcu** %3, align 8
  %14 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %13, i32 0, i32 0
  %15 = call i32 @list_move(i32* %12, i32* %14)
  %16 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %17 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %16, i32 0, i32 0
  %18 = load %struct.alias_pav_group*, %struct.alias_pav_group** %17, align 8
  store %struct.alias_pav_group* %18, %struct.alias_pav_group** %6, align 8
  %19 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %20 = icmp ne %struct.alias_pav_group* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %24 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %23, i32 0, i32 0
  store %struct.alias_pav_group* null, %struct.alias_pav_group** %24, align 8
  %25 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %26 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %25, i32 0, i32 3
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %31 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %30, i32 0, i32 2
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %36 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %35, i32 0, i32 1
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %39 = call i32 @kfree(%struct.alias_pav_group* %38)
  br label %49

40:                                               ; preds = %29, %22
  %41 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %42 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %41, i32 0, i32 0
  %43 = load %struct.dasd_device*, %struct.dasd_device** %42, align 8
  %44 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %45 = icmp eq %struct.dasd_device* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.alias_pav_group*, %struct.alias_pav_group** %6, align 8
  %48 = getelementptr inbounds %struct.alias_pav_group, %struct.alias_pav_group* %47, i32 0, i32 0
  store %struct.dasd_device* null, %struct.dasd_device** %48, align 8
  br label %49

49:                                               ; preds = %21, %34, %46, %40
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.alias_pav_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
