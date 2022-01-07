; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@vxlan_fdb_free_rdst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*)* @vxlan_fdb_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_delete(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ndmsg*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vxlan_dev*, align 8
  %11 = alloca %struct.vxlan_fdb*, align 8
  %12 = alloca %struct.vxlan_rdst*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.vxlan_dev* %19, %struct.vxlan_dev** %10, align 8
  store %struct.vxlan_rdst* null, %struct.vxlan_rdst** %12, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %22 = call i32 @vxlan_fdb_parse(%struct.nlattr** %20, %struct.vxlan_dev* %21, i64* %13, i32* %14, i32* %15, i32* %16)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %5, align 4
  br label %80

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %17, align 4
  %30 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %31 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev* %33, i8* %34)
  store %struct.vxlan_fdb* %35, %struct.vxlan_fdb** %11, align 8
  %36 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %11, align 8
  %37 = icmp ne %struct.vxlan_fdb* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %75

39:                                               ; preds = %27
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @INADDR_ANY, align 4
  %42 = call i64 @htonl(i32 %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %11, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb* %45, i64 %46, i32 %47, i32 %48, i32 %49)
  store %struct.vxlan_rdst* %50, %struct.vxlan_rdst** %12, align 8
  %51 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %52 = icmp ne %struct.vxlan_rdst* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %75

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %39
  store i32 0, i32* %17, align 4
  %56 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %57 = icmp ne %struct.vxlan_rdst* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %11, align 8
  %60 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %59, i32 0, i32 0
  %61 = call i32 @list_is_singular(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %65 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %64, i32 0, i32 1
  %66 = call i32 @list_del_rcu(i32* %65)
  %67 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %12, align 8
  %68 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %67, i32 0, i32 0
  %69 = load i32, i32* @vxlan_fdb_free_rdst, align 4
  %70 = call i32 @call_rcu(i32* %68, i32 %69)
  br label %75

71:                                               ; preds = %58, %55
  %72 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %73 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %11, align 8
  %74 = call i32 @vxlan_fdb_destroy(%struct.vxlan_dev* %72, %struct.vxlan_fdb* %73)
  br label %75

75:                                               ; preds = %71, %63, %53, %38
  %76 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %77 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxlan_fdb_parse(%struct.nlattr**, %struct.vxlan_dev*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev*, i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local %struct.vxlan_rdst* @vxlan_fdb_find_rdst(%struct.vxlan_fdb*, i64, i32, i32, i32) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @vxlan_fdb_destroy(%struct.vxlan_dev*, %struct.vxlan_fdb*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
