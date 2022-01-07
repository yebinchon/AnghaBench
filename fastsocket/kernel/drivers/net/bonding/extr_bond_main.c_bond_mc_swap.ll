; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_mc_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_mc_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, i32, %struct.dev_mc_list* }
%struct.TYPE_3__ = type { i32 }
%struct.slave = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*, %struct.slave*)* @bond_mc_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_mc_swap(%struct.bonding* %0, %struct.slave* %1, %struct.slave* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca %struct.dev_mc_list*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store %struct.slave* %2, %struct.slave** %6, align 8
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = getelementptr inbounds %struct.bonding, %struct.bonding* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @USES_PRIMARY(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %127

15:                                               ; preds = %3
  %16 = load %struct.slave*, %struct.slave** %6, align 8
  %17 = icmp ne %struct.slave* %16, null
  br i1 %17, label %18, label %71

18:                                               ; preds = %15
  %19 = load %struct.bonding*, %struct.bonding** %4, align 8
  %20 = getelementptr inbounds %struct.bonding, %struct.bonding* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.slave*, %struct.slave** %6, align 8
  %29 = getelementptr inbounds %struct.slave, %struct.slave* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_set_promiscuity(i32 %30, i32 -1)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.bonding*, %struct.bonding** %4, align 8
  %34 = getelementptr inbounds %struct.bonding, %struct.bonding* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.slave*, %struct.slave** %6, align 8
  %43 = getelementptr inbounds %struct.slave, %struct.slave* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_set_allmulti(i32 %44, i32 -1)
  br label %46

46:                                               ; preds = %41, %32
  %47 = load %struct.bonding*, %struct.bonding** %4, align 8
  %48 = getelementptr inbounds %struct.bonding, %struct.bonding* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.dev_mc_list*, %struct.dev_mc_list** %50, align 8
  store %struct.dev_mc_list* %51, %struct.dev_mc_list** %7, align 8
  br label %52

52:                                               ; preds = %66, %46
  %53 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %54 = icmp ne %struct.dev_mc_list* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.slave*, %struct.slave** %6, align 8
  %57 = getelementptr inbounds %struct.slave, %struct.slave* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %60 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %63 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_mc_delete(i32 %58, i32 %61, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %55
  %67 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %68 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %67, i32 0, i32 2
  %69 = load %struct.dev_mc_list*, %struct.dev_mc_list** %68, align 8
  store %struct.dev_mc_list* %69, %struct.dev_mc_list** %7, align 8
  br label %52

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %15
  %72 = load %struct.slave*, %struct.slave** %5, align 8
  %73 = icmp ne %struct.slave* %72, null
  br i1 %73, label %74, label %127

74:                                               ; preds = %71
  %75 = load %struct.bonding*, %struct.bonding** %4, align 8
  %76 = getelementptr inbounds %struct.bonding, %struct.bonding* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IFF_PROMISC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.slave*, %struct.slave** %5, align 8
  %85 = getelementptr inbounds %struct.slave, %struct.slave* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_set_promiscuity(i32 %86, i32 1)
  br label %88

88:                                               ; preds = %83, %74
  %89 = load %struct.bonding*, %struct.bonding** %4, align 8
  %90 = getelementptr inbounds %struct.bonding, %struct.bonding* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFF_ALLMULTI, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.slave*, %struct.slave** %5, align 8
  %99 = getelementptr inbounds %struct.slave, %struct.slave* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_set_allmulti(i32 %100, i32 1)
  br label %102

102:                                              ; preds = %97, %88
  %103 = load %struct.bonding*, %struct.bonding** %4, align 8
  %104 = getelementptr inbounds %struct.bonding, %struct.bonding* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.dev_mc_list*, %struct.dev_mc_list** %106, align 8
  store %struct.dev_mc_list* %107, %struct.dev_mc_list** %7, align 8
  br label %108

108:                                              ; preds = %122, %102
  %109 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %110 = icmp ne %struct.dev_mc_list* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load %struct.slave*, %struct.slave** %5, align 8
  %113 = getelementptr inbounds %struct.slave, %struct.slave* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %116 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %119 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_mc_add(i32 %114, i32 %117, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %111
  %123 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %124 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %123, i32 0, i32 2
  %125 = load %struct.dev_mc_list*, %struct.dev_mc_list** %124, align 8
  store %struct.dev_mc_list* %125, %struct.dev_mc_list** %7, align 8
  br label %108

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %14, %126, %71
  ret void
}

declare dso_local i32 @USES_PRIMARY(i32) #1

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @dev_set_allmulti(i32, i32) #1

declare dso_local i32 @dev_mc_delete(i32, i32, i32, i32) #1

declare dso_local i32 @dev_mc_add(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
