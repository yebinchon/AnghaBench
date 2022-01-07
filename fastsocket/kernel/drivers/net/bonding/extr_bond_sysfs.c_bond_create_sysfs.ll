; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bond_create_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bond_create_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@class_attr_bonding_masters = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EEXIST = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"network device named %s already exists in sysfs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_create_sysfs() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @netdev_class_create_file(%struct.TYPE_5__* @class_attr_bonding_masters)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @EEXIST, align 4
  %5 = sub nsw i32 0, %4
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @class_attr_bonding_masters, i32 0, i32 0, i32 0), align 4
  %9 = call i64 @__dev_get_by_name(i32* @init_net, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @class_attr_bonding_masters, i32 0, i32 0, i32 0), align 4
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %7
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @netdev_class_create_file(%struct.TYPE_5__*) #1

declare dso_local i64 @__dev_get_by_name(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
