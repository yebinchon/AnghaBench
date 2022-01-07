; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32, i8*, i8*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_fdb*, i32, i32, i8*, i8*)* @vxlan_fdb_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_append(%struct.vxlan_fdb* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxlan_fdb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vxlan_rdst*, align 8
  store %struct.vxlan_fdb* %0, %struct.vxlan_fdb** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb* %13, i32 %14, i32 %15, i8* %16, i8* %17)
  store %struct.vxlan_rdst* %18, %struct.vxlan_rdst** %12, align 8
  %19 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %20 = icmp ne %struct.vxlan_rdst* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.vxlan_rdst* @kmalloc(i32 32, i32 %23)
  store %struct.vxlan_rdst* %24, %struct.vxlan_rdst** %12, align 8
  %25 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %26 = icmp eq %struct.vxlan_rdst* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOBUFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %33 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %36 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %39 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %42 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %44 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %43, i32 0, i32 0
  %45 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %7, align 8
  %46 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail_rcu(i32* %44, i32* %46)
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %30, %27, %21
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb*, i32, i32, i8*, i8*) #1

declare dso_local %struct.vxlan_rdst* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
