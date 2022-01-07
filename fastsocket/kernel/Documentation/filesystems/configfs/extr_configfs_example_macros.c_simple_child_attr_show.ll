; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_macros.c_simple_child_attr_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_macros.c_simple_child_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.configfs_attribute = type { i32 }
%struct.simple_child = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.configfs_attribute*, i8*)* @simple_child_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_child_attr_show(%struct.config_item* %0, %struct.configfs_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.configfs_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.simple_child*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store %struct.configfs_attribute* %1, %struct.configfs_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.config_item*, %struct.config_item** %4, align 8
  %10 = call %struct.simple_child* @to_simple_child(%struct.config_item* %9)
  store %struct.simple_child* %10, %struct.simple_child** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.simple_child*, %struct.simple_child** %8, align 8
  %13 = getelementptr inbounds %struct.simple_child, %struct.simple_child* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local %struct.simple_child* @to_simple_child(%struct.config_item*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
