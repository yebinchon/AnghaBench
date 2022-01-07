; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_add_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.vlan_entry = type { i16, i32 }

@.str = private unnamed_addr constant [22 x i8] c"bond: %s, vlan id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"added VLAN ID %d on bond %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, i16)* @bond_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_add_vlan(%struct.bonding* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.vlan_entry*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.bonding*, %struct.bonding** %4, align 8
  %8 = icmp ne %struct.bonding* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.bonding*, %struct.bonding** %4, align 8
  %11 = getelementptr inbounds %struct.bonding, %struct.bonding* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i8* [ %14, %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.vlan_entry* @kzalloc(i32 8, i32 %21)
  store %struct.vlan_entry* %22, %struct.vlan_entry** %6, align 8
  %23 = load %struct.vlan_entry*, %struct.vlan_entry** %6, align 8
  %24 = icmp ne %struct.vlan_entry* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %16
  %29 = load %struct.vlan_entry*, %struct.vlan_entry** %6, align 8
  %30 = getelementptr inbounds %struct.vlan_entry, %struct.vlan_entry* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load i16, i16* %5, align 2
  %33 = load %struct.vlan_entry*, %struct.vlan_entry** %6, align 8
  %34 = getelementptr inbounds %struct.vlan_entry, %struct.vlan_entry* %33, i32 0, i32 0
  store i16 %32, i16* %34, align 4
  %35 = load %struct.bonding*, %struct.bonding** %4, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 1
  %37 = call i32 @write_lock_bh(i32* %36)
  %38 = load %struct.vlan_entry*, %struct.vlan_entry** %6, align 8
  %39 = getelementptr inbounds %struct.vlan_entry, %struct.vlan_entry* %38, i32 0, i32 1
  %40 = load %struct.bonding*, %struct.bonding** %4, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 2
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.bonding*, %struct.bonding** %4, align 8
  %44 = getelementptr inbounds %struct.bonding, %struct.bonding* %43, i32 0, i32 1
  %45 = call i32 @write_unlock_bh(i32* %44)
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = load %struct.bonding*, %struct.bonding** %4, align 8
  %49 = getelementptr inbounds %struct.bonding, %struct.bonding* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %28, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.vlan_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
