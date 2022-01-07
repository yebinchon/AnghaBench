; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_enclosure.c_enclosure_remove_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_enclosure.c_enclosure_remove_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENCLOSURE_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_component*)* @enclosure_remove_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enclosure_remove_links(%struct.enclosure_component* %0) #0 {
  %2 = alloca %struct.enclosure_component*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.enclosure_component* %0, %struct.enclosure_component** %2, align 8
  %5 = load i32, i32* @ENCLOSURE_NAME_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.enclosure_component*, %struct.enclosure_component** %2, align 8
  %10 = call i32 @enclosure_link_name(%struct.enclosure_component* %9, i8* %8)
  %11 = load %struct.enclosure_component*, %struct.enclosure_component** %2, align 8
  %12 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @sysfs_remove_link(i32* %14, i8* %8)
  %16 = load %struct.enclosure_component*, %struct.enclosure_component** %2, align 8
  %17 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @sysfs_remove_link(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %20)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @enclosure_link_name(%struct.enclosure_component*, i8*) #2

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
