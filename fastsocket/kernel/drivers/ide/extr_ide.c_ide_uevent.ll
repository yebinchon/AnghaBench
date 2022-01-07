; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide.c_ide_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide.c_ide_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"MEDIA=%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DRIVENAME=%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MODALIAS=ide:m-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @ide_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.TYPE_4__* @to_ide_device(%struct.device* %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i32 @ide_media_string(%struct.TYPE_4__* %9)
  %11 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = call i32 @ide_media_string(%struct.TYPE_4__* %18)
  %20 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @to_ide_device(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32) #1

declare dso_local i32 @ide_media_string(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
