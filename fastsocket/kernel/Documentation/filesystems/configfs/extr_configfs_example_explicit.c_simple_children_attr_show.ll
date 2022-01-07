; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_explicit.c_simple_children_attr_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_explicit.c_simple_children_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.configfs_attribute = type { i32 }

@.str = private unnamed_addr constant [150 x i8] c"[02-simple-children]\0A\0AThis subsystem allows the creation of child config_items.  These\0Aitems have only one attribute that is readable and writeable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.configfs_attribute*, i8*)* @simple_children_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_children_attr_show(%struct.config_item* %0, %struct.configfs_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.configfs_attribute*, align 8
  %6 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store %struct.configfs_attribute* %1, %struct.configfs_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0))
  ret i32 %8
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
