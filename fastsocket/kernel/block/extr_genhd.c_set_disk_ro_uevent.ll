; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_set_disk_ro_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_set_disk_ro_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.TYPE_2__ = type { i32 }

@__const.set_disk_ro_uevent.event = private unnamed_addr constant [10 x i8] c"DISK_RO=1\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @set_disk_ro_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_disk_ro_uevent(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca [2 x i8*], align 16
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.set_disk_ro_uevent.event, i32 0, i32 0), i64 10, i1 false)
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  store i8* null, i8** %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 8
  store i8 48, i8* %14, align 1
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %17 = call %struct.TYPE_2__* @disk_to_dev(%struct.gendisk* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @KOBJ_CHANGE, align 4
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %21 = call i32 @kobject_uevent_env(i32* %18, i32 %19, i8** %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

declare dso_local %struct.TYPE_2__* @disk_to_dev(%struct.gendisk*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
