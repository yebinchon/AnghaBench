; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bonding_store_resend_igmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_sysfs.c_bonding_store_resend_igmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bonding = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: no resend_igmp value specified.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"%s: Invalid resend_igmp value %d not in range 0-255; rejected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: Setting resend_igmp to %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bonding_store_resend_igmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_store_resend_igmp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bonding*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %10, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.bonding* @to_bond(%struct.device* %14)
  store %struct.bonding* %15, %struct.bonding** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.bonding*, %struct.bonding** %11, align 8
  %21 = getelementptr inbounds %struct.bonding, %struct.bonding* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %56

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %34, label %44

34:                                               ; preds = %31, %28
  %35 = load %struct.bonding*, %struct.bonding** %11, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %56

44:                                               ; preds = %31
  %45 = load %struct.bonding*, %struct.bonding** %11, align 8
  %46 = getelementptr inbounds %struct.bonding, %struct.bonding* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.bonding*, %struct.bonding** %11, align 8
  %54 = getelementptr inbounds %struct.bonding, %struct.bonding* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %44, %34, %19
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local %struct.bonding* @to_bond(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
