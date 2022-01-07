; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_mc_list_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_mc_list_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_mc_list = type { i32, i32, i32, i32, %struct.dev_mc_list* }
%struct.bonding = type { %struct.dev_mc_list* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_mc_list*, %struct.bonding*, i32)* @bond_mc_list_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_mc_list_copy(%struct.dev_mc_list* %0, %struct.bonding* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_mc_list*, align 8
  %9 = alloca %struct.dev_mc_list*, align 8
  store %struct.dev_mc_list* %0, %struct.dev_mc_list** %5, align 8
  store %struct.bonding* %1, %struct.bonding** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  store %struct.dev_mc_list* %10, %struct.dev_mc_list** %8, align 8
  br label %11

11:                                               ; preds = %56, %3
  %12 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %13 = icmp ne %struct.dev_mc_list* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.dev_mc_list* @kmalloc(i32 24, i32 %15)
  store %struct.dev_mc_list* %16, %struct.dev_mc_list** %9, align 8
  %17 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %18 = icmp ne %struct.dev_mc_list* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %14
  %23 = load %struct.bonding*, %struct.bonding** %6, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 0
  %25 = load %struct.dev_mc_list*, %struct.dev_mc_list** %24, align 8
  %26 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %27 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %26, i32 0, i32 4
  store %struct.dev_mc_list* %25, %struct.dev_mc_list** %27, align 8
  %28 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %29 = load %struct.bonding*, %struct.bonding** %6, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 0
  store %struct.dev_mc_list* %28, %struct.dev_mc_list** %30, align 8
  %31 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %32 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %35 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %37 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %40 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %43 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i32 %38, i32 %41, i32 %44)
  %46 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %47 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %50 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %52 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %55 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %22
  %57 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %58 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %57, i32 0, i32 4
  %59 = load %struct.dev_mc_list*, %struct.dev_mc_list** %58, align 8
  store %struct.dev_mc_list* %59, %struct.dev_mc_list** %8, align 8
  br label %11

60:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.dev_mc_list* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
