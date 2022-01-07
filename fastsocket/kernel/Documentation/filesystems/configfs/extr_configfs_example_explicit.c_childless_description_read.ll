; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_explicit.c_childless_description_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/filesystems/configfs/extr_configfs_example_explicit.c_childless_description_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.childless = type { i32 }

@.str = private unnamed_addr constant [237 x i8] c"[01-childless]\0A\0AThe childless subsystem is the simplest possible subsystem in\0Aconfigfs.  It does not support the creation of child config_items.\0AIt only has a few attributes.  In fact, it isn't much different\0Athan a directory in /proc.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.childless*, i8*)* @childless_description_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @childless_description_read(%struct.childless* %0, i8* %1) #0 {
  %3 = alloca %struct.childless*, align 8
  %4 = alloca i8*, align 8
  store %struct.childless* %0, %struct.childless** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str, i64 0, i64 0))
  ret i32 %6
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
