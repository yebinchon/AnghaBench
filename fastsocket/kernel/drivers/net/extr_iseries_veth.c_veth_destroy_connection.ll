; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_destroy_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_destroy_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i64, i64, i64, %struct.veth_lpar_connection* }

@HvLpEvent_Type_VirtualLan = common dso_local global i32 0, align 4
@veth_cnx = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*)* @veth_destroy_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_destroy_connection(%struct.veth_lpar_connection* %0) #0 {
  %2 = alloca %struct.veth_lpar_connection*, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %2, align 8
  %3 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %4 = icmp ne %struct.veth_lpar_connection* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %46

6:                                                ; preds = %1
  %7 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %8 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %13 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @HvLpEvent_Type_VirtualLan, align 4
  %16 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %17 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @mf_deallocate_lp_events(i64 %14, i32 %15, i64 %18, i32* null, i32* null)
  br label %20

20:                                               ; preds = %11, %6
  %21 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %22 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %27 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @HvLpEvent_Type_VirtualLan, align 4
  %30 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %31 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @mf_deallocate_lp_events(i64 %28, i32 %29, i64 %32, i32* null, i32* null)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %36 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %35, i32 0, i32 3
  %37 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %36, align 8
  %38 = call i32 @kfree(%struct.veth_lpar_connection* %37)
  %39 = load i32**, i32*** @veth_cnx, align 8
  %40 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %41 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %45 = call i32 @kfree(%struct.veth_lpar_connection* %44)
  br label %46

46:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @mf_deallocate_lp_events(i64, i32, i64, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.veth_lpar_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
