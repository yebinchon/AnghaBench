; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_vmcmd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_vmcmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MACHINE_IS_VM = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vmcmd\00", align 1
@firmware_kobj = common dso_local global i32 0, align 4
@vmcmd_kset = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@vmcmd_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmcmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmcmd_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MACHINE_IS_VM, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ENOTSUPP, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %1, align 4
  br label %19

7:                                                ; preds = %0
  %8 = load i32, i32* @firmware_kobj, align 4
  %9 = call %struct.TYPE_3__* @kset_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** @vmcmd_kset, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmcmd_kset, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %19

15:                                               ; preds = %7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vmcmd_kset, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @sysfs_create_group(i32* %17, i32* @vmcmd_attr_group)
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local %struct.TYPE_3__* @kset_create_and_add(i8*, i32*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
