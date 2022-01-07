; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_enclosure.c_enclosure_add_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_enclosure.c_enclosure_add_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENCLOSURE_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enclosure_component*)* @enclosure_add_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enclosure_add_links(%struct.enclosure_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enclosure_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.enclosure_component* %0, %struct.enclosure_component** %3, align 8
  %8 = load i32, i32* @ENCLOSURE_NAME_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %13 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %16 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @sysfs_create_link(i32* %14, i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %26 = call i32 @enclosure_link_name(%struct.enclosure_component* %25, i8* %11)
  %27 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %28 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %32 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @sysfs_create_link(i32* %30, i32* %33, i8* %11)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %39 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @sysfs_remove_link(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %24
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #2

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
